<%@ Control Language="C#" AutoEventWireup="true" EnableViewState="false" CodeBehind="CheckBox.ascx.cs" Inherits="Infinium.MasterControls.CheckBox" %>

<input type="hidden" runat="server" id="InfiniumCheckBoxChecked" />



<style>
    .hover-shadow {
        transition: box-shadow 0.2s;
    }

    .hover-shadow:hover {
        box-shadow: 0 3px 5px rgba(0, 0, 0, 0.3);
    }
</style>
<div id="CheckDiv" style="">
    <img id="CheckImage" runat="server" src="/Images/UnCheck16.png" ondragstart="return false" onclick="Check(this)" style="float:left; padding-top:4px; cursor:pointer;" onmouseover="AddShadow(this)" onmouseout="RemoveShadow(this)" />
    <span id="NameLabel" runat="server" style="font-size:15px; font-family:OpenSans-Semibold; color:rgb(50,50,50); padding-left:10px; padding-top:2px; display:block;
        text-overflow:ellipsis; overflow:hidden; word-wrap:break-word; white-space:nowrap;"></span>
</div>

<script>
    function AddShadow(element) {
        element.classList.add("hover-shadow");
    }

    function RemoveShadow(element) {
        element.classList.remove("hover-shadow");
    }
</script>