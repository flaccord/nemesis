<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Dashboard.aspx.cs" Inherits="Nemesis.Website.SystemUser.Dashboard" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="dash-header">Welcome to the Dashboard.</h1>

        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="card">
                    <div class="card-body">
                        <canvas id="chLine"></canvas>
                    </div>
                </div>
            </div>
        </div>

    <script type="text/javascript">
        var colors = ['#28a745','#ffff00', '#0000ff'];
        Chart.defaults.global.defaultFontFamily = "Lato";
        Chart.defaults.global.defaultFontSize = 18;
        /* donut chart */
        var donutOptions = {
            cutoutPercentage: 85,
            responsive: true,
            title:
                {
                    display: true,
                    position: "left",
                    text: "Doughnut Chart",
                    fontSize: 22,
                    fontColor: "#111"
                },
            legend:
                {
                    position: 'left',
                    padding: 15,
                    labels:
                        {
                            pointStyle: 'circle',
                            usePointStyle: true,
                            fontSize: 18
                        },
                    animation:
                      {
                        animateScale: true
                      }
                },
            elements:
                {
                    center:
                    {
				       text: 'Verde',
                       color: '#FF6384', // Default is #000000
                       fontStyle: 'Arial', // Default is Arial
                       sidePadding: 20 // Defualt is 20 (as a percentage)
				    }
			    }
        };

        // donut 1
        var chDonutData = {
            labels: ['Verde', 'Amarillo', 'Azul'],
            datasets: [
                {
                    backgroundColor: colors.slice(0, 3),
                    borderWidth: [5,5,5],
                    data: [74, 11, 40]
                }
            ]
        };

        var chDonut = document.getElementById("chLine");
        if (chDonut) {
            new Chart(chDonut, {
                type: 'doughnut',
                data: chDonutData,
                options: donutOptions
            });
        }

    </script>
</asp:Content>
