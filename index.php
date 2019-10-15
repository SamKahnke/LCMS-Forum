<?php

require_once 'router.php';

route('/index', function () {
    return "Hello World";
});

route('/about', function () {
	return "Hello from the about route";
});

$action = $_SERVER['REQUEST_URI'];
// echo $_SERVER['REQUEST_URI'];
dispatch($action);