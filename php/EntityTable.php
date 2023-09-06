<?php

namespace TestdbProject;

use nadar\quill\Lexer;
use ObjectTable;

class EntityTable extends ObjectTable
{
    public function __construct($tableName)
    {
        parent::__construct($tableName);
    }

    public function getData($page = 0, $limit = 0, $sidx = "1", $sord = "ASC", $search_where = "(1 = 1)") {
        $data = Array();

        $leftJoin = $this->get_query_left_joins();

        //if (isset($this->where) && ($this->where != false) && (trim($this->where) != "")) {
        //$query = "SELECT " .
        //} else {
        $query = "SELECT *";
        for ($i = 1; $i <= (count($this->colArray)); $i++) {
            /* @var $col ObjectParam */
            $col = $this->colArray[$i];
            if ($col->type == "encrypted") {
                $query .= ", AES_DECRYPT(" . $col->dbName . ",'" . AESKEY . "') AS " . $col->dbName . "_DECRYPTED";
            }
        }
        $query .= " FROM " . $this->dbName . " tbl " . $leftJoin . " WHERE " . $search_where;
        if (isset($this->where) && ($this->where != false) && (trim($this->where) != "")) {
            $query .= " AND " . $this->where;
        }
        $query .= " ORDER BY " . $sidx . " " . $sord;
        //}
        $query .= " LIMIT " . $limit * ($page - 1) . ", " . $limit;

        $res = db_query($query) or die(db_error($query));
        if (db_num_rows($res) > 0) {
            while ($row = db_fetch_assoc($res)) {
                if ($row["NL_PROP_RESALE_PHOTO_URLS"]) {
                    $row["NL_PROP_RESALE_PHOTO_URLS"] = json_decode($row["NL_PROP_RESALE_PHOTO_URLS"]);
                }
                if ($row["NL_PROP_RESALE_DESCRIPTION"]) {
                    $row["NL_PROP_RESALE_DESCRIPTION"] = $this->getLexer(urldecode($row["NL_PROP_RESALE_DESCRIPTION"]))->render();
                }
                $data[] = $row;
            }
        }

        return $data;
    }

    private function getLexer($json)
    {
        return new Lexer($json);
    }
}
