<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master.Master" CodeBehind="AdminHome.aspx.cs" Inherits="Smart_Shopping_Cart.AdminHome" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">

    <!-- ============================================================== -->
    <!-- Start right Content here -->
    <!-- ============================================================== -->

    <div class="content-page">
        <!-- Start content -->
        <div class="content">
            <div class="container">
                <!-- Page-Title -->
                <div class="row">
                    <div class="col-sm-12">
                        <h4 class="pull-left page-title">Products</h4>
                        <ol class="breadcrumb pull-right">
                            <li><a href="#">Home</a></li>
                            <li class="active">Dashboard</li>
                        </ol>
                    </div>
                </div>
                <!-- Start Widget -->
                <!--Widget-4 -->
                <style>
                    .left tr {
                        float: left;
                    }

                    .left td {
                        width: 200px;
                    }
                </style>
                <div class="row">                   
                    <asp:ScriptManager runat="server"></asp:ScriptManager>
                    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel2" runat="server" Skin="Default">
                    </telerik:RadAjaxLoadingPanel>
                    <telerik:RadAjaxPanel ID="RadAjaxPanel2" runat="server" LoadingPanelID="RadAjaxLoadingPanel2">
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <telerik:RadGrid ID="gridProducts" runat="server" AllowPaging="True"
                                    AllowSorting="True" AutoGenerateColumns="False" PageSize="50" Width="100%" AllowFilteringByColumn="True"
                                   
                                    CellSpacing="0" GridLines="None">
                                    <GroupingSettings CaseSensitive="false" />
                                    <MasterTableView DataKeyNames="Id">
                                        <Columns>
                                             <telerik:GridTemplateColumn AllowFiltering="false" >
                                                <HeaderTemplate>Image</HeaderTemplate>
                                                <ItemStyle HorizontalAlign="Center" Width="10px" />
                                                <ItemTemplate>                                                    
                                                    <img Id="image" height="60" runat="server" src='<%# "Images/"+ Eval("Image")%>'/>
                                               
                                                </ItemTemplate>
                                            </telerik:GridTemplateColumn>      
                                            <telerik:GridBoundColumn DataField="Name" HeaderStyle-HorizontalAlign="Left"
                                                HeaderText="Name" ItemStyle-HorizontalAlign="Left" ShowFilterIcon="true"
                                                UniqueName="Name" CurrentFilterFunction="Contains" AutoPostBackOnFilter="true">
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="Price" HeaderStyle-HorizontalAlign="Left"
                                                HeaderText="Price" ItemStyle-HorizontalAlign="Left" ShowFilterIcon="true"
                                                UniqueName="Price" CurrentFilterFunction="Contains" AutoPostBackOnFilter="true">
                                            </telerik:GridBoundColumn>
                                          
                                             <telerik:GridBoundColumn DataField="Description" HeaderStyle-HorizontalAlign="Left"
                                                HeaderText="Description" ItemStyle-HorizontalAlign="Left" ShowFilterIcon="true"
                                                UniqueName="Description" CurrentFilterFunction="Contains" AutoPostBackOnFilter="true">
                                            </telerik:GridBoundColumn>
                                          
                                            <telerik:GridBoundColumn DataField="Category" HeaderStyle-HorizontalAlign="Left"
                                                HeaderText="Category" ItemStyle-HorizontalAlign="Left" ShowFilterIcon="true"
                                                UniqueName="Category" CurrentFilterFunction="Contains" AutoPostBackOnFilter="true">
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="RFID" HeaderStyle-HorizontalAlign="Left"
                                                HeaderText="NFCId" ItemStyle-HorizontalAlign="Left" ShowFilterIcon="true"
                                                UniqueName="RFID" CurrentFilterFunction="Contains" AutoPostBackOnFilter="true">
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="BarCode" HeaderStyle-HorizontalAlign="Left"
                                                HeaderText="BarCode" ItemStyle-HorizontalAlign="Left" ShowFilterIcon="true"
                                                UniqueName="BarCode" CurrentFilterFunction="Contains" AutoPostBackOnFilter="true">
                                            </telerik:GridBoundColumn>            
                                          <%--  <telerik:GridTemplateColumn AllowFiltering="false">
                                                <ItemStyle HorizontalAlign="Center" Width="10px" />
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="btnEditGrid" ImageUrl="~/assets/images/edit.png" Height="20px" Width="20px"
                                                        CommandName="Edit1" ToolTip="Edit Product" CommandArgument='<%# Bind("Id") %>' runat="server" />
                                                </ItemTemplate>
                                            </telerik:GridTemplateColumn>--%>
                                            <telerik:GridTemplateColumn AllowFiltering="false">
                                                <ItemStyle HorizontalAlign="Center" Width="10px" />
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="btnDelete" ToolTip="Delete Product" ImageUrl="~/assets/images/delete.png" Height="20px" Width="20px"
                                                        CommandName="Delete" CommandArgument='<%# Bind("Id") %>' runat="server" OnClientClick="return confirm('Do you want to delete this record?');" />
                                                </ItemTemplate>
                                            </telerik:GridTemplateColumn>
                                        </Columns>
                                        <PagerStyle AlwaysVisible="true" />
                                    </MasterTableView>
                                </telerik:RadGrid>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </telerik:RadAjaxPanel>
                </div>
            </div>
            <!-- container -->
        </div>
        <!-- content -->
        <footer class="footer text-right">2015 © Smart Shopping Cart.</footer>
    </div>
    <!-- ============================================================== -->
    <!-- End Right content here -->


  

</asp:Content>
