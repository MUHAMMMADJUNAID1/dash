import 'package:dashboard/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExpensesView extends StatelessWidget {
  const ExpensesView({super.key});

  @override
  Widget build(BuildContext context) {
    List expenses = [
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
                      'Expanses',
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
            itemCount: expenses.length,
            itemBuilder: (context, index) {
              var exObj = expenses[index] as Map;
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
                        'assets/expensesleading.png',
                        width: 30.h,
                      ),
                    ),
                    title: Text(
                      exObj['title'],
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    subtitle: Text(
                      exObj['subtitle'],
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.withOpacity(0.7),
                      ),
                    ),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          exObj['price'],
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.red,
                          ),
                        ),
                        Text(
                          exObj['date'],
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.withOpacity(0.7),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
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
