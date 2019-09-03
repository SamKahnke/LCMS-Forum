<?php
define('IN_PHPBB', true);
$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : '../';
$phpEx = substr(strrchr(__FILE__, '.'), 1);
include($phpbb_root_path . 'common.' . $phpEx);

function get_forum_names()
{
	global $db;
	$forums_arr = array();
    // $forums_arr["records"] = array();

	$sql = 'SELECT *
	FROM ' . FORUMS_TABLE;
	$result = $db->sql_query($sql);
	while ($row = $db->sql_fetchrow($result))
	{
		array_push($forums_arr, $row);
	}
	http_response_code(200);
	echo json_encode($forums_arr);
}

get_forum_names();
 
//     // products array
//     $forums_arr=array();
//     $forums_arr["forum_name"]=array();
 
//     // retrieve our table contents
//     // fetch() is faster than fetchAll()
//     // http://stackoverflow.com/questions/2770630/pdofetchall-vs-pdofetch-in-a-loop
//     while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
//         // extract row
//         // this will make $row['name'] to
//         // just $name only
//         extract($row);
 
//         $product_item=array(
//             "id" => $id,
//             "name" => $name,
//             "description" => html_entity_decode($description),
//             "price" => $price,
//             "category_id" => $category_id,
//             "category_name" => $category_name
//         );
 
//         array_push($products_arr["records"], $product_item);
//     }
 
//     // set response code - 200 OK
//     http_response_code(200);
 
//     // show products data in json format
//     echo json_encode($products_arr);
// }