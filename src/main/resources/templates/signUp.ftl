<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Регистрация</title>
    <link href="css/normalize.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700&amp;subset=cyrillic" rel="stylesheet">
    <link id = "style" href="css/style2.css" rel="stylesheet">

</head>
<body>
<header class="main-header">
    <div class="container">
        <div class="main-header-layout">
            <div class="main-header-catalog-logo">
                <a href="users">
                    <img src="img/nerds-logo.png" alt="Nerds" width="160" height="65">
                </a>
            </div>
            <nav class="main-header-navigation">
                <ul class="menu">
                    <li class="main-header-navigation-list-single single-1">
                        <a class="main-header-navigation-link link-1" href="#">Студия</a>
                    </li>
                    <li class="main-header-navigation-list-single single-2">
                        <a class="main-header-navigation-link link-2" href="#">Клиенты</a>
                    </li>
                    <li class="main-header-navigation-list-single single-3">
                        <a class="main-header-navigation-link link-3" href="catalog">Магазин</a>
                    </li>
                    <li class="main-header-navigation-list-single single-4">
                        <a class="main-header-navigation-link link-4" href="#">Контакты</a>
                    </li>
                    <li class="main-header-navigation-list-single single-5">
                        <a class="main-header-navigation-link link-4 sub" href="signIn">Вход</a>
                    </li>
                </ul>
            </nav>
            <div class="basket">
                <a class="basket-link" href="cart">Корзина</a>
            </div>
        </div>
    </div>
</header>
<main class="main">
    <div class="signUp-form">
        <form method="post">
            <input class="signIn-input" type="text" name="firstName" placeholder="Имя">
            <br>
            <input class="signIn-input" type="text" name="lastName" placeholder="Фамилия">
            <br>
            <input class="signIn-input" type="text" name="login" placeholder="Логин">
            <br>
            <input class="signIn-input" type="password" name="password" placeholder="Пароль">
            <br>
            <input class="btn signIn-btn" type="submit" value="Регистрация">
        </form>
    </div>
</main>
<footer class="main-footer">
    <div class="container">
        <div class="bottom-footer">
            <div class="bottom-footer-left">
                <a href="#" class="footer-btn footer-btn-vk">vk</a>
                <a href="#" class="footer-btn footer-btn-fb">fb</a>
                <a href="#" class="footer-btn footer-btn-inst">inst</a>
            </div>
            <div class="bottom-footer-right">
                <p class="bottom-footer-right-name">Давайте дружить, это выгодно!</p>
                <p class="bottom-footer-info">Скидка 10% для друзей из социальных сетей.</p>
            </div>
        </div>
    </div>
</footer>
<div class="feedback">
    <form action="post" method="post">
        <p class="feedback-header-name">Напишите нам</p>
        <div class="footer-form-column">
            <div class="footer-form-column-left">
                <label for="feedback-login" class="feedback-login-label">Ваше имя:</label>
                <input class="feedback-login-input" type="text" name="login" id="feedback-login" placeholder="Представьтесь, пожалуйста" >
            </div>
            <div class="footer-form-column-right">
                <label class="feedback-email-label">Ваш e-mail:<input class="feedback-email-input" type="text" name="email" placeholder="Для отправки ответа"></label>
            </div>
        </div>
        <div class="feedback-letter">
            <label class="feedback-letter-label">Текст письма:<textarea class="feedback-letter-textarea" name="text" rows="5" placeholder="В свободной форме"></textarea></label>
        </div>
        <div class="feedback-btn">
            <button type="submit" class="btn feedback-btn-btn">Отправить</button>
        </div>
    </form>
    <button type="button" class="btn feedback-cancel-btn">Закрыть форму</button>
</div>
<script src="js/script.js"></script>
</body>
</html>
