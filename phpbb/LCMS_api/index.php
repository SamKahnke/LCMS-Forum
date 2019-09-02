<?php
require_once 'router.php';

route('/', function () {
    echo "Hello World";
});

route('/about', function () {
    echo "about page";
});

$action = $_SERVER['REQUEST_URI'];
dispatch($action);