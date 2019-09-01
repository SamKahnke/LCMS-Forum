<?php

require_once 'router.php';

route('/', function () {
    echo "Hello World";
});

route('/about', function () {
	echo "Hello from the about route";
});

$action = $_SERVER['REQUEST_URI'];
// echo $_SERVER['REQUEST_URI'];
dispatch($action);