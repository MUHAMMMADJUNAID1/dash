import 'package:dashboard/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckIn extends StatelessWidget {
  const CheckIn({super.key});

  @override
  Widget build(BuildContext context) {
    List expanses = [
      {"image": "assets/people.png", "title": "People", "traling": "2"},
      {
        "image": "assets/cal.png",
        "title": "Check In",
        "traling": "12 sep 2019"
      },
      {
        "image": "assets/cal.png",
        "title": "Check Out",
        "traling": "10 sep 2019"
      },
      {"image": "assets/money.png", "title": "Price", "traling": "1 sep 2019"},
      {
        "image": "assets/source.png",
        "title": "Source",
        "traling": "15 sep 2019"
      },
    ];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(
          double.maxFinite,
          200.sp,
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          color: primaryColor,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'CheckIn',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.sp,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name :',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Jhone Doe',
                          style: TextStyle(
                              fontSize: 32.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        )
                      ],
                    ),
                    Image.asset(
                      'assets/check1.png',
                      width: 70.sp,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 10),
        height: MediaQuery.sizeOf(context).height,
        child: ListView.builder(
            itemCount: expanses.length,
            itemBuilder: (context, index) {
              var exObj = expanses[index] as Map;
              return Column(
                children: [
                  ListTile(
                    leading: Container(
                      alignment: Alignment.center,
                      width: 50.sp,
                      height: 50.sp,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Image.asset(
                        exObj['image'].toString(),
                        width: 30.h,
                        color: Colors.black,
                      ),
                    ),
                    title: Text(
                      exObj['title'].toString(),
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    trailing: index == 0
                        ? Text(
                            exObj['trailing'].toString(),
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.green,
                            ),
                          )
                        : Text(
                            exObj['trailing'].toString(),
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                          ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Divider(
                      color: Colors.grey.shade200,
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
