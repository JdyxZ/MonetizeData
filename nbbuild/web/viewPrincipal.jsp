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
        <script src="https://kit.fontawesome.com/66d982b1d0.js" crossorigin="anonymous"></script>
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
                background-color: rgb(0,14,214) !important;

            }

            /*            .embed-container {
                            position: relative;
                            padding-bottom: 100%;
                            height: 0;
                            max-width: 100%;
                        }*/
            /*            .embed-container iframe, .embed-container object, .embed-container
                        iframe{
                            position: absolute;
                            top: 0;
                            left: 200px;
                            width: 50%;
                            height: 30%;
                        }*/
            /*           small{
                          position: absolute;
                           z-index: 40;
                           bottom: 0;
                           margin-bottom: -15px;
                       }*/

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
 * {
  font-family: Open Sans;
}

section {
  width: 100%;
  display: inline-block;
  background: #333;
  height: 50vh;
  text-align: center;
  font-size: 22px;
  font-weight: 700;
  text-decoration: underline;
}

.footer-distributed{
	background: rgb(0,14,214);
	box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.12);
	box-sizing: border-box;
	width: 100%;
	text-align: left;
	font: bold 16px sans-serif;
	padding: 55px 50px;
}

.footer-distributed .footer-left,
.footer-distributed .footer-center,
.footer-distributed .footer-right{
	display: inline-block;
	vertical-align: top;
}

/* Footer left */

.footer-distributed .footer-left{
	width: 40%;
}

/* The company logo */

.footer-distributed h3{
	color:  #ffffff;
	font: normal 36px 'Open Sans', cursive;
	margin: 0;
}

.footer-distributed h3 span{
	color:  lightseagreen;
}

/* Footer links */

.footer-distributed .footer-links{
	color:  #ffffff;
	margin: 20px 0 12px;
	padding: 0;
}

.footer-distributed .footer-links a{
	display:inline-block;
	line-height: 1.8;
  font-weight:400;
	text-decoration: none;
	color:  inherit;
}

.footer-distributed .footer-company-name{
	color:  white;
	font-size: 14px;
	font-weight: normal;
	margin: 0;
}

/* Footer Center */

.footer-distributed .footer-center{
	width: 35%;
}

.footer-distributed .footer-center i{
	background-color:  #2a6f99;
	color: #ffffff;
	font-size: 25px;
	width: 38px;
	height: 38px;
	border-radius: 50%;
	text-align: center;
	line-height: 42px;
	margin: 10px 15px;
	vertical-align: middle;
}

.footer-distributed .footer-center i.fa-envelope{
	font-size: 17px;
	line-height: 38px;
}

.footer-distributed .footer-center p{
	display: inline-block;
	color: #ffffff;
  font-weight:400;
	vertical-align: middle;
	margin:0;
}

.footer-distributed .footer-center p span{
	display:block;
	font-weight: normal;
	font-size:14px;
	line-height:2;
}

.footer-distributed .footer-center p a{
	color:  lightseagreen;
	text-decoration: none;;
}

.footer-distributed .footer-links a:before {
  content: "|";
  font-weight:300;
  font-size: 20px;
  left: 0;
  color: #fff;
  display: inline-block;
  padding-right: 5px;
}

.footer-distributed .footer-links .link-1:before {
  content: none;
}

/* Footer Right */

.footer-distributed .footer-right{
	width: 20%;
}

.footer-distributed .footer-company-about{
	line-height: 20px;
	color:  #92999f;
	font-size: 13px;
	font-weight: normal;
	margin: 0;
}

.footer-distributed .footer-company-about span{
	display: block;
	color:  #ffffff;
	font-size: 14px;
	font-weight: bold;
	margin-bottom: 20px;
}

.footer-distributed .footer-icons{
	margin-top: 25px;
}

.footer-distributed .footer-icons a{
	display: inline-block;
	width: 35px;
	height: 35px;
	cursor: pointer;
	background-color:  #2a6f99;
	border-radius: 2px;

	font-size: 20px;
	color: #ffffff;
	text-align: center;
	line-height: 35px;

	margin-right: 3px;
	margin-bottom: 5px;
}

/* If you don't want the footer to be responsive, remove these media queries */

@media (max-width: 880px) {

	.footer-distributed{
		font: bold 14px sans-serif;
	}

	.footer-distributed .footer-left,
	.footer-distributed .footer-center,
	.footer-distributed .footer-right{
		display: block;
		width: 100%;
		margin-bottom: 40px;
		text-align: center;
	}

	.footer-distributed .footer-center i{
		margin-left: 0;
	}

}
        </style>
        <script type="text/javascript">
            // var iframes = document.querySelector("iframe"); //te da los Iframes de la pagina
            //var iframeDocument = iframes.contentWindow.document; //Con esto tenemos el iframe
            // alert(document.getElementById('myIframe').contentWindow.myDummyFunction());
            // alert($("#cp_center").attr("id"));


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
            <a href="#footer" onclick="w3_close()" class="w3-bar-item w3-button">About</a>
        </nav>

        <!-- Top menu -->
        <!--<div class="w3-top" style="background-color: gainsboro">-->
        <div class="w3-white w3-xlarge navbar" style="">
            <div class="w3-button w3-padding-16 w3-left" onclick="w3_open()" style="color:white">☰</div>
            <div class="w3-right w3-padding-16" style="margin-right: 3%; color:white">Contact</div>
            <div class="w3-center w3-padding-16" style="color:white">Monetize Data</div>
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

<script src="https://www.kryogenix.org/code/browser/sorttable/sorttable.js"></script>
            <div class="w3-container">
                <h2>Consumption per day</h2>
                <p>The table indicates the consumption of one day of all the census sections of Barcelona.</p>
                <div style=" overflow:scroll;height:300px;">
                    <table style="margin-bottom: 30px;" id = "consumo2" class="w3-table w3-striped w3-border sortable"  >
                        <tr>
                            <th>District</th>
                            <th>Census code</th>
                            <th>Start Date</th>
                            <th>End Date</th>
                            <th onclick="sortTable(4)">Consumption</th>
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

            <div class="container" style="width:50%;">
                <canvas id="examChart"></canvas>
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

<footer class="footer-distributed" id="footer">

			<div class="footer-left">

				<h3>Monetize<span>Data</span></h3>

				<p class="footer-links">
					<a href="#" class="link-1">Start</a>
                                        
					<a href="mailto:javier.serrano04@estudiant.upf.edu">Contact</a>
				</p>

				<p class="footer-company-name">Universitat Pompeu Fabra ©</p>
			</div>

			<div class="footer-center">

				<div>
					<i class="fa fa-map-marker"></i>
					<p><span>Carrer de Tànger, 122, 140</span> 08018 Barcelona</p>
				</div>

				<div>
					<i class="fa fa-phone"></i>
					<p>+34 935 42 22 01</p>
				</div>

				<div>
					<i class="fa fa-envelope"></i>
					<p><a href="mailto:javier.serrano04@estudiant.upf.edu">Contact Us</a></p>
				</div>

			</div>

			<div class="footer-right">

				<p class="footer-company-about">
					<span>About the company</span>
					Monetize Data is a group of 5 students from Pompeu Fabra University who have been in charge of developing and launching this application.
				</p>

				<div class="footer-icons">

					<a href="#"><i class="fa fa-facebook"></i></a>
					<a href="#"><i class="fa fa-twitter"></i></a>
					<a href="#"><i class="fa fa-linkedin"></i></a>
					<a href="https://github.com/JdyxZ/MonetizeData"><i class="fa fa-github"></i></a>

				</div>

			</div>

		</footer>
    </body>

</html>
