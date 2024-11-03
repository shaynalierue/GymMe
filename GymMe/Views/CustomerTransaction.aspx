﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerTransaction.aspx.cs" Inherits="GymMe.Views.CustomerTransaction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="~/Styles/CSS/OrderSupplementPage.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <title>Gym Me</title>
    <link href="../Styles/CSS/NavBar.css" rel="stylesheet" />

    <%-- Google Font --%>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200..1000;1,200..1000&family=Permanent+Marker&family=Quicksand:wght@300..700&family=Shadows+Into+Light&display=swap" rel="stylesheet" />

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Edu+TAS+Beginner:wght@400..700&family=Nunito:ital,wght@0,200..1000;1,200..1000&family=Permanent+Marker&family=Quicksand:wght@300..700&family=Shadows+Into+Light&display=swap" rel="stylesheet" />

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Comme:wght@100..900&family=Edu+TAS+Beginner:wght@400..700&family=Nunito:ital,wght@0,200..1000;1,200..1000&family=Permanent+Marker&family=Quicksand:wght@300..700&family=Shadows+Into+Light&display=swap" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">

        <div id="CustomerNavBar" runat="server">
            <header>
                <h1 class="Logo">Gym Me</h1>
                <nav>
                    <ul class="nav__links">
                        <li><a href="OrderSupplement.aspx">Order Supplement</a></li>
                        <li><a href="CustomerTransaction.aspx">History</a></li>
                        <li><a href="ProfilePage.aspx">Profile</a></li>

                    </ul>
                </nav>
                <a class="LogoutButton" href="Logout.aspx">Logout</a>
            </header>
        </div>

        <div class="container">
            <div class="table-container">
                
                <br />
                <asp:GridView ID="CustomerTransactionGv" runat="server" AutoGenerateColumns="false" OnRowEditing="CustomerTransactionGv_RowEditing" CssClass="grid-view">
                    <Columns>
                        <asp:BoundField DataField="TransactionId" HeaderText="Transaction Id" SortExpression="TransactionId"></asp:BoundField>
                        <asp:BoundField DataField="TransactionDate" HeaderText="Transaction Date" SortExpression="TransactionDate"></asp:BoundField>
                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status"></asp:BoundField>
                        <asp:CommandField ShowCancelButton="False" EditText="View Detail" ShowEditButton="True" ShowHeader="True" HeaderText="View Detail"></asp:CommandField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
