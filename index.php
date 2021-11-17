<?php

date_default_timezone_set('Europe/Moscow');

const HDAY = 24;

$user_name = 'Константин';

require_once('helpers.php');
require_once('function.php');

$connect = connectdb('localhost', 'root', '1234', 'todo');

$userID = 1;

$projectlist = getprojectlist($connect, $userID);

$taskinfo = getprojecttask($connect, $userID);




$show_complete_tasks = rand(0, 1);

$mainContent = include_template('main.php',['projectlist' => $projectlist, 'taskinfo'=> $taskinfo, 'show_complete_tasks' => $show_complete_tasks]);

print(include_template('layout.php', ['title' => 'Дела в порядке', 'content' => $mainContent, 'user_name' => $user_name]));

?>

