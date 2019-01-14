<?php

define('HOST', 'localhost');
define('DB_NAME', 'academy_2');
define('USER_NAME', 'root');
define('CHARSET', 'utf8');
define('PASS', '');

$connection = new PDO('mysql:host=' . HOST . '; dbname=' . DB_NAME . '; charset=' . CHARSET, USER_NAME, PASS);
$profile = $connection->query('SELECT * FROM `profile`');
$profile = $profile->fetchAll();
$educations = $connection->query('SELECT * FROM `education` ORDER BY yearEnd = "" DESC, yearEnd DESC'); //Если yearEnd пуст, то выводим первым
$languages = $connection->query('SELECT * FROM `languages`');
$interests = $connection->query('SELECT * FROM `interests`');
$about = $connection->query('SELECT * FROM `about`');
$about = $about->fetchAll();
$experiences = $connection->query('SELECT * FROM `experiences` ORDER BY yearEnd IS NULL DESC, yearEnd DESC'); //Если yearEnd NULL, то выводим первым
$projects = $connection->query('SELECT * FROM `projects`');
$skills = $connection->query('SELECT * FROM `skills`');