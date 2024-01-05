<%@ Page Title="Где купить – фабрика ЗОВ-Профиль" Language="C#" MasterPageFile="~/MasterPage.Master" ClientIDMode="Static" AutoEventWireup="true" CodeBehind="Wheretobuy.aspx.cs" Inherits="Zovprofil.zovprofil.Wheretobuy" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <%@ Register TagPrefix="IC" TagName="CheckBox" Src="/CheckBox.ascx" %>

    <link href="../../Styles/where.css" rel="stylesheet" />
    <link href="../Styles/jquery-ui.css" rel="stylesheet" />
    <link href="../Styles/bootstrap.css" rel="stylesheet" />
    <link href="../Styles/MainStyles.css" rel="stylesheet" />

    <script src="../../Scripts/jquery-1.11.2.min.js"></script>
    <script src="../../Scripts/jquery-3.1.0.min.js"></script>
    <script src="../../Scripts/bootstrap.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/Infinium.js"></script>
    <script src="../../Scripts/where.js"></script>

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBBDjl63iYsUOpuQBilCoxJ7tSBNHB7AuU"></script>

    <input type="hidden" runat="server" id="hCountryID" />
    <input type="hidden" runat="server" id="hCityID" />
    <input type="hidden" runat="server" id="hFurniture" />
    <input type="hidden" runat="server" id="hFronts" />
    <input type="hidden" runat="server" id="hProfile" />

    <script>
        $(document).ready(function () {
            ShowContent();

            initMap();
            })
    </script>

    <%--<div class="where-h">
        <div class="textcont">
            <span class="t1">Где купить нашу продукцию</span>
            <span class="t2">Купить готовые изделия или посмотреть образцы продукции<br />
