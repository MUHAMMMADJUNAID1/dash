import 'package:dashboard/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IncomeView extends StatelessWidget {
  const IncomeView({super.key});

  @override
  Widget build(BuildContext context) {
    List income = [
      {
        "title": "Dropbox plan",
        "subtitle": "Subscription",
        "price": "\$144.0",
        "date": "18 sep 2019",
      },
      {
        "title": "Spotify subs",
        "subtitle": "Subscription",
        "price": "\$24.0",
        "date": "8 sep 2019",
      },
      {
        "title": "ATM Withdraw",
        "subtitle": "Cash Withdarw",
        "price": "\$32.0",
        "date": "15 sep 2019",
      },
      {
        "title": "KFC Resturant",
        "subtitle": "Food and Drink",
        "price": "\$14.0",
        "date": "18 sep 2019",
      },
      {
        "title": "Tax on  Interest",
        "subtitle": "Tax and bill",
        "price": "\$1.0",
        "date": "24 sep 2019",
      },
    ];
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
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
                      'Income',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Diffrent Date',
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Image.asset(
                          'assets/cal.png',
                          height: 20,
                        ),
                      ],
                    )
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
                          'Balence',
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
                          '\$8,420.00',
                          style: TextStyle(
                              fontSize: 32.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        )
                      ],
                    ),
                    Image.asset(
                      'assets/money.png',
                      width: 70.sp,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        preferredSize: Size(
          double.maxFinite,
          200.sp,
        ),
      ),
      body: Container(
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height,
        child: ListView.builder(
            itemCount: income.length,
            itemBuilder: (context, index) {
              var incomObj = income[index] as Map;
              return Column(
                children: [
                  ListTile(
                    leading: Container(
                      alignment: Alignment.center,
                      width: 50.sp,
                      height: 50.sp,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Stack(
                        children: [
                          Image.asset('assets/round.png'),
                          Positioned(
                            left: 5,
                            top: 5,
                            child: Image.asset(
                              'assets/arrow3.png',
                              width: 17,
                            ),
                          )
                        ],
                      ),
                    ),
                    title: Text(
                      incomObj['title'],
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    subtitle: Text(
                      incomObj['subtitle'],
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade500,
                      ),
                    ),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          incomObj['price'],
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.green,
                          ),
                        ),
                        Text(
                          incomObj['date'],
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
