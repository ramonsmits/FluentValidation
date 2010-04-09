﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<FluentValidation.MvcSample.Models.Step1>" %>
<%@ Import Namespace="FluentValidation.MvcSample.Models" %>
<%@ Import Namespace="FluentValidation.Mvc" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="desc">
   A simple example that shows how to generate client-side validation for a form
</div>
<form method="post" action="/Home/Step1" id="login">
    <div class="item">
        <label for="Required">required</label>
        <input type="text" name="Required" />
    </div>
    
    <div class="item">
        <label for="Minimum">minimum</label>
        <input type="text" name="Minimum" />
    </div>
    
    <div class="item">
        <label for="Maximum">maximum</label>
        <input type="text" name="Maximum" />
    </div>

    <div class="item">
        <label for="MinMax">min/max</label>
        <input type="text" name="MinMax" />
    </div>

    <div class="item">
        <label for="Email">email</label>
        <input type="text" name="Email" />
    </div>

    <div class="item">
        <label for="Url">url</label>
        <input type="text" name="Url" />
    </div>

    <div class="item">
        <label for="CreditCard">credit card</label>
        <input type="text" name="CreditCard" />
    </div>

    <div class="item">
        <label for="Number">number</label>
        <input type="text" name="Number" />
    </div>

    <div class="item">
        <label for="Digits">digits</label>
        <input type="text" name="Digits" />
    </div>

    <input type="submit" value="next" />
</form>

<script type="text/javascript">
$(document).ready(function()
{    
    var settings = <%= Html.RuleFor<Step1>() %>  
    $('#login').validate(settings);
});
</script>
</asp:Content>
