import 'package:dashboard/view/CheckIn/checkIn_view.dart';
import 'package:dashboard/view/CheckInsOut/check_in_out_view.dart';
import 'package:dashboard/view/Expanses/expenses_view.dart';
import 'package:dashboard/view/Incom/incom_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainTab extends StatefulWidget {
  const MainTab({super.key});

  @override
  State<MainTab> createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> {
  int currentTab = 0;
  final List<Widget> tabViews = [
    const IncomeView(),
    const CheckIn(),
    const ExpensesView(),
    const CheckInOutView(),
  ];

  void selectTab(int index) {
    setState(() {
      currentTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabViews[currentTab],
      bottomNavigationBar: Container(
        width: double.maxFinite,
        height: 60.h,
        color: const Color.fromRGBO(217, 217, 217, 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () => selectTab(0),
              child: Image.asset(
                'assets/home.png',
                width: 30.w,
                height: 30.h,
              ),
            ),
            GestureDetector(
              onTap: () => selectTab(1),
              child: Image.asset(
                'assets/user.png',
                width: 24.w,
                height: 24.h,
              ),
            ),
            GestureDetector(
              onTap: () => selectTab(2),
              child: Image.asset(
                'assets/analysis.png',
                width: 24.w,
                height: 24.h,
              ),
            ),
            GestureDetector(
              onTap: () => selectTab(3),
              child: Image.asset(
                'assets/notification.png',
                width: 24.w,
                height: 24.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}





// import 'package:dashboard/view/CheckIn/checkIn_view.dart';
// import 'package:dashboard/view/Expanses/expenses_view.dart';
// import 'package:dashboard/view/Incom/incom_view.dart';
// import 'package:dashboard/view/Notification/notification_view.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class MainTab extends StatefulWidget {
//   const MainTab({super.key});

//   @override
//   State<MainTab> createState() => _MainTabState();
// }

// class _MainTabState extends State<MainTab> {
//   @override
//   Widget build(BuildContext context) {
//     int currentTab = 0;
//     Widget currentTabView = const IncomeView();
//     final PageStorageBucket pageStorageBucket = PageStorageBucket();

//     return Scaffold(
//       body: PageStorage(
//         bucket: pageStorageBucket,
//         child: currentTabView,
//       ),
//       bottomNavigationBar: Container(
//         width: double.maxFinite,
//         height: 60.h,
//         color: const Color.fromRGBO(217, 217, 217, 1),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             GestureDetector(
//               onTap: () {
//                 setState(() {
//                   currentTab = 0;
//                   currentTabView = const IncomeView();
//                   print(currentTab);
//                 });
//               },
//               child: Image.asset(
//                 'assets/home.png',
//                 width: 24.w,
//                 height: 24.h,
//               ),
//             ),
//             GestureDetector(
//               onTap: () {
//                 setState(() {
//                   currentTab = 1;
//                   currentTabView = const CheckIn();
//                 });
//               },
//               child: Image.asset(
//                 'assets/user.png',
//                 width: 24.w,
//                 height: 24.h,
//               ),
//             ),
//             GestureDetector(
//               onTap: () {
//                 setState(() {
//                   currentTab = 2;
//                   currentTabView = const ExpensesView();
//                 });
//               },
//               child: Image.asset(
//                 'assets/analysis.png',
//                 width: 24.w,
//                 height: 24.h,
//               ),
//             ),
//             GestureDetector(
//               onTap: () {
//                 setState(() {
//                   currentTab = 3;
//                   currentTabView = const NotificationView();
//                 });
//               },
//               child: Image.asset(
//                 'assets/notification.png',
//                 width: 24.w,
//                 height: 24.h,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // import 'package:dashboard/view/Expanses/expenses_view.dart';
// // import 'package:dashboard/view/Incom/incom_view.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter_screenutil/flutter_screenutil.dart';

// // import 'package:dashboard/view/CheckIn/checkIn_view.dart';

// // import 'package:dashboard/view/Notification/notification_view.dart';

// // class MainTab extends StatefulWidget {
// //   const MainTab({Key? key}) : super(key: key);

// //   @override
// //   State<MainTab> createState() => _MainTabState();
// // }

// // class _MainTabState extends State<MainTab> {
// //   int _selectedIndex = 0;
// //   final List<Widget> _tabViews = <Widget>[
// //     const IncomeView(),
// //     const CheckIn(),
// //     const ExpensesView(),
// //     const NotificationView(),
// //   ];

// //   void _onItemTapped(int index) {
// //     setState(() {
// //       _selectedIndex = index;
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: _tabViews[_selectedIndex],
// //       bottomNavigationBar: BottomNavigationBar(
// //         items: [
// //           BottomNavigationBarItem(
// //             icon: Image.asset(
// //               'assets/home.png',
// //               width: 24.w,
// //               height: 24.h,
// //             ),
// //             label: null,
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Image.asset(
// //               'assets/user.png',
// //               width: 24.w,
// //               height: 24.h,
// //             ),
// //             label: 'Check-In',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Image.asset(
// //               'assets/analysis.png',
// //               width: 24.w,
// //               height: 24.h,
// //             ),
// //             label: 'Expenses',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Image.asset(
// //               'assets/notification.png',
// //               width: 24.w,
// //               height: 24.h,
// //             ),
// //             label: 'Notifications',
// //           ),
// //         ],
// //         currentIndex: _selectedIndex,
// //         selectedItemColor: Colors.blue,
// //         onTap: _onItemTapped,
// //       ),
// //     );
// //   }
// // }
