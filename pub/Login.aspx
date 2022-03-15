<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Smart_Shopping_Cart.Login" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
   
    <link rel="shortcut icon" href="assets\images\favicon_1.ico">
    <title>Shopping Cart</title>
    <link href="assets\css\bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="assets\css\core.css" rel="stylesheet" type="text/css">
    <link href="assets\css\icons.css" rel="stylesheet" type="text/css">
    <link href="assets\css\components.css" rel="stylesheet" type="text/css">
    <link href="assets\css\pages.css" rel="stylesheet" type="text/css">

    <link href="assets\css\responsive.css" rel="stylesheet" type="text/css">
    <script src="assets\js\modernizr.min.js"></script>

</head>
<body>
    <div class="wrapper-page">
        <div class="panel panel-color panel-primary panel-pages">
            <div class="panel-heading bg-img">
                <div class="bg-overlay"></div>
                <h3 class="text-center m-t-10 text-white">Sign In </h3>
            </div>
            <div class="panel-body">
                <form class="form-horizontal m-t-20" runat="server" >
                    <div class="form-group">
                        
                        <div class="col-xs-12">
                            <asp:TextBox ID="txtUserName" placeholder="Username" runat="server" class="form-control input-lg"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12">
                            <asp:TextBox ID="txtPassword" TextMode="Password" placeholder="Password" runat="server" class="form-control input-lg"></asp:TextBox>
                        </div>
                    </div>
                     <div class="form-group text-center m-t-40">
                        <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </div>
                    <div class="form-group text-center m-t-40">
                        <div class="col-xs-12">
                            <asp:Button ID="btnLogin"  class="btn btn-primary"  runat="server" Text="Log In" OnClick="btnLogin_Click" />                            
                        </div>
                    </div>
                    <div class="form-group m-t-30">
                        <div class="col-sm-7"><a href="recoverpw.html"><i class="fa fa-lock m-r-5"></i>Forgot your password?</a></div>
                        <%--<div class="col-sm-5 text-right"><a href="register.html">Create an account</a></div>--%>
                    </div>
                </form>
            </div>
        </div>
    </div>
       <!-- Main  -->
  
</body>
</html>
