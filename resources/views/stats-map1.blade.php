@extends('layouts.layout')

@section('content')

<div class="box-page">

    <div class="page-content">

        
        <div class="row">
            <div class="col-md-12">
                <div class="page-header">
                    <div class="d-flex align-items-left justify-content-left">
                        <span class="page-title">รายงานยอดขายรวมทั้งหมด</span>
                        <div id="calendarFilter" class="mr-3 ml-4 mt-2"></div>
                        <button id="btnPrintAllProvince" type="button" class="btn btn-small mt-2" style="display:none">แสดงจังหวัดทั้งหมด</button>
                    </div>
                </div>
                <div class="wrapper-stats-map">
                    <div id="container_my_map"></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="w-100" style="overflow-x: auto;">
                    <table id="table_province" class="table table-hover">
                        <thead>
                            <tr>
                                <th>
                                    <div class="text-center text-btn header-text">
                                        <span>ลำดับที่</span>
                                    </div>
                                </th>
                                <th>
                                    <div class="text-left text-btn header-text">
                                        <span>จังหวัด</span>
                                    </div>
                                </th>
                                <th>
                                    <div class="text-right text-btn header-text">
                                        <span>ยอดขายรวม</span>
                                    </div>
                                </th>
                                @foreach($branchs as $branch)
                                <th>
                                    <div class="text-right text-btn header-text">
                                        <span>{{ $branch->short_name }}</span>
                                    </div>
                                </th>
                                @endforeach
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($rows as $index => $row)
                            <tr>
                                <td class="text-center">
                                    <span class="font-in-table">{{ $index + 1 }}</span>
                                </td>
                                <td class="text-left">
                                    <span class="font-in-table">{{ $row->province_name }}</span>
                                </td>
                                <td class="text-right">
                                    <span class="font-in-table">{{ number_format($row->total_sale_all_branch,2,".",",") }}</span>
                                </td>

                                @foreach($branchs as $branch)
                                <td class="text-right">
                                    <span class="font-in-table">{{ number_format($row->{'total_sale_branch_'.$branch->id},2,".",",") }}</span>
                                </td>
                                @endforeach

                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div> 

<script>

