<#import "pager.ftl" as p>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity4">
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Магазин</title>
    <link href="css/normalize.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700&amp;subset=cyrillic" rel="stylesheet">
    <link href="css/style2.css" rel="stylesheet">
</head>
<body>
<header class="main-header-catalog">
    <div class="container">
        <div class="main-header-layout-catalog">
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
                        <a class="main-header-navigation-link link-2" href="products">Клиенты</a>
                    </li>
                    <li class="main-header-navigation-list-single single-3">
                        <a class="main-header-navigation-link link-3 active">Магазин</a>
                    </li>
                    <li class="main-header-navigation-list-single single-4">
                        <a class="main-header-navigation-link link-4" href="#">Контакты</a>
                    </li>
                    <#if isAuthorized>
                        <li class="main-header-navigation-list-single single-5">
                            <a class="main-header-navigation-link link-4" href="/logout">Выход</a>
                        </li>
                    <#else>
                    <li class="main-header-navigation-list-single single-5">
                        <a class="main-header-navigation-link link-4 sub" href="signIn">Вход</a>
                    </li>
                    </#if>

                </ul>
            </nav>
            <div class="basket">
                <a class="basket-link" href="cart">Корзина</a>
            </div>
        </div>
        <h1 class="main-header-title">Магазин готовых шаблонов</h1>
    </div>
</header>
<main class="main">
    <div class="container">
        <div class="catalog-column">
            <div class="catalog-column-left">
                <form action="post" method="post">
                    <fieldset class="catalog-column-left-price">
                        <legend>Стоимость:</legend>
                        <div class="range-controls">
                            <div class="scale">
                                <div class="bar"></div>
                            </div>
                            <div class="toggle toggle-min"></div>
                            <div class="toggle toggle-max"></div>
                        </div>
                        <div class="price-controls">
                            <label class="min-price">от<input name="min-price" type="text" value="0"></label>
                            <label class="max-price">до<input name="max-price" type="text" value="15 000"></label>
                        </div>
                    </fieldset>
                    <fieldset class="catalog-column-left-net">
                        <legend>Сетка:</legend>
                        <ul>
                            <li>
                                <input id="radio1" type="radio" name="net" checked>
                                <label for="radio1" class="net-label">Адаптивная</label>
                            </li>
                            <li class="catalog-column-left-net-list-single">
                                <input id="radio2" type="radio" name="net">
                                <label for="radio2" class="net-label">Фиксированная</label>
                            </li>
                            <li>
                                <input id="radio3" type="radio" name="net">
                                <label for="radio3" class="net-label">Резиновая</label>
                            </li>
                        </ul>
                    </fieldset>
                    <fieldset class="catalog-column-left-features">
                        <legend>Особенности:</legend>
                        <ul>
                            <li>
                                <input id="checkbox1" type="checkbox" name="slider" checked>
                                <label for="checkbox1" class="features-label">Слайдер</label>
                            </li>
                            <li>
                                <input id="checkbox2" type="checkbox" name="advantages">
                                <label for="checkbox2" class="features-label">Блок преимуществ</label>
                            </li>
                            <li>
                                <input id="checkbox3" type="checkbox" name="news" checked>
                                <label for="checkbox3" class="features-label">Новости</label>
                            </li>
                            <li>
                                <input id="checkbox4" type="checkbox" name="gallery">
                                <label for="checkbox4" class="features-label">Галерея</label>
                            </li>
                            <li>
                                <input id="checkbox5" type="checkbox" name="basket">
                                <label for="checkbox5" class="features-label">Корзина</label>
                            </li>
                        </ul>
                    </fieldset>


                    <div class="catalog-column-left-btn-block">
                        <button type="submit" class="btn catalog-column-left-btn">Показать</button>
                    </div>
                </form>
            </div>
            <div class="catalog-column-right">
                <div class="catalog-sort-column">
                    <div class="catalog-sort-column-left">
                        <p>Сортировать:</p>
                    </div>
                    <div class="catalog-sort-column-right">
                        <ul>
                            <li>
                                <a href="?page=${page.getNumber()}&sort=price" class="catalog-sort-option">По цене</a>
                            </li>
                            <li>
                                <a href="?page=${page.getNumber()}&sort=price,desc" class="catalog-sort-option-triangle active">С первых до последних</a>
                            </li>
                            <li>
                                <a href="?page=${page.getNumber()}&sort=price" class="catalog-sort-option-triangle inactive">С последних до первых</a>
                            </li>
                            <li>
                                <a href="?page=${page.getNumber()}&sort=id" class="catalog-sort-option">По типу</a>
                            </li>
                            <li>
                                <a href="?page=${page.getNumber()}&sort=id,desc" class="catalog-sort-option-triangle active">С первых до последних</a>
                            </li>
                            <li>
                                <a href="?page=${page.getNumber()}&sort=id" class="catalog-sort-option-triangle inactive">С последних до первых</a>
                            </li>
                            <li>
                                <a href="?page=${page.getNumber()}" class="catalog-sort-option">По умолчанию</a>
                            </li>
                        </ul>
                    </div>
                </div>

  <@p.pager url page />
                <div class="my_catalog">
                    <ul class="catalog-block">

                        <#list page.content as catalog>
        <li class="catalog-block-list-single">
            <div class="catalog-block-item">
                <img class="catalog-img" src="img/${catalog.imgName}" width="358" height="574"
                     alt="img">
                <div class="catalog-item-block">
                    <div class="catalog-block-info">
                        <h3 class="catalog-item-block-title">
                            <a href="#" class="catalog-item">${catalog.name}</a>
                        </h3>
                        <p class="catalog-item-block-info">${catalog.description}</p>
                    </div>
                    <a href="#" class="btn catalog-item-block-btn">${catalog.price} руб.</a>
                    <#if isAuthorized>
                    <a href="/cart/addProduct/${catalog.id}" class="btn catalog-item-block-btn">
                        Добавить в корзину
                    </a>
                    </#if>
                </div>
            </div>
        </li>
    </#list>
                    </ul>
                </div>
      <@p.pager url page />


            </div>
        </div>
    </div>