можно у дилеров в Вашем городе</span>
        </div>
        <div class="im1" style="">
            <img src="/Images/Dealers/m1.png" style="margin-top:35px;"/>
        </div>
    </div>--%>

    <div class="dealer-cont" style="display: none">
        <div runat="server" style="position:relative; text-align:left; min-width:700px; min-height:600px;">
            <%--<div id="map" style="position:absolute; z-index:1; width:100%; height:100%">

            </div>--%>
            
        </div>    
    </div>
    


    <div class="wrapper">
        

        <div class="filters">
            <div class="categories">
                <div class="block" id="countries-block">
                    <div class="header">
                        <span id="CountryLabel" runat="server" class="block_label">нет</span>
                        <span class="block_header">Страна</span>
                    </div>
                    <span class="arrow"></span>
                    <ul id="CountryDiv" runat="server" class="block_list hidden">
                    </ul>
                </div>
                <div class="block" id="cities-block">
                    <div class="header">
                        <span id="CityLabel" runat="server" class="block_label">нет</span>
                        <span class="block_header">Город</span>
                    </div>
                    <span class="arrow"></span>
                    <ul id="CityDiv" runat="server" class="block_list hidden">
                    </ul>
                </div>
                <div class="type">
                    <div class="type_block">
                        <IC:CheckBox runat="server" ClientIDMode="Static" ID="FurnitureCheckBox" Value="Мебель" Checked="false"  class="test"/>                  
                    </div>   
                    <div class="type_block">
                        <IC:CheckBox runat="server" ClientIDMode="Static" ID="ProfileCheckBox" Value="Погонаж" Checked="false" />                  
                    </div>
                    <div class="type_block">
                        <IC:CheckBox runat="server" ClientIDMode="Static" ID="FrontsCheckBox" Value="Фасады" Checked="false" class="hover-shadow" />                  
                    </div>
                </div>
            </div>
            <div id="ShopsContainer" runat="server" class="shops">
            </div>
        </div>
        <script>
            var countriesBlock = document.getElementById('countries-block');
            var countriesList = document.getElementById('CountryDiv');
            var country_arrow = countriesBlock.querySelector('.arrow');

            countriesBlock.addEventListener('click', function () {
                countriesList.classList.toggle('hidden');
                citiesList.classList.add('hidden');
                country_arrow.classList.toggle('up');
                city_arrow.classList.remove('up');
            });

            var citiesBlock = document.getElementById('cities-block');
            var citiesList = document.getElementById('CityDiv');
            var city_arrow = citiesBlock.querySelector('.arrow');

            citiesBlock.addEventListener('click', function () {
                citiesList.classList.toggle('hidden');
                countriesList.classList.add('hidden');
                city_arrow.classList.toggle('up');
                country_arrow.classList.remove('up');
            });
        </script>





        <div class="map_filter">
                <div id="CategoriesDiv" runat="server" class="categories">
                    <div id="CountryButton" onclick="ShowPopover(this)" class="CategoryItemCombo" style="margin-top:0px;">
                        <div style="float:left; max-width:168px; width:168px; padding-top:8px; padding-left:2px;">
                            <%--<span id="CountryLabel" runat="server" class="CategoryComboItemLabel" style="">нет</span>
                            <span class="CategoryComboHeaderLabel" style="">Страна</span>--%>
                        </div>
                        <img src="/Images/ComboDown15.png" style="margin-right:15px; margin-top:24px; float:right;" />
                    </div>

                    <div id="CityButton" onclick="ShowPopover(this)" class="CategoryItemCombo" style="margin-top:0px;">
                        <div style="float:left; max-width:168px; width:168px; padding-top:8px; padding-left:2px;">
                            <%--<span id="CityLabel" runat="server" class="CategoryComboItemLabel" style="">нет</span>
                            <span class="CategoryComboHeaderLabel" style="">Город</span>--%>
                        </div>
                        <img src="/Images/ComboDown15.png" style="margin-right:15px; margin-top:24px; float:right;" />
                    </div>

                    <%--<div id="Div" runat="server"  style="clear:left; margin-top:5px; margin-left:12px; height:20px;">
                        <div style="padding-top:3px;">
                            <IC:CheckBox runat="server" ClientIDMode="Static" ID="FurnitureCheckBox" Value="Мебель" Checked="false" />                  
                        </div>   
                        <div style="padding-top:3px;">
                            <IC:CheckBox runat="server" ClientIDMode="Static" ID="ProfileCheckBox" Value="Погонаж" Checked="false" />                  
                        </div>
                        <div style="padding-top:3px;">
                            <IC:CheckBox runat="server" ClientIDMode="Static" ID="FrontsCheckBox" Value="Фасады" Checked="false" />                  
                        </div>
                    </div>--%>
                </div> 
                <%--<div id="ShopsContainer" runat="server" style="clear:left; width:400px; background-color:white; border:1px solid rgb(220,220,220); border-top:none;  max-height:300px; overflow:auto;">
                
                </div>--%>
            </div>






        <div id="map">

        </div>
    </div>
    
    <div class="modal fade" id="DealerPopup" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="font-family:OpenSans-Regular, sans-serif,  Arial;">
        <div class="modal-dialog" runat="server" style="width:650px; min-height:230px; margin:120px auto;">
            <div class="modal-content" runat="server" style="width:100%; min-height:230px">
                <div class="modal-container">
                    <div>
                        <span id="ShopNameSpan" style="font-size:18px; font-family:OpenSans-Semibold; display:block;"></span>  
                        <a href="#" id="WebsiteSpan" style="font-size:15px; color:#38b8ee; display:block;"></a>
                    </div>
                    <div style="padding-top:20px;">
                        <div style="float:left; width:50%;">
                            <span style="font-size:15px; color:rgb(120,120,120); font-family:OpenSans-Regular; display:block;">АДРЕС</span>
                            <span id="AddressSpan" style="font-size:16px; font-family:OpenSans-Regular; display:block; margin-top:4px; padding-right:5px;"></span>
                        </div>
                        <div style="overflow:hidden; width:50%;">
                            <span style="font-size:15px; color:rgb(120,120,120); font-family:OpenSans-Regular; display:block; margin-top:4px;">КОНТАКТЫ</span>
                            <span id="ContactsSpan" style="font-size:16px; font-family:OpenSans-Regular; display:block; margin-top:4px; padding-right:5px;"></span>
                            <a id="EmailSpan" style="font-size:16px; color:#38b8ee; font-family:OpenSans-Regular; display:block; margin-top:4px; padding-right:5px;" href="#"></a>
                        </div>
                    </div>
                    <div style="padding-top:20px;">
                        <div style="float:left; width:50%;">
                            <span style="font-size:15px; color:rgb(120,120,120); font-family:OpenSans-Regular; display:block;">ВРЕМЯ РАБОТЫ</span>
                            <span id="WorkTimeSpan" style="font-size:16px; font-family:OpenSans-Regular; display:block; margin-top:4px; padding-right:5px;"></span>
                        </div>
                        <div style="overflow:hidden; width:50%;">
                            <span style="font-size:15px; color:rgb(120,120,120); font-family:OpenSans-Regular; display:block;">ВИД ПРОДУКЦИИ</span>
                            <span id="FurnitureSpan" style="font-size:16px; font-family:OpenSans-Regular; display:block; margin-top:4px;">- мебель</span>
                            <span id="ProfileSpan" style="font-size:16px; font-family:OpenSans-Regular; display:block; margin-top:4px;">- погонаж</span>
                            <span id="FrontsSpan" style="font-size:16px; font-family:OpenSans-Regular; display:block; margin-top:4px;">- фасады</span>
                        </div>
                    </div>
                    <div style="padding-top:30px; text-align:center; width:100%;">
                        <div style="display:inline-block">
                            <div class="sendbutton" onclick="HidePopup()">ЗАКРЫТЬ</div>
                        </div>
                    </div>
                </div>              
            </div>
        </div>
    </div>

    <div id="CountryListPopoverContainer" style="display:none;" >
       <%-- <div id="CountryDiv" runat="server" style="width:330px; height:185px; overflow:auto; font-size:14px; background-color:white; border-color:rgb(240,240,240); border-style:solid; border-width:1px;">
                
        </div>--%>
    </div>

    <div id="CityListPopoverContainer" style="display:none;" >
        <%--<div id="CityDiv" runat="server" style="width:330px; height:185px; overflow:auto; font-size:14px; background-color:white; border-color:rgb(240,240,240); border-style:solid; border-width:1px;">
                
        </div>--%>
    </div>

</asp:Content>
