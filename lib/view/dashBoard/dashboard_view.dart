import 'package:dashboard/utils/color.dart';
import 'package:dashboard/view/Notification/notification_view.dart';
import 'package:dashboard/view/main_tab/main_tab.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    Widget leftTitleWidgets(double value, TitleMeta meta) {
      const style = TextStyle(
        color: Colors.black,
        fontSize: 12,
      );
      return SideTitleWidget(
        axisSide: AxisSide.bottom,
        child: Text(
          '${value + 0}',
          style: style,
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color.fromRGBO(178, 165, 194, 1),
      body: Stack(alignment: Alignment.topLeft, children: [
        Positioned(
          left: 0,
          right: 200,
          top: 0,
          child: Image.asset(
            'assets/dash.png',
            width: MediaQuery.sizeOf(context).width * 0.70,
            height: 400.h,
          ),
        ),
        SizedBox(
          height: double.maxFinite,
          child: SafeArea(
            bottom: false,
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
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const NotificationView();
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
                    aspectRatio: 16 / 10,
                    child: Container(
                      height: 320.h,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 242, 242, 0.9),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: LineChart(
                        duration: const Duration(
                          seconds: 2,
                        ),
                        LineChartData(
                          lineTouchData: const LineTouchData(enabled: false),
                          lineBarsData: [
                            LineChartBarData(
                              isStepLineChart: false,
                              shadow: Shadow(
                                color: Colors.grey.shade500,
                                blurRadius: 2,
                                offset: const Offset(0, 1),
                              ),
                              curveSmoothness: 2,
                              spots: [
                                const FlSpot(0, 1),
                                const FlSpot(1, 10.5),
                                const FlSpot(2, 1),
                                const FlSpot(3, 10.5),
                                const FlSpot(4, 20.5),
                                const FlSpot(5, 10.5),
                                const FlSpot(6, 20.5),
                                const FlSpot(7, 40.5),
                                const FlSpot(8, 15.5),
                                const FlSpot(9, 70.5),
                                const FlSpot(10, 80.5),
                                const FlSpot(11, 10.5),
                                const FlSpot(12, 20.5),
                                const FlSpot(13, 40.5),
                                const FlSpot(14, 15.5),
                                const FlSpot(15, 70.5),
                                const FlSpot(16, 6),
                                const FlSpot(17, 7),
                              ],
                              isCurved: false,
                              barWidth: 2,
                              color: const Color.fromRGBO(25, 224, 188, 1),
                              belowBarData: BarAreaData(
                                color: Colors.transparent,
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
                                spotsLine: const BarAreaSpotsLine(
                                    show: false,
                                    flLineStyle: FlLine(
                                        color: Colors.greenAccent,
                                        strokeWidth: 2,
                                        dashArray: [
                                          1,
                                          2,
                                          3,
                                          4,
                                          5,
                                        ])),
                                applyCutOffY: true,
                              ),
                              dotData: const FlDotData(
                                show: false,
                              ),
                              show: true,
                              showingIndicators: [
                                DateTime.september,
                              ],
                            ),
                          ],
                          minY: 0,
                          baselineX: 2,
                          maxY: 100,
                          titlesData: FlTitlesData(
                            show: true,
                            topTitles: const AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),
                            rightTitles: const AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),
                            bottomTitles: AxisTitles(
                              drawBelowEverything: true,
                              axisNameWidget: Text(
                                'Occupency',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              sideTitles: const SideTitles(
                                showTitles: false,
                              ),
                            ),
                            leftTitles: AxisTitles(
                              axisNameSize: 20,
                              drawBelowEverything: true,
                              sideTitles: SideTitles(
                                showTitles: true,
                                reservedSize: 40,
                                getTitlesWidget: leftTitleWidgets,
                              ),
                            ),
                          ),
                          clipData: const FlClipData(
                              top: true,
                              bottom: true,
                              left: false,
                              right: true),
                          gridData: const FlGridData(
                            drawHorizontalLine: true,
                            drawVerticalLine: false,
                            show: true,
                          ),
                          showingTooltipIndicators: [
                            ShowingTooltipIndicators(
                              [
                                LineBarSpot(
                                  LineChartBarData(),
                                  2,
                                  const FlSpot(70, 70),
                                ),
                              ],
                            ),
                          ],
                          borderData: FlBorderData(
                            border: Border.all(color: Colors.transparent),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.sp,
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                    backgroundColor: Colors.white,
                                    color: Colors.white,
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
                                    color: Colors.white,
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
        ),
      ]),
    );
  }
}
