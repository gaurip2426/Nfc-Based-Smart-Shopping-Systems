<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master.Master" CodeBehind="CounterSummary.aspx.cs" Inherits="Smart_Shopping_Cart.CounterSummary" %>

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
                        <h4 class="pull-left page-title">Dashboard !</h4>
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

                    <div class="row">
                        <div class="col-md-6 col-sm-6 col-lg-3">
                            <div class="mini-stat clearfix bx-shadow bg-white"><span class="mini-stat-icon bg-success"><i class="ion-social-usd"></i></span>
                                <div class="mini-stat-info text-right text-dark"><span class="counter text-dark"><%# AllData.Tables[0].Rows[0]["TodaysCollection"].ToString() %></span> Total Sales</div>
                                <div class="tiles-progress">
                                    <div class="m-t-20">
                                        <h5 class="text-uppercase">Todays Collection</h5>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6 col-lg-3">
                            <div class="mini-stat clearfix bx-shadow bg-white"><span class="mini-stat-icon bg-primary"><i class="ion-ios7-cart"></i></span>
                                <div class="mini-stat-info text-right text-dark"><span class="counter text-dark"><%# AllData.Tables[0].Rows[0]["TodaysInvoices"].ToString() %></span> New Orders</div>
                                <div class="tiles-progress">
                                    <div class="m-t-20">
                                        <h5 class="text-uppercase">Todays Invoices </h5>                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6 col-lg-3">
                            <div class="mini-stat clearfix bx-shadow bg-white"><span class="mini-stat-icon bg-success"><i class="ion-android-contacts"></i></span>
                                <div class="mini-stat-info text-right text-dark"><span class="counter text-dark"><%# AllData.Tables[1].Rows[0]["TotalCollection"].ToString() %></span> Collection</div>
                                <div class="tiles-progress">
                                    <div class="m-t-20">
                                        <h5 class="text-uppercase">Total Collection </h5>                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6 col-lg-3">
                            <div class="mini-stat clearfix bx-shadow bg-white"><span class="mini-stat-icon bg-primary"><i class="ion-eye"></i></span>
                                <div class="mini-stat-info text-right text-dark"><span class="counter text-dark"><%# AllData.Tables[1].Rows[0]["TotalInvoices"].ToString() %></span> All Orders</div>
                                <div class="tiles-progress">
                                    <div class="m-t-20">
                                        <h5 class="text-uppercase">Total Invoices </h5>
                                      
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
            <!-- container -->
        </div>
        <!-- content -->

        <div id="con-close-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button><h4 class="modal-title">Modal Content is Responsive</h4>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="field-1" class="control-label">Name</label><input type="text" class="form-control" id="field-1" placeholder="John">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="field-2" class="control-label">Surname</label><input type="text" class="form-control" id="field-2" placeholder="Doe">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="field-3" class="control-label">Address</label><input type="text" class="form-control" id="field-3" placeholder="Address">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="field-4" class="control-label">City</label><input type="text" class="form-control" id="field-4" placeholder="Boston">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="field-5" class="control-label">Country</label><input type="text" class="form-control" id="field-5" placeholder="United States">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="field-6" class="control-label">Zip</label><input type="text" class="form-control" id="field-6" placeholder="123456">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group no-margin">
                                    <label for="field-7" class="control-label">Personal Info</label><textarea class="form-control autogrow" id="field-7" placeholder="Write something about yourself" style="overflow: hidden; word-wrap: break-word; resize: horizontal; height: 104px">                                                        </textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-info waves-effect waves-light">Save changes</button>
                    </div>
                </div>
            </div>
    </div>


        <footer class="footer text-right">2015 © Smart Shopping Cart.</footer>
    </div>
    <!-- ============================================================== -->
    <!-- End Right content here -->


  

</asp:Content>
