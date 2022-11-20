<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>


<!DOCTYPE html>
<html>
    <head>
        <title>MonetizeData</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
        <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <style>

            body,h1,h2,h3,h4,h5,h6 {
                font-family: "Karma", sans-serif
            }
            .w3-bar-block .w3-bar-item {
                padding:20px
            }
            td {
                text-align: center;
                vertical-align: middle;
            }
            .center {
                margin: auto;
                width: 50%;
                padding: 50px;
            }
            img{

                width: 50%;
                height: 50%;
                padding: 3%;
                display: block;
                margin-left: auto;
                margin-right: auto;
                width: 40%;
                margin-top: 5%;
            }
            .navbar{

                /*position: fixed;*/
                margin:auto;
                overflow: hidden;
                /*position: fixed;*/
                top: 0;
                width: 100%;
                background-color: gainsboro !important;

            }

            .searchBar
            {
            background-image: url('/css/searchicon.png'); 
            background-position: 10px 12px; 
            background-repeat: no-repeat; 
            width: 30%; 
            font-size: 16px; 
            padding: 12px 20px 12px 40px; 
            border: 1px solid #ddd; 
            margin-bottom: 30px; 
            }
                        
            .gradientMap
            {
                width: 20px;
                height: 300px;
                box-shadow: 0 0 20px rgba(0,0,0,0.5);
                background: linear-gradient(to top, #FFFFFF, #000064);
            }
            
            .statistics
            {
                color: white;
                text-align: center;
                vertical-align: middle;
                font-size: 15px;
                background: #191876;
                font-family: Segoe UI;
                border-radius: 15px;
                font-weight: bold; 
                height: 30px;
            }

        </style>
        <script type="text/javascript"> 
        $(document).ready(function(){            
            
            computeStatistics();

            function computeStatistics()
            {
                let consumptions = [];
                var item_sum = 0, n_items = 0, mean = 0, standard_deviation = 0, max_consumption = 0, min_consumption = 0;
                
                $('td').each(function ()
                {
                    if ($(this).attr('id') === "con")
                    {
                        var item = parseInt($(this).text());
                        consumptions.push(item);
                        item_sum += item;
                        n_items += 1;
                    }

                });
                
                mean = Math.trunc(item_sum / n_items);
                max_consumption = Math.max(consumptions); 
                min_consumption = Math.min(consumptions);
                var deviation_sum = 0;
                for(let i = 0; i < n_items; i++)
                {
                    deviation_sum += Math.pow((consumptions[i] - mean),2);
                }
                standard_deviation = Math.trunc(Math.sqrt(deviation_sum / n_items));

                //Set statistics
                $('#mean').text(String(mean));
                $('#standard_deviation').text(String(standard_deviation));
                $('#max_value').text(String(max_consumption));
                $('#min_value').text(String(min_consumption));
            }                                    
        });
 
        </script>
    </head>
    <body>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.bundle.js"></script>

        <!-- Sidebar (hidden by default) -->
        <nav class="w3-sidebar w3-bar-block w3-card w3-top w3-xlarge w3-animate-left" style="  display:none;z-index:2;width:40%;min-width:300px" id="mySidebar">
            <a href="javascript:void(0)" onclick="w3_close()"
               class="w3-bar-item w3-button">Close Menu</a>
            <a href="#food" onclick="w3_close()" class="w3-bar-item w3-button">View Map</a>
            <a href="#about" onclick="w3_close()" class="w3-bar-item w3-button">About</a>
        </nav>

        <!-- Top menu -->
        <!--<div class="w3-top" style="background-color: gainsboro">-->
        <div class="w3-white w3-xlarge navbar" style="">
            <div class="w3-button w3-padding-16 w3-left" onclick="w3_open()">☰</div>
            <div class="w3-right w3-padding-16" style="margin-right: 3%">Contact</div>
            <div class="w3-center w3-padding-16">Monetize Data</div>
        </div>
        <div class="w3-right " ><img src="img/aigues-de-barcelona-logo.png"></img></div>
        <!--</div>-->

        <!-- !PAGE CONTENT! -->
        <div class="w3-main w3-content " style="max-width:1200px;margin-bottom:100px;margin-top: 50px">

            <div class="w3-container">
                <h2>Barcelona metropolitan area</h2>
                <p>Map of water consumption for the day 2021-01-01 by census section.</p>

                <div class="embed-container">
                    <iframe id= "myIframe" width="80%" height="800" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" title="Barcelona" src="//www.arcgis.com/apps/Embed/index.html?webmap=1f4fffa42b8a423c81530a7a44cc3a35&extent=1.975,41.3269,2.3798,41.4696&zoom=true&previewImage=false&scale=true&search=true&searchextent=true&disable_scroll=true&theme=light"></iframe>
                    <div id="scale" style="float:right; margin-top: 20%; margin-right: 40px;">
                        <h5> Scale </h5>
                        <div class="gradientMap" id="gradient"></div>
                    </div>
                </div>
            </div>


            <div class="w3-container">
                <h2>Consumption per day</h2>
                <p>The table indicates the consumption of one day of all the census sections of Barcelona.</p>
                <div style=" overflow:scroll;height:300px;">
                    <table style="margin-bottom: 30px;" id = "consumo2" class="w3-table w3-striped w3-border"  >
                        <tr>
                            <th>District</th>
                            <th>Census code</th>
                            <th>Start Date</th>
                            <th>End Date</th>
                            <th>Consumption</th>
                            <th>Population</th>
                            <th>Ratio Male/Female</th>
                            <th>Age <14 </th>
                            <th>Age 15/24 </th>
                            <th>Age 25/64 </th>
                            <th>Age >65 </th>
                        </tr>

                        <c:forEach var="s" items="${seccion}"> 
                            <tr>
                                <td style=" text-align: center;">${s.district}</td>
                                <td style=" text-align: center;">${s.code_censal}</td>
                                <td >${s.getConsum().getDayIni()}</td>
                                <td >${s.getConsum().getDayEnd()}</td>
                                <td style=" text-align: center;" id="con">${s.getConsum().getConsumption()}</td>
                                <td style=" text-align: center;">${s.population}</td>
                                <td style=" text-align: center;">${s.popul_male} / ${s.popul_Female}</td>
                                <td style=" text-align: center;">${s.age_0_14}</td>
                                <td style=" text-align: center;">${s.age_15_24}</td>
                                <td style=" text-align: center;">${s.age_25_64}</td>
                                <td style=" text-align: center;">${s.age_65_mas}</td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
            

            <div class="container" style="width:45%; float:left">
                <canvas id="examChart"></canvas>
            </div>
            
            <div class="container" style="width: 45%; float:right; margin-top: 10%;">
                <table style="margin-bottom: 30px;" id = "stadistics" class="w3-table w3-striped w3-border">
                    <tr>
                        <th>Statistics</th>
                        <th style=" text-align: center;">Mean</th>
                        <th style=" text-align: center;">Deviation Standard</th>
                        <th style=" text-align: center;">Max value</th>
                        <th style=" text-align: center;">Min value</th>
                    </tr>

                    <tr>
                        <th>Values</th>
                        <td style=" text-align: center;" id="mean"> 1</td>
                        <td style=" text-align: center;" id="standard_deviation">0</td>
                        <td style=" text-align: center;" id="max_value">0</td>
                        <td style=" text-align: center;" id="min_value">2</td>
                    </tr>  
                </table>
            </div>
            
        </div>
        
        <!--- Javi script --->
        <script>
            
            function SearchBar() {
              var input, filter, table, tr, td, i, ti, j, txtValue, searchedRow;
              input = document.getElementById("myInput");
              filter = input.value.toUpperCase();
              table = document.getElementById("MainData");
              tr = table.getElementsByTagName("tr");
              for (i = 1; i < tr.length; i++) 
              {
                td = tr[i].getElementsByTagName("td");
                searchedRow = false;  
                for(j = 0; j < td.length; j++)
                {
                    ti = td[j];
                    if(ti)
                    {
                      txtValue = ti.textContent || ti.innerText;  
                      if (txtValue.toUpperCase().indexOf(filter) > -1)
                      {
                          searchedRow = true;
                      }
                    }
                }

                if (searchedRow) {
                   tr[i].style.display = "";
                 } else {
                   tr[i].style.display = "none";
                 }       
              }
            }
            
            
        </script>

        <!--- Someone script --->
        <script>

            Array.prototype.max = function () {
                return Math.max.apply(null, this);
            };

            let items = [];
            $('td').each(function () {
                if ($(this).attr('id') === "con")
                    items.push($(this).text());
            });

            //alert(Math.round(items.max())+1);


            const data = [];
            const colorBackGround = [];
            for (var i = 1, max = 10; i < max; i++) {
                var d = "2015-03-0" + (i).toString();
                var a = {t: new Date(d), y: items[i]};
                data.push(a);
                colorBackGround.push('rgba(0, 0, 255,2)');
            }


            function createLabels(maxTicksLimit) {
                const times = data.map(o => o.t.getTime());
                const startTime = times[0];
                const endTime = times[times.length - 1];
                const tickGap = (endTime - startTime) / (maxTicksLimit - 1);
                const labels = [startTime];
                for (let i = 1; i < maxTicksLimit - 1; i++) {
                    labels.push(startTime + i * tickGap);
                }
                labels.push(endTime);
                return labels;
            }

            var myChart = new Chart(document.getElementById("examChart"), {
                type: 'line',
                data: {
                    labels: createLabels(9),
                    datasets: [{
                            label: 'Consum for day',
                            fill: false,
                            data: data,
                            backgroundColor: colorBackGround,
                            borderWidth: 1
                        }]
                },
                options: {
                    scales: {
                        xAxes: [{
                                type: 'time',
                                ticks: {
                                    source: 'labels',
                                    minRotation: 45
                                },
                                time: {
                                    unit: 'day',
                                    displayFormats: {
                                        day: 'DD/MM/YYYY'
                                    },
                                    tooltipFormat: 'DD/MM/YYYY'
                                }
                            }],
                        yAxes: [{
                                ticks: {
                                    suggestedMin: 0
                                },
                                gridLines: {
                                    zeroLineColor: "rgba(0,255,255,1)"
                                },
                                scaleLabel: {
                                    display: true,
                                    labelString: 'Consum m3'
                                }
                            }]
                    }
                }
            });
        </script>
        
        <!--- Someone script --->
        <script>
            // Script to open and close sidebar
            function w3_open() {
                document.getElementById("mySidebar").style.display = "block";
            }

            function w3_close() {
                document.getElementById("mySidebar").style.display = "none";
            }
        </script>


    </body>

</html>
