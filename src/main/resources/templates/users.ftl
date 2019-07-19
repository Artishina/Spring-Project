<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>HTML Academy: Нёрдс</title>
    <link href="css/normalize.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700&amp;subset=cyrillic" rel="stylesheet">
    <link id = "style" href="css/style2.css" rel="stylesheet">

</head>
<body>
<header class="main-header">
    <div class="container">
        <div class="main-header-layout">
            <div class="main-header-logo">
                <a>
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
                         <#if !isAuthorized>
                <li class="main-header-navigation-list-single single-5">
                    <a class="main-header-navigation-link link-4 sub" href="signIn">Вход</a>
                </li>
                         <#else>
            <li class="main-header-navigation-list-single single-5">
                <a class="main-header-navigation-link link-4" href="/logout">Выход</a>
            </li>
                         </#if>

                </ul>
            </nav>
            <div class="basket">
                <a class="basket-link" href="cart">Корзина</a>
            </div>
        </div>
        <div class="slider">
            <input class="btn-1" type="radio" id="btn-1" name="toggle" checked>
            <input class="btn-2" type="radio" id="btn-2" name="toggle">
            <input class="btn-3" type="radio" id="btn-3" name="toggle">
            <div class="slider-controls">
                <label class="btn-1-label" for="btn-1"></label>
                <label class="btn-2-label" for="btn-2"></label>
                <label class="btn-3-label" for="btn-3"></label>
            </div>
            <div class="slider-inner">
                <div class="slider-slides">
                    <div class="slider-slides-slider ">
                        <div class="slider-info">
                            <p class="slider-info-name">Долго, дорого, скрупулезно.</p>
                            <p class="slider-info-text">Математически выверенный дизайн<br> для вашего сайта или мобильного приложения.</p>
                            <a href="#" class="btn slider-info-btn">Узнать больше</a>
                        </div>
                        <div class="slider-img">
                            <img class="slider-img-img" src="img/slide1.png" alt="Nerds" width="698" height="413">
                        </div>
                    </div>
                    <div class="slider-slides-slider-2">
                        <div class="slider-info-2">
                            <p class="slider-info-name-2">Любим математику как никто другой</p>
                            <p class="slider-info-text-2">Никакого креатива, только математические формулы для расчета идеальных пропорций.</p>
                            <a href="#" class="btn slider-info-btn">Узнать больше</a>
                        </div>
                        <div class="slider-img-2">
                            <img class="slider-img-img" src="img/slide2.png" alt="Nerds" width="663" height="430">
                        </div>
                    </div>
                    <div class="slider-slides-slider-3">
                        <div class="slider-info-3">
                            <p class="slider-info-name-3">Только ночь, только хардкор</p>
                            <p class="slider-info-text-3">Работать днем, как все? Мы против этого.<br> Ближе к полуночи работа только начинается.</p>
                            <a href="#" class="btn slider-info-btn">Узнать больше</a>
                        </div>
                        <div class="slider-img-3">
                            <img class="slider-img-img" src="img/slide3.png" alt="Nerds" width="759" height="411">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<main class="main">
    <div class="container">
        <div class="offer">
            <article class="offer-item offer-item-1">
                <img class="offer-item-img" src="img/illustration-1.png" alt="Веб-сайты" width="300" height="146">
                <h2 class="offer-item-title">Веб-сайты</h2>
                <p class="offer-item-text">Мир никогда не будет прежним после того как увидит ваш сайт!</p>
                <a href="#" class="btn offer-item-btn-1">Заказать</a>
            </article>
            <article class="offer-item offer-item-2">
                <img class="offer-item-img" src="img/illustration-2.png" alt="Приложения" width="300" height="146">
                <h2 class="offer-item-title">Приложения</h2>
                <p class="offer-item-text">Покорите топ-10 приложений в Appstore и Google Play</p>
                <a href="#" class="btn offer-item-btn-2">Заказать</a>
            </article>
            <article class="offer-item offer-item-3">
                <img class="offer-item-img" src="img/illustration-3.png" alt="Презентации" width="300" height="146">
                <h2 class="offer-item-title">Презентации</h2>
                <p class="offer-item-text">Вы даже не подозреваете, насколько вы изумительны!</p>
                <a href="#" class="btn offer-item-btn-3">Заказать</a>
            </article>
        </div>

        <div class="info-column">
            <div class="info-column-left">
                <p class="info-column-left-text-name">Мы — маленькая, но гордая дизайн-студия из Краснодара.</p>
                <p class="info-column-left-text">Исповедуем принципы минимализма и чистоты. Ставим математический расчет превыше креатива. Работаем не покладая рук, как роботы.</p>
                <p class="info-column-left-text-name-2">Выполняем заказы на разработку:</p>
                <ul class="info-column-left-list">
                    <li>Веб-сайтов любой сложности</li>
                    <li>Мобильных приложений для IOS и Android</li>
                    <li>Слайдшоу и видео для корпоративных презентаций</li>
                </ul>
            </div>
            <div class="info-column-right">
                <p>С 2004 года мы любим точность во всем:</p>
                <ul class="info-column-right-list">
                    <li><p class="nom">146<sup>%</sup></p><p class="text">Уровень самоотдачи</p></li>
                    <li><p class="nom">100<sup>%</sup></p><p class="text"> Соблюдение сроков</p></li>
                    <li><p class="nom">50<sup>%</sup></p><p class="text"> Минимальная предоплата</p></li>
                </ul>
            </div>
        </div>
        <ul class="brand">
            <li>
                <a class="brand-item brand-item-link-1" href="https://htmlacademy.ru/intensive/htmlcss">
                    <img src="img/logo-1.png" width="199" height="68" alt="HTML Academy">
                </a>
            </li>
            <li>
                <a class="brand-item brand-item-link-2" href="#">
                    <img src="img/logo-2.png" width="209" height="90" alt="Barbershop Borodinsky">
                </a>
            </li>
            <li>
                <a class="brand-item brand-item-link-3" href="#">
                    <img src="img/logo-3.png" width="185" height="52" alt="Pink">
                </a>
            </li>
            <li>
                <a class="brand-item brand-item-link-4" href="#">
                    <img src="img/logo-4.png" width="173" height="84" alt="Mishka">
                </a>
            </li>
        </ul>
    </div>
</main>
<footer class="main-footer">
    <div class="map-block">
        <div class="map-img-wrapper">
            <img class="map-img" src="img/map.png" width="1440" height="416" alt="Карта">
        </div>
        <div  class="map1" id="map"></div>
        <div class="map-container">
            <div class="contacts">
                <h3 class="contacts-title">Nёrds design studio</h3>
                <p class="contacts-info">191186, Санкт-Петербург, ул. Б. Конюшенная, д. 19/8</p>
                <p class="contacts-info-nom">тел. +7 (812) 275-75-75</p>
                <a href="form.html" class="btn contacts-btn">Напишите нам</a>
            </div>
        </div>
    </div>
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