</main>
<footer class="main-footer">
    <div class="map-block catalog">
        <div class="map-img-wrapper">
            <img class="map-img catalog" src="img/map.png" width="1440" height="416" alt="Карта">
        </div>
        <div class="map1" id="map"></div>
        <div class="map-container">
            <div class="contacts catalog">
                <h3 class="contacts-title">Nёrds design studio</h3>
                <p class="contacts-info">191186, Санкт-Петербург, ул. Б. Конюшенная, д. 19/8</p>
                <p class="contacts-info-nom">тел. +7 (812) 275-75-75</p>
                <a href="form.html" class="btn contacts-btn">Напишите нам</a>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="bottom-footer catalog">
            <div class="bottom-footer-left catalog">
                <a href="#" class="catalog footer-btn footer-btn-vk">vk</a>
                <a href="#" class="catalog footer-btn footer-btn-fb">fb</a>
                <a href="#" class="catalog footer-btn footer-btn-inst">inst</a>
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
                <input class="feedback-login-input" type="text" name="login" id="feedback-login"
                       placeholder="Представьтесь, пожалуйста">
            </div>
            <div class="footer-form-column-right">
                <label class="feedback-email-label">Ваш e-mail:<input class="feedback-email-input" type="text"
                                                                      name="email"
                                                                      placeholder="Для отправки ответа"></label>
            </div>
        </div>
        <div class="feedback-letter">
            <label class="feedback-letter-label">Текст письма:<textarea class="feedback-letter-textarea" name="text"
                                                                        rows="5"
                                                                        placeholder="В свободной форме"></textarea></label>
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