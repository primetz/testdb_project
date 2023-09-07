<?php

    use TestdbProject\EntityTable;
    use TestdbProject\Paginator;

    require_once $_SERVER["DOCUMENT_ROOT"] . "/admin/php/functions.admin.php";

    $smarty = new Smarty();

    $smarty->setTemplateDir($_SERVER["DOCUMENT_ROOT"] . "/views/templates/");
    $smarty->setCompileDir($_SERVER["DOCUMENT_ROOT"] . "/views/templates_c/");

    db_connect();

    $paginator = new Paginator(new EntityTable("NL_PROP_RESALE"), $_GET["page"]);

    $smarty->assign("total_pages", $paginator->getTotalPages(PAGINATION_PAGE_SIZE));
    $smarty->assign("data", $paginator->paginate(PAGINATION_PAGE_SIZE));

    $smarty->display("apartment-table.tpl");

    db_disconnect();
