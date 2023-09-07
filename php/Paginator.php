<?php

namespace TestdbProject;

class Paginator
{
    private $entity;
    private $page;

    public function __construct($entity, $page)
    {
        $this->entity = $entity;
        if ($page) {
            $this->page = $page;
        } else {
            $this->page = 1;
        }
    }

    public function paginate($limit)
    {
        return $this->entity->getData($this->page, $limit);
    }

    public function getTotalPages($limit)
    {
        $res = db_query("SELECT COUNT(*) AS amount FROM " . $this->entity->dbName);

        return ceil(intval(db_fetch_assoc($res)["amount"]) / $limit);
    }
}
