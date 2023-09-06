<?php

use TestdbProject\EntityTable;

require_once $_SERVER["DOCUMENT_ROOT"] . "/admin/php/functions.admin.php";

    $smarty = new Smarty();

    $smarty->setTemplateDir($_SERVER["DOCUMENT_ROOT"] . "/views/templates/");
    $smarty->setCompileDir($_SERVER["DOCUMENT_ROOT"] . "/views/templates_c/");

    db_connect();

    $table = new EntityTable("NL_PROP_RESALE");

    $smarty->assign("data", $table->getData(1, 10));

    $smarty->display("apartment-table.tpl");

    db_disconnect();