$(document).ready(function () {

    function currencyBeautify(number) {
        if (number === undefined || number === null) return number;
        if (typeof num === 'string') number = parseInt(number, 10);
        return number.toLocaleString('en-US', {
            minimumFractionDigits: 2,
            maximumFractionDigits: 2,
        });
    }

    var mapped_province_id = [
        '',         // 0
        'th-bm',    // 1  // กรุงเทพมหานคร
        'th-sp',    // 2  // สมุทรปราการ
        'th-no',    // 3  // นนทบุรี
        'th-pt',    // 4  // ปทุมธานี
        'th-pa',    // 5  // พระนครศรีอยุธยา
        'th-at',    // 6  // อ่างทอง
        'th-lb',    // 7  // ลพบุรี
        'th-sb',    // 8  // สิงห์บุรี
        'th-cn',    // 9  // ชัยนาท
        'th-sr',    // 10 // สระบุรี
        'th-cb',    // 11 // ชลบุรี
        'th-ry',    // 12 // ระยอง
        'th-ct',    // 13 // จันทบุรี
        'th-tt',    // 14 // ตราด
        'th-cc',    // 15 // ฉะเชิงเทรา
        'th-pb',    // 16 // ปราจีนบุรี
        'th-nn',    // 17 // นครนายก
        'th-sk',    // 18 // สระแก้ว
        'th-nr',    // 19 // นครราชสีมา
        'th-br',    // 20 // บุรีรัมย์
        'th-su',    // 21 // สุรินทร์
        'th-si',    // 22 // ศรีสะเกษ
        'th-ur',    // 23 // อุบลราชธานี
        'th-ys',    // 24 // ยโสธร
        'th-cy',    // 25 // ชัยภูมิ
        'th-ac',    // 26 // อำนาจเจริญ
        'th-nb',    // 27 // หนองบัวลำพู
        'th-kk',    // 28 // ขอนแก่น
        'th-un',    // 29 // อุดรธานี
        'th-le',    // 30 // เลย
        'th-nk',    // 31 // หนองคาย
        'th-ms',    // 32 // มหาสารคาม
        'th-re',    // 33 // ร้อยเอ็ด
        'th-kl',    // 34 // กาฬสินธุ์
        'th-sn',    // 35 // สกลนคร
        'th-nf',    // 36 // นครพนม
        'th-md',    // 37 // มุกดาหาร
        'th-cm',    // 38 // เชียงใหม่
        'th-ln',    // 39 // ลำพูน
        'th-lg',    // 40 // ลำปาง
        'th-ud',    // 41 // อุตรดิตถ์
        'th-pr',    // 42 // แพร่
        'th-na',    // 43 // น่าน
        'th-py',    // 44 // พะเยา
        'th-cr',    // 45 // เชียงราย
        'th-mh',    // 46 // แม่ฮ่องสอน
        'th-ns',    // 47 // นครสวรรค์
        'th-ut',    // 48 // อุทัยธานี
        'th-kp',    // 49 // กำแพงเพชร
        'th-tk',    // 50 // ตาก
        'th-so',    // 51 // สุโขทัย
        'th-ps',    // 52 // พิษณุโลก
        'th-pc',    // 53 // พิจิตร
        'th-ph',    // 54 // เพชรบูรณ์
        'th-rt',    // 55 // ราชบุรี
        'th-kn',    // 56 // กาญจนบุรี
        'th-sh',    // 57 // สุพรรณบุรี
        'th-np',    // 58 // นครปฐม
        'th-ss',    // 59 // สมุทรสาคร
        'th-sm',    // 60 // สมุทรสงคราม
        'th-pe',    // 61 // เพชรบุรี
        'th-pk',    // 62 // ประจวบคิรีขันธ์
        'th-nt',    // 63 // นครศรีธรรมราช
        'th-kr',    // 64 // กระบี่
        'th-pg',    // 65 // พังงา
        'th-pu',    // 66 // ภูเก็ต
        'th-st',    // 67 // สุราษฎร์ธานี
        'th-rn',    // 68 // ระนอง
        'th-cp',    // 69 // ชุมพร
        'th-sg',    // 70 // สงขลา
        'th-sa',    // 71 // สตูล
        'th-tg',    // 72 // ตรัง
        'th-pl',    // 73 // พัทลุง
        'th-pi',    // 74 // ปัตตานี
        'th-yl',    // 75 // ยะลา
        'th-nw',    // 76 // นราธิวาส
        'th-bk',    // 77 // บึงกาฬ
    ];

    $("#calendarFilter").wgCalendar({ 
        initLabelText: 'ทั้งหมด',
        // startDate: new Date(2018, 01, 01),
        // endDate: new Date(2018, 02, 01),
        // showButtonAll: true,
        // 
        submitDate: function (data, self) {
            showDataAjax();
        // 	console.log('data', data);
        // 	console.log('self', self);
        }
    });

    function printDataHighchart(data)
    {
        // Create the chart
        Highcharts.mapChart('container_my_map', {
            chart: {
                map: 'countries/th/th-all',
                events: {
                    load: function () {
                        // this.mapZoom(0.25, 2500, -5000);
                    }
                }
            },

            title: {
                text: 'แสดงสถิติยอดขายรายจังหวัด MMPlus'
            },

            subtitle: {
                text: 'ที่มาของข้อมูล : ตารางสถิติ 1'
            },

            mapNavigation: {
                enabled: true,
                buttonOptions: {
                    verticalAlign: 'bottom'
                }
            },

            colorAxis: {
                min: 1,
                type: 'linear',
                minColor: '#ffffff',
                maxColor: '#009e4b',
            },

            plotOptions:{
                series:{
                    point:{
                        events:{
                            click: function(){
                                showDataAjax(this.province_id);
                                $("#btnPrintAllProvince").show();
                            }
                        }
                    }
                }
            },

            series: [{
                data: data,
                name: 'ยอดขายทั้งหมด',
                tooltip: {
                    pointFormat: '{point.value_text}' 
                        
                    ,
                },
                states: {
                    hover: {
                        color: '#006d33'
                    }
                },
                dataLabels: {
                    enabled: true,
                    format: '{point.name}'
                }
            }],
            lang: {
                printChart: 'พิมพ์แผนที่',
                downloadPNG: 'ดาวน์โหลด PNG',
                downloadJPEG: 'ดาวน์โหลด JPEG',
                downloadPDF: 'ดาวน์โหลด PDF',
                downloadSVG: 'ดาวน์โหลด SVG',
            }
        });
    }

    function showDataAjax(province_id)
    {
        $("#table_province tbody").html("");    // clear old data first
        let box = alertbox('กำลังโหลด...', 'info',500,10000);
        var calendarData = $('#calendarFilter').getCalendarDate();

        var toGetUrlData = "/dashboard/ajax/stats-map1";

        if(calendarData.isAllDate === false)
        {
            toGetUrlData = insertParam(toGetUrlData,'start_date',moment(calendarData.startDate).format('YYYY-MM-DD'));
            toGetUrlData = insertParam(toGetUrlData,'end_date',moment(calendarData.endDate).format('YYYY-MM-DD'));
        }

        if(province_id !== undefined)
        {
            toGetUrlDataProvince = insertParam(toGetUrlData,'province_id', province_id);
        }
        else
        {
            toGetUrlDataProvince = toGetUrlData;
        }

        $.getJSON(toGetUrlDataProvince, function(result) {

            var text_to_add = "";
            
            $.each(result, function(i, field) {
                text_to_add += "<tr>";

                text_to_add += "<td class='text-center'>";
                text_to_add +=     "<span class='font-in-table'>"+ (i + 1) +"</span>";
                text_to_add += "</td>";
                text_to_add += "<td class='text-left'>";
                text_to_add +=     "<span class='font-in-table'>"+ field['province_name'] +"</span>";
                text_to_add += "</td>";
                text_to_add += "<td class='text-right'>";
                text_to_add += "    <span class='font-in-table'>" + currencyBeautify(field['total_sale_all_branch'])  + "</span>";
                text_to_add += "</td>";

                @foreach($branchs as $branch)
                    text_to_add += "<td class='text-right'>";
                    text_to_add += "    <span class='font-in-table'>" + currencyBeautify(field['total_sale_branch_{{$branch->id}}'])  + "</span>";
                    text_to_add += "</td>";
                @endforeach

                text_to_add += "</tr>";
            });

            
            $.getJSON(toGetUrlData, function(result2) {
                var data = [];

                $.each(result2, function(i, field) {
                    data.push({
                        'hc-key': mapped_province_id[field['province_id']],
                        'value': field['total_sale_all_branch'],
                        'province_id': field['province_id'],
                        'value_text': '<b>ยอดขายรวม : ' + currencyBeautify(field['total_sale_all_branch']) + ' บาท </b><br/>' 
                            @foreach($branchs as $branch)
                            + '{{ $branch->short_name }} : ' + field['total_sale_branch_{{ $branch->id }}'] + ' บาท <br/>'
                            @endforeach
                        ,
                    });
                });

                box.close();

                $("#table_province tbody").html(text_to_add);
                printDataHighchart(data);
            });

            
        });
    }

    function showData()
    {
        var data = [
            @foreach($rows as $index => $row)
            {
                'hc-key': mapped_province_id[{{ $row->province_id }}],
                'value': {{ $row->total_sale_all_branch }},
                'province_id': {{ $row->province_id }},
                'value_text': '<b>ยอดขายรวม : {{ number_format($row->total_sale_all_branch,2,".",",") }} บาท </b><br/>' 
                    @foreach($branchs as $branch)
                    + '{{ $branch->short_name }} : {{ number_format($row->{'total_sale_branch_'.$branch->id},2,".",",")  }} บาท <br/>'
                    @endforeach
                ,
            },
            @endforeach
        ];

        printDataHighchart(data);
    }

    $("#btnPrintAllProvince").click(function() {
        $(this).hide();
        showDataAjax();
    });

    showData();
});

</script>

@endsection
