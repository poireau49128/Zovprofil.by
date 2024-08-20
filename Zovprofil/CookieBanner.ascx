<%@ Control Language="C#" AutoEventWireup="true" EnableViewState="false" CodeBehind="CookieBanner.ascx.cs" Inherits="Infinium.MasterControls.CookieBanner" %>

<link href="./Styles/cookieBanner.css" rel="stylesheet" type="text/css" />
<link href="./Styles/customCheckbox.css" rel="stylesheet" type="text/css" />

<div class="container">
    <div class="cookie-banner">
        <div class="dropdown-content" id="dropdown">
        <span>Настройка файлов cookie</span>
        <div class="dropdown-block">
            <input type="checkbox" class="custom-checkbox" id="technical" name="cookie-settings" value="technical" checked disabled/>
            <label for="technical" class="checkbox"> Технические cookie-файлы</label>
            <span class="cookie-info">
            Позволяют обеспечить корректное функционирование и безопасное использование Сайта; не сохраняют сведений о пользователе для использования в маркетинговых целях; Оператор не передает их сторонним аналитическим системам.
            </span>
        </div>
        <div class="dropdown-block">
            <input type="checkbox" class="custom-checkbox" id="functional" name="cookie-settings" value="functional" checked/>
            <label for="functional" class="checkbox"> Функциональные cookie-файлы</label>
            <span class="cookie-info">
            С их помощью персонализируется опыт использования Сайта в ответ на действия пользователя (сохраняются после первого определения пользователем настройки темы Сайта, языка, местоположения и т.д.).
            </span>
        </div>
        <div class="dropdown-block">
            <input type="checkbox" class="custom-checkbox" id="analytical" name="cookie-settings" value="analytical" checked/>
            <label for="analytical" class="checkbox"> Аналитические cookie-файлы</label>
            <span class="cookie-info">
            Необходимы в статистических целях, позволяют подсчитывать количество и длительность посещений Сайта, анализировать, как пользователи используют Сайт, что помогает улучшать его производительность и делать более удобным для пользования.
            </span>
        </div>
        <hr style="background-color: #f2f2f2; width: 100%; height: 0.1px"/>
        </div>

        <span>
        Нажимая "Принять", Вы даете согласие на обработку cookie-файлов, в том числе аналитических в соответствии с <b><a class="cookie-link" href="https://zovprofil.by/Files/Политика в отношении обработки cookie.docx">Политикой в отношении обработки cookie-файлов</a></b>
        </span>

        <div class="button-container" onclick="toggleDropdown()">
        <img src="./Images/settings.png" alt="Настройки" class="button-image"/>
        <span class="button-text">Настроить</span>
        </div>
        <div class="buttons">
        <button class="button-cancel" onclick="rejectCookies()">Отклонить</button>
        <button class="button-accept" onclick="acceptCookies()">Принять</button>
        </div>
    </div>
</div>

<script>
    var isCookieAnalyticalAccepted = false;
    document.addEventListener('DOMContentLoaded', function () {
        var cookieConsent = getCookie('cookieConsent');
        if (!cookieConsent) {
            document.querySelector('.cookie-banner').style.display = 'flex';
            isCookieAnalyticalAccepted = false;
        }
    });

    function toggleDropdown() {
        var dropdown = document.getElementById("dropdown");
        dropdown.style.display = dropdown.style.display === "none" || dropdown.style.display === "" ? "flex" : "none";
    }


    
    function acceptCookies() {
        var now = new Date();
        var time = now.getTime();
        var expireTime = time + 1000 * 36000;
        now.setTime(expireTime);


        var analyticalCheckbox = document.getElementById('analytical');
        if (analyticalCheckbox.checked) {
            document.cookie = "cookieAnalytical=true; expires=" + now.toUTCString() +"; path=/";
            initializeGoogleAnalytics();
            initializeYandexMetrica();
            isCookieAnalyticalAccepted = true;
        }

        var functionalCheckbox = document.getElementById('functional');
        if (functionalCheckbox.checked) {
            
            document.cookie = "cookieFunctional=true; expires="+now.toUTCString()+"; path=/";
        }

        var technicalCheckbox = document.getElementById('technical');
        if (technicalCheckbox.checked) {
            document.cookie = "cookieTechnical=true; expires=0; path=/";
        }


        document.querySelector('.cookie-banner').style.display = 'none';
        document.cookie = "cookieConsent=true; expires=" + now.toUTCString() +"; path=/";
    }

    function rejectCookies(event) {
        document.querySelector('.cookie-banner').style.display = 'none';
        document.cookie = "cookieConsent=reject; expires=" + now.toUTCString() +"; path=/";
    }

    function getCookie(name) {
        const value = `; ${document.cookie}`;
        const parts = value.split(`; ${name}=`);
        if (parts.length === 2) return parts.pop().split(';').shift();
    }



    function initializeGoogleAnalytics() {
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments);
            }, i[r].l = 1 * new Date();
            a = s.createElement(o),
                m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m);
        })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-88396607-1', 'auto');
        ga('send', 'pageview');
    }

    function initializeYandexMetrica() {
        (function (d, w, c) {
            (w[c] = w[c] || []).push(function () {
                try {
                    w.yaCounter41317194 = new Ya.Metrika({
                        id: 41317194,
                        clickmap: true,
                        trackLinks: true,
                        accurateTrackBounce: true,
                        webvisor: true
                    });
                } catch (e) { }
            });

            var n = d.getElementsByTagName("script")[0],
                s = d.createElement("script"),
                f = function () {
                    n.parentNode.insertBefore(s, n);
                };
            s.type = "text/javascript";
            s.async = true;
            s.src = "https://mc.yandex.ru/metrika/watch.js";

            if (w.opera == "[object Opera]") {
                d.addEventListener("DOMContentLoaded", f, false);
            } else {
                f();
            }
        })(document, window, "yandex_metrika_callbacks");
    }
</script>