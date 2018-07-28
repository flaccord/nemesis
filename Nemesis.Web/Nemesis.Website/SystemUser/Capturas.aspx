<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Capturas.aspx.cs" Inherits="Nemesis.Website.SystemUser.Capturas" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        table.dataTable.dtr-inline.collapsed > tbody > tr > th:first-child:before {
            top: 8px;
            left: 4px;
            height: 16px;
            width: 16px;
            display: block;
            position: absolute;
            color: white;
            border: 2px solid white;
            border-radius: 16px;
            box-shadow: 0 0 3px #444;
            box-sizing: content-box;
            font-family: 'Courier New', Courier, monospace;
            text-indent: 4px;
            line-height: 16px;
            content: '+';
            background-color: #008CBA;
        }
    </style>
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Solicitud de Informacion</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 col-xs-12 col-md-12">
                <table id="capturas_table" class="display responsive nowrap" style="width: 100%">
                    <thead>
                        <tr>
                            <th>Fetcha</th>
                            <th>RFC</th>
                            <th>Cliente</th>
                            <th>Referencia Buro</th>
                            <th>Puntos</th>
                            <th>Semaforo</th>
                            <th>Documentos</th>
                            <th>Generar PDF</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><span class="pd10">26/10/2016 13:09:24</span></td>
                            <td>
                                <label runat="server" class="pd10 anchor">HEME951213</label>
                            </td>
                            <td>ERICK IVAN HERNANDEZ</td>
                            <td class="center">
                                 <label runat="server" class="pd10 anchor referencia_buro" data-value="1259649805">1259649805</label>
                            </td>
                            <td class="center">
                                <span class="pd10 error">65</span>
                            </td>
                            <td class="center amarilio">
                                <span class="color-section pd10">Amarilio</span>
                            </td>
                            <td style="padding:10px 10px !important;">
                                <button class="btn btn-default">
                                    <i class="fa fa-paper-plane"></i>
                                    Documentos
                                </button>
                            </td>
                            <td style="padding:10px 10px !important;">
                                <button class="btn btn-default">
                                    <i class="fa fa-file-pdf-o" aria-hidden="true"></i>
                                    Contrato
                                </button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.17/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.2/js/dataTables.responsive.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/select/1.2.6/js/dataTables.select.min.js"></script>
    <script src="https://editor.datatables.net/extensions/Editor/js/dataTables.editor.min.js"></script>
    <script>
        $(document).ready(function () {

            $('#capturas_table').DataTable({
                 "columns": [
                    null,
                    null,
                    null,
                    null,
                    null,
                    null,
                    null,
                    null,
                  ]
            });


            $(".referencia_buro").on("click", function (event) {
                debugger;
                var ref = event.target.dataset.value;
                var windowObjectReference;
                if (ref) {
                    windowObjectReference = window.open(
                        "Detalleconsultas.aspx?Ref=" + ref,
                        "DescriptiveWindowName",
                        "resizable,scrollbars,status"
                  );
                }
            });
        });
    </script>
</asp:Content>
