import 'package:dashboard/utils/color.dart';
import 'package:dashboard/view/Notification/notification_view.dart';
import 'package:dashboard/view/main_tab/main_tab.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    Widget leftTitleWidgets(double value, TitleMeta meta) {
      const style = TextStyle(
        color: Colors.limeAccent,
        fontSize: 12,
      );
      return SideTitleWidget(
        axisSide: AxisSide.bottom,
        child: Text(
          '${value + 40}',
          style: style,
        ),
      );
    }

    Widget bottomTitleWidgets(double value, TitleMeta meta) {
      String text;
      switch (value.toInt()) {
        case 0:
          text = 'Jan';
          break;
        case 1:
          text = 'Feb';
          break;
        case 2:
          text = 'Mar';
          break;
        case 3:
          text = 'Apr';
          break;
        case 4:
          text = 'May';
          break;
        case 5:
          text = 'Jun';
          break;
        case 6:
          text = 'Jul';
          break;
        case 7:
          text = 'Aug';
          break;
        case 8:
          text = 'Sep';
          break;
        case 9:
          text = 'Oct';
          break;
        case 10:
          text = 'Nov';
          break;
        case 11:
          text = 'Dec';
          break;
        default:
          return Container();
      }

      return SideTitleWidget(
        axisSide: meta.axisSide,
        space: 4,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 10,
            color: Colors.brown,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(178, 165, 194, 1),
        body: Stack(alignment: Alignment.topLeft, children: [
          Positioned(
            top: 0,
            left: 0,
            right: 68,
            child: Image.asset(
              'assets/dash.png',
              width: 250.w,
              height: 400.h,
            ),
          ),
          SizedBox(
            height: double.maxFinite,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.menu,
                              color: Color.fromRGBO(255, 255, 255, 1),
                              size: 30,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              'DASH.D',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const  NotificationView();
                            }));
                          },
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Positioned(
                                top: 4,
                                child: Container(
                                  width: 6,
                                  height: 6,
                                  decoration: BoxDecoration(
                                    color: Colors.redAccent,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                              ),
                              Image.asset('assets/notii.png'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  AspectRatio(
                    aspectRatio: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 12,
                        right: 28,
                        top: 22,
                        bottom: 12,
                      ),
                      child: LineChart(
                        LineChartData(
                            lineTouchData: const LineTouchData(enabled: false),
                            lineBarsData: [
                              LineChartBarData(
                                spots: [
                                  const FlSpot(0, 4),
                                  const FlSpot(1, 3.5),
                                  const FlSpot(2, 4.5),
                                  const FlSpot(3, 1),
                                  const FlSpot(4, 4),
                                  const FlSpot(5, 6),
                                  const FlSpot(6, 6.5),
                                  const FlSpot(7, 6),
                                  const FlSpot(8, 4),
                                  const FlSpot(9, 6),
                                  const FlSpot(10, 6),
                                  const FlSpot(11, 7),
                                ],
                                isCurved: false,
                                barWidth: 2,
                                color: Colors.redAccent,
                                belowBarData: BarAreaData(
                                  show: true,
                                  spotsLine: BarAreaSpotsLine(
                                    checkToShowSpotLine: (spot) {
                                      spot = const FlSpot(2, 1);
                                      return true;
                                    },
                                  ),
                                  cutOffY: 0,
                                  applyCutOffY: true,
                                ),
                                aboveBarData: BarAreaData(
                                  show: true,
                                  color: Colors.indigoAccent,
                                  cutOffY: 1.1,
                                  applyCutOffY: true,
                                ),
                                dotData: const FlDotData(
                                  show: false,
                                ),
                              ),
                            ],
                            minY: 0,
                            titlesData: FlTitlesData(
                              show: true,
                              topTitles: const AxisTitles(
                                sideTitles: SideTitles(showTitles: false),
                              ),
                              rightTitles: const AxisTitles(
                                sideTitles: SideTitles(showTitles: false),
                              ),
                              bottomTitles: AxisTitles(
                                axisNameWidget: Text(
                                  'Occupency',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  reservedSize: 18,
                                  interval: 1,
                                  getTitlesWidget: bottomTitleWidgets,
                                ),
                              ),
                              leftTitles: AxisTitles(
                                axisNameSize: 20,
                                axisNameWidget: const Text(
                                  'Value',
                                  style: TextStyle(
                                    color: priceColor,
                                  ),
                                ),
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  reservedSize: 40,
                                  getTitlesWidget: leftTitleWidgets,
                                ),
                              ),
                            ),
                            borderData: FlBorderData(
                                border: Border.all(color: Colors.transparent))),
                      ),
                    ),
                  ),
                  Text(
                    '    Financial Overview',
                    style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    width: 389.w,
                    height: 192.h,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 20),
                    decoration: BoxDecoration(
                      color: dashConColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'In & Out',
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Today, 08 Sept 2019',
                                  style: TextStyle(
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Active Total Balance',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '\$8,420.00',
                                  style: TextStyle(
                                    fontSize: 32.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Image.asset(
                          'assets/money.png',
                          width: 100.w,
                          height: 100.h,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const MainTab();
                          }));
                        },
                        child: Expanded(
                          child: Container(
                            height: 225.h,
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 30),
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(210, 37, 37, 1),
                              borderRadius: BorderRadius.circular(26),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  '\$8,420.00',
                                  style: TextStyle(
                                    fontSize: 30.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/arrowd.png',
                                      width: 48.w,
                                      height: 50.h,
                                    ),
                                    Image.asset(
                                      'assets/money.png',
                                      width: 70.w,
                                      height: 70.h,
                                    ),
                                  ],
                                ),
                                Text(
                                  'Expenses',
                                  style: TextStyle(
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return MainTab();
                          }));
                        },
                        child: Expanded(
                          child: Container(
                            height: 225.h,
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 30),
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(11, 36, 98, 1),
                              borderRadius: BorderRadius.circular(26),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  '\$8,420.00',
                                  style: TextStyle(
                                    fontSize: 30.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/arrowd.png',
                                      width: 48.w,
                                      height: 50.h,
                                    ),
                                    Image.asset(
                                      'assets/money.png',
                                      width: 70.w,
                                      height: 70.h,
                                    ),
                                  ],
                                ),
                                Text(
                                  'Income',
                                  style: TextStyle(
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 29.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(255, 242, 242, 1),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Latest Transaction',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                              ListView.builder(
                                  itemCount: 3,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      leading: Image.asset(
                                        'assets/marked.png',
                                      ),
                                      title: Text(
                                        'Acc. Room 101',
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black,
                                        ),
                                      ),
                                      subtitle: Text(
                                        '!00\$',
                                        style: TextStyle(
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey.shade400,
                                        ),
                                      ),
                                      trailing: Image.asset(
                                        'assets/marked2.png',
                                      ),
                                    );
                                  })
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              RotatedBox(
                                quarterTurns: 0,
                                child: Image.asset(
                                  'assets/up.png',
                                  height: 50,
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              RotatedBox(
                                quarterTurns: 3,
                                child: Text(
                                  'View All',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color:
                                        const Color.fromRGBO(125, 112, 112, 1),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                            ],
                          ),
                          Container(
                            width: 50.w,
                            height: 50.h,
                            decoration: const BoxDecoration(
                                color: nextColor,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                )),
                            child: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 29.h,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
