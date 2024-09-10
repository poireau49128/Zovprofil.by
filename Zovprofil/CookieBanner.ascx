<%@ Control Language="C#" AutoEventWireup="true" EnableViewState="false" CodeBehind="CookieBanner.ascx.cs" Inherits="Infinium.MasterControls.CookieBanner" %>
<link href="./Styles/cookieBanner.css" rel="stylesheet" type="text/css" />
<link href="./Styles/customCheckbox.css" rel="stylesheet" type="text/css" />


<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<script type="text/javascript">
    document.addEventListener('DOMContentLoaded', function () {
        var cookieConsent = getCookie('cookieConsent');
        if (!cookieConsent) {
            document.querySelector('.cookie-banner').style.display = 'flex';
        }
    });


    function expireTime(days) {
        var now = new Date();
        var time = now.getTime();
        var expireTime = time + 1000 * 60 * 60 * 24 * days;
        now.setTime(expireTime);
        return now.toUTCString();
    }

    function toggleDropdown() {
        var hr = document.getElementById("hr");
        hr.style.display = "block";

        var dropdown = document.getElementById("dropdown");
        dropdown.style.display = dropdown.style.display === "none" || dropdown.style.display === "" ? "flex" : "none";
    }


    function rejectCookies(event) {
        document.querySelector('.cookie-banner').style.display = 'none';
        document.cookie = "cookieConsent=reject; expires=" + expireTime(365) + "; path=/";
    }


    function setConsentCookieAndReload() {
        document.cookie = "cookieConsent=accept; expires=" + expireTime(365) + "; path=/";
        document.querySelector('.cookie-banner').style.display = 'none';

        var analyticalCheckbox = document.getElementById('analytical');
        if (analyticalCheckbox.checked) {
            document.cookie = "cookieAnalytical=accept; expires=" + expireTime(365) + "; path=/";
        }

        var functionalCheckbox = document.getElementById('functional');
        if (functionalCheckbox.checked) {
            document.cookie = "cookieFunctional=accept; expires=" + expireTime(365) + "; path=/";
        }

        var technicalCheckbox = document.getElementById('technical');
        if (technicalCheckbox.checked) {
            document.cookie = "cookieTechnical=accept; expires=0; path=/";
        }

        location.reload();
    }

    function checkCookieConsentAndInitialize() {
        var consentCookie = getCookie("cookieConsent");
        var cookieAnalytical = getCookie("cookieAnalytical");
        if (consentCookie === "accept" && cookieAnalytical === "accept") {
            initializeYandexMetrica();
        }
    }

    function initializeYandexMetrica() {
        (function (m, e, t, r, i, k, a) {
            m[i] = m[i] || function () {
                (m[i].a = m[i].a || []).push(arguments);
            };
            m[i].l = 1 * new Date();
            for (var j = 0; j < document.scripts.length; j++) {
                if (document.scripts[j].src === r) {
                    return;
                }
            }
            k = e.createElement(t);
            a = e.getElementsByTagName(t)[0];
            k.async = 1;
            k.src = r;
            a.parentNode.insertBefore(k, a);
        })(window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym");
        ym(98171550, "init", {
            clickmap: true,
            trackLinks: true,
            accurateTrackBounce: true,
            webvisor: true
        });
    }


    function getCookie(name) {
        var match = document.cookie.match(new RegExp('(^| )' + name + '=([^;]+)'));
        if (match) return match[2];
    }

    checkCookieConsentAndInitialize();
</script>
<%--<button class="button-accept" onclick="setConsentCookieAndReload()">Согласен</button>--%>



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
        
        </div>
        <hr id="hr"/>
        <span>
        Нажимая "Принять", Вы даете согласие на обработку cookie-файлов, в том числе аналитических в соответствии с <b><a class="cookie-link" target="_blank" href="https://zovprofil.by/Files/Политика в отношении обработки cookie.pdf">Политикой в отношении обработки cookie-файлов</a></b>
        </span>

        <div class="button-container" onclick="toggleDropdown()">
        <img src="./Images/settings.png" alt="Настройки" class="button-image"/>
        <span class="button-text">Настроить</span>
        </div>
        <div class="buttons">
        <button class="button-cancel" onclick="rejectCookies()">Отклонить</button>
        <button class="button-accept" onclick="setConsentCookieAndReload()">Принять</button>
        </div>
    </div>
</div>