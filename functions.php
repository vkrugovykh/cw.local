<?php

    define('BAD_WORD', 'редиска');

    //Вывод сообщения при ошибке
    function feedbackError($msg = '', $subMsg = '') {
        return "<div class=\"alert alert-danger\" role=\"alert\">
            <h4 class=\"alert-heading\">Ошибка!</h4>
            <p>$msg</p>
            <hr>
            <p class=\"mb-0\">$subMsg</p>
        </div>";
    }

    //Вывод сообщения при выполнении без ошибок
    function feedbackSuccess($msg = '', $subMsg = '') {
        return "<div class=\"alert alert-success\" role=\"alert\">
            <h4 class=\"alert-heading\">Отлично!</h4>
            <p>$msg</p>
            <hr>
            <p class=\"mb-0\">$subMsg</p>
        </div>";
    }

    $userMessage = ''; //Сообщение для пользователя, необходимо текст сообщения оборачивать тегом <div>

    require_once 'db.php';

    if ($_POST['comment']) {
        //Удалим HTML из отзыва, и преобразуем спец. символы в HTML сущьности.
        $comment = htmlspecialchars(strip_tags($_POST['comment']), ENT_QUOTES);
        $username = htmlspecialchars(strip_tags($_POST['username']), ENT_QUOTES);

        //Добавляем текущее время и дату
        $date = date('d.m.Y H:i:s');

        if (mb_stripos($comment, BAD_WORD) !== FALSE) {
            $userMessage = feedbackError('Нельзя использовать слово "' . BAD_WORD . '".', 'Вы можете оставить новый отзыв.');
        } else {
            $safe = $connection->prepare("INSERT INTO `comments` SET name=:username, date='$date', comment=:comment");
            $array = ['username'=>$username, 'comment'=>$comment];
            $safe->execute($array);

            header('location:index.php');
        }

    }
    //Выводим последний отзыв первым
    $commentsOfUsers = $connection->query('SELECT * FROM `comments` ORDER BY `id` DESC');