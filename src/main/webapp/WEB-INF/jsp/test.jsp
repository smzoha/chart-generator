<html>
<head>
    <title>Chart Generator :: DHTMLX Demo</title>

    <link href="/css/chart.css" rel="stylesheet" type="text/css"/>
    <link href="/css/chart.min.css" rel="stylesheet" type="text/css"/>

    <script type="text/javascript" src="/js/chart.js"></script>
    <script type="text/javascript" src="/js/chart.min.js"></script>
    <script type="text/javascript" src="/js/jquery-3.4.1.min.js"></script>
</head>
<body style="padding: 10px;">
    <div id="chart_container" style="height: 50%; width: 75%;"></div>
    <br/>
    <button type="button" id="download">Download</button>


    <script>
        var data = [
            { day: 'Sunday', morningAttendance: 30, eveningAttendance: 20 },
            { day: 'Monday', morningAttendance: 25, eveningAttendance: 10 },
            { day: 'Tuesday', morningAttendance: 5, eveningAttendance: 15 },
            { day: 'Wednesday', morningAttendance: 10, eveningAttendance: 25 },
            { day: 'Thursday', morningAttendance: 35, eveningAttendance: 40 }
        ];

        var config = {
            type: 'line',
            scales: {
                'bottom': { text: 'day', showText: true },
                'left': { maxTicks: 5, max: 50, min: 0 }
            },
            series: [
                {
                    id: 'series1',
                    value: 'morningAttendance',
                    color: 'blue',
                    pointColor: 'darkblue',
                    pointType: 'triangle',
                    tooltipTemplate: function(point) {
                        return 'Day: ' + point[1] + '; Morning Attendance: ' + point[0];
                    }
                },
                {
                    id: 'series2',
                    value: 'eveningAttendance',
                    color: 'green',
                    pointColor: 'teal',
                    pointType: 'triangle',
                    tooltipTemplate: function(point) {
                        return 'Day: ' + point[1] + '; Evening Attendance: ' + point[0];
                    }
                }
            ],
            legend: {
                series: ['series1', 'series2'],
                valign: 'middle',
                halign: 'right'
            }
        };

        var chart = new dhx.Chart('chart_container', config);

        chart.data.parse(data);

        $(function() {
            $('button[id="download"]').on('click', function(e) {
                var chartSvg = $($('div[id="chart_container"]').find('svg')).outerHTML;
                console.log(chartSvg);
            });
        });
    </script>
</body>
</html>