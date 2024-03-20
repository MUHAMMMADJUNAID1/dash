import 'package:dashboard/utils/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckInOutView extends StatelessWidget {
  const CheckInOutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Check Ins and Outs',
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
      body: Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Check Ins',
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      width: double.infinity,
                      height: 200.h,
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      decoration: BoxDecoration(
                        color: containerColor,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/arrow1.png',
                                    width: 42.sp,
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Guest 2',
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        'Pax: 2',
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 70.h,
                              ),
                              Text(
                                'Night: 2',
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 30.sp,
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 83.w,
                                    height: 20.h,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: priceColor,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: const Text(
                                      'Price 42.90\$',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Container(
                                    width: 83.w,
                                    height: 20.h,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: bookingColor,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: const Text(
                                      'booking.com',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20.sp,
                              ),
                            ],
                          ),
                          Expanded(
                            child: Image.asset(
                              'assets/check.png',
                              width: 80.w,
                              height: 80.h,
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    height: 20.sp,
                  ),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 2,
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Text(
                  'Check Out',
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      width: double.infinity,
                      height: 200.h,
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      decoration: BoxDecoration(
                        color: containerColor,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/arrow1.png',
                                    width: 42.sp,
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Guest 2',
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        'Pax: 2',
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 70.h,
                              ),
                              Text(
                                'Night: 2',
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 30.sp,
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 83.w,
                                    height: 20.h,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: priceColor,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: const Text(
                                      'Price 42.90\$',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Container(
                                    width: 83.w,
                                    height: 20.h,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: bookingColor,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: const Text(
                                      'booking.com',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20.sp,
                              ),
                            ],
                          ),
                          Expanded(
                            child: Image.asset(
                              'assets/check.png',
                              width: 80.w,
                              height: 80.h,
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    height: 20.sp,
                  ),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 2,
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
