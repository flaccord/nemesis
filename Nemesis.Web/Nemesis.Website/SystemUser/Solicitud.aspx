<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Solicitud.aspx.cs" Inherits="Nemesis.Website.SystemUser.Dashboard" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Solicitud de Informacion</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="panel panel-default">
                    <div class="panel-heading"><a href="#datos_generales" data-toggle="collapse">Datos Generales</a></div>
                    <div class="panel-body panel-collapse collapse" id="datos_generales">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-12 form-group">
                                <label>Primer Number *</label>
                                <div class="col-lg-12 col-md-12 col-sm-12 nopadding">
                                     <asp:TextBox CssClass="form-control" ID="primer_number" runat="server" placeholder="Juan"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-12 form-group">
                                <label>Segundo Nombre</label>
                                <div class="col-lg-12 col-md-12 col-sm-12 nopadding">
                                    <asp:TextBox CssClass="form-control" ID="segundo_nombre" runat="server" placeholder="Ramon de Jesus"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-12 form-group">
                                <label>Apellido Paterno *</label>
                                <div class="col-lg-12 col-md-12 col-sm-12 nopadding">
                                    <asp:TextBox CssClass="form-control" ID="apellido_paterno" runat="server" placeholder="Perez"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-12 form-group">
                                <label>Apellido Materno</label>
                                <div class="col-lg-12 col-md-12 col-sm-12 nopadding">
                                    <asp:TextBox CssClass="form-control" ID="apellido_materno" runat="server" placeholder="Lopez"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-12 form-group">
                                <label>Sexo *</label>
                                <asp:RadioButtonList runat="server" ID="sexo_selection" CssClass="sexo-info" RepeatDirection="Horizontal">
                                    <asp:ListItem>Masculino</asp:ListItem>
                                    <asp:ListItem>Femenino</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="col-lg-6 col-md-6 col-xs-12 form-group">
                                <div>
                                    <label>Fecha de Nacimiento *</label>
                                </div>
                                <div class="col-lg-3 col-md-3 col-xs-3 inl-blk nopadding">
                                    <asp:DropDownList ID="birthDay" runat="server" CssClass="form-control inl-blk">
                                    </asp:DropDownList>
                                </div>
                                <div class="col-lg-6 col-md-6 col-xs-6 inl-blk">
                                    <asp:DropDownList ID="birthMonth" runat="server" CssClass="form-control inl-blk">
                                    </asp:DropDownList>
                                </div>
                                 <div class="col-lg-3 col-md-3 col-xs-3 inl-blk nopadding">
                                    <asp:DropDownList ID="birthYear" runat="server" CssClass="form-control inl-blk">
                                    </asp:DropDownList>
                                </div>

                                    

                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-12 form-group">
                                <label>RFC *</label>
                                <div class="col-lg-12 col-md-12 col-sm-12 nopadding">
                                    <asp:TextBox CssClass="form-control" ID="rfc_number" runat="server" placeholder="PEJZ711556ABC"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-12 form-group">
                                <label>Telefono Fijo *</label>
                                <div class="col-lg-12 col-md-12 col-sm-12 nopadding">
                                    <asp:TextBox CssClass="form-control" ID="telefono_fijo" runat="server" placeholder="54885456465"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-12 form-group">
                                <label>Celular *</label>
                                <div class="col-lg-12 col-md-12 col-sm-12 nopadding">
                                    <asp:TextBox CssClass="form-control" ID="celular" runat="server" placeholder="54885456465"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-12 form-group">
                                <label>Email *</label>
                                <div class="col-lg-12 col-md-12 col-sm-12 nopadding">
                                    <asp:TextBox CssClass="form-control" ID="email" runat="server" placeholder="Juan@dominio.com"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
