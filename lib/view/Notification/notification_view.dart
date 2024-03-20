import 'package:dashboard/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    List notification = [
      {
        "img": "assets/swap.png",
        "title": "Transfered money to William",
        "subtitle": "\$100",
      },
      {
        "img": "assets/new.png",
        "title": "New Reservation",
        "subtitle": "Booking.com",
      },
      {
        "img": "assets/swap.png",
        "title": "Transfered money to Ilham",
        "subtitle": "\$200",
      },
      {
        "img": "assets/new.png",
        "title": "New Reservation",
        "subtitle": "Expedia",
      },
    ];
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 250, 252, 1),
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w400),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Today',
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(34, 34, 34, 1)),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  height: 305.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 2,
                          spreadRadius: 1,
                        ),
                      ]),
                  child: ListView.builder(
                    itemCount: notification.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      var nObj = notification[index] as Map;
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ListTile(
                            leading: Container(
                              width: 45.w,
                              height: 45.h,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Image.asset(
                                nObj['img'],
                                width: 25.w,
                                height: 25.h,
                                color: primaryColor,
                              ),
                            ),
                            title: Text(
                              nObj['title'],
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            subtitle: Text(
                              nObj['subtitle'],
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Divider(
                              color: Colors.grey.shade100,
                            ),
                          ),
                        ],
                      );
                    },
                  )),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Yesterdy',
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(34, 34, 34, 1)),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 225.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 2,
                        spreadRadius: 1,
                      ),
                    ]),
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: notification.length,
                  itemBuilder: (context, index) {
                    var nObj = notification[index] as Map;
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ListTile(
                          leading: Container(
                            width: 45.w,
                            height: 45.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Image.asset(
                              nObj['img'],
                              width: 25.w,
                              height: 25.h,
                              color: primaryColor,
                            ),
                          ),
                          title: Text(
                            nObj['title'],
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          subtitle: Text(
                            nObj['subtitle'],
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Divider(
                            color: Colors.grey.shade100,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: 50.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
