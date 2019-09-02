<?php

$routes = [];

function route($action, $callback)
{
    global $routes;
    $action = trim($action, '/');
    $routes[$action] = $callback;
}

function dispatch($action)
{
    global $routes;
    $action = trim($action, '/');
    $callback = $routes[$action];

    return call_user_func($callback);
}