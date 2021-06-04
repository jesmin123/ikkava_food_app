import 'package:flutter/material.dart';
import 'package:ikkava_food_app/constants/app_font_style.dart';
import 'package:ikkava_food_app/constants/colors.dart';
import 'package:ikkava_food_app/constants/dimen.dart';
import 'package:ikkava_food_app/constants/strings.dart';
import 'package:ikkava_food_app/widgets/main_appBar.dart';
import 'package:ikkava_food_app/widgets/sub_app_bar.dart';
import 'package:line_icons/line_icons.dart';

class TransactionHistory extends StatefulWidget {
  @override
  _TransactionHistoryState createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      backgroundColor: APP_DRAWER_COLOR,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          child: Column(
            children: [
              MAppBar(TRANSACTION_HISTORY),
              SizedBox(height: LINE_HEIGHT,),
              Container(
               decoration: BoxDecoration(color: APP_WHITE_COLOR,borderRadius: BorderRadius.circular(5),border: Border.all(color: PRIMARY_COLOR,width: 0.2)),
                child: Column(
                  children: [
                    ListTile(

                      title: Text("Payout Deduction",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),),
                      subtitle: Text("28 Dec 2020 | 7:16 am",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                      trailing: Container(
                        width: 110,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(LineIcons.indianRupeeSign,color:APP_BLACK_COLOR ,size: 20,),
                                      Text("1233",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),)
                                    ],
                                  ),
                                  Text("Successful",style: AppFontStyle.buttonTextStyle(PRIMARY_COLOR),)

                                ],
                              ),
                            ),
                            Icon(Icons.keyboard_arrow_right_rounded,color:APP_BLACK_COLOR ,size: 30,)
                          ],
                        ),
                      ),
                    ),
                    Divider(thickness: 0.2,color: APP_BLACK_COLOR,),
                    ListTile(

                      title: Text("Razorpay",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),),
                      subtitle: Text("28 Dec 2020 | 7:16 am",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                      trailing: Container(
                        width: 110,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(LineIcons.indianRupeeSign,color:APP_BLACK_COLOR ,size: 20,),
                                      Text("1233",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),)
                                    ],
                                  ),
                                  Text("Successful",style: AppFontStyle.buttonTextStyle(PRIMARY_COLOR),)

                                ],
                              ),
                            ),
                            Icon(Icons.keyboard_arrow_right_rounded,color:APP_BLACK_COLOR ,size: 30,)
                          ],
                        ),
                      ),
                    ),
                    Divider(thickness: 0.2,color: APP_BLACK_COLOR,),
                    ListTile(

                      title: Text("Payout Deduction",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),),
                      subtitle: Text("28 Dec 2020 | 7:16 am",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                      trailing: Container(
                        width: 110,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(LineIcons.indianRupeeSign,color:APP_BLACK_COLOR ,size: 20,),
                                      Text("1233",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),)
                                    ],
                                  ),
                                  Text("Successful",style: AppFontStyle.buttonTextStyle(PRIMARY_COLOR),)

                                ],
                              ),
                            ),
                            Icon(Icons.keyboard_arrow_right_rounded,color:APP_BLACK_COLOR ,size: 30,)
                          ],
                        ),
                      ),
                    ),
                    Divider(thickness: 0.2,color: APP_BLACK_COLOR,),
                    ListTile(

                      title: Text("Razorpay",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),),
                      subtitle: Text("28 Dec 2020 | 7:16 am",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                      trailing: Container(
                        width: 110,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(LineIcons.indianRupeeSign,color:APP_BLACK_COLOR ,size: 20,),
                                      Text("1233",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),)
                                    ],
                                  ),
                                  Text("Successful",style: AppFontStyle.buttonTextStyle(PRIMARY_COLOR),)

                                ],
                              ),
                            ),
                            Icon(Icons.keyboard_arrow_right_rounded,color:APP_BLACK_COLOR ,size: 30,)
                          ],
                        ),
                      ),
                    ),
                    Divider(thickness: 0.2,color: APP_BLACK_COLOR,),
                    ListTile(

                      title: Text("Payout Deduction",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),),
                      subtitle: Text("28 Dec 2020 | 7:16 am",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                      trailing: Container(
                        width: 110,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(LineIcons.indianRupeeSign,color:APP_BLACK_COLOR ,size: 20,),
                                      Text("1233",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),)
                                    ],
                                  ),
                                  Text("Successful",style: AppFontStyle.buttonTextStyle(PRIMARY_COLOR),)

                                ],
                              ),
                            ),
                            Icon(Icons.keyboard_arrow_right_rounded,color:APP_BLACK_COLOR ,size: 30,)
                          ],
                        ),
                      ),
                    ),
                    Divider(thickness: 0.2,color: APP_BLACK_COLOR,),
                    ListTile(

                      title: Text("Razorpay",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),),
                      subtitle: Text("28 Dec 2020 | 7:16 am",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                      trailing: Container(
                        width: 110,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(LineIcons.indianRupeeSign,color:APP_BLACK_COLOR ,size: 20,),
                                      Text("1233",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),)
                                    ],
                                  ),
                                  Text("Successful",style: AppFontStyle.buttonTextStyle(PRIMARY_COLOR),)

                                ],
                              ),
                            ),
                            Icon(Icons.keyboard_arrow_right_rounded,color:APP_BLACK_COLOR ,size: 30,)
                          ],
                        ),
                      ),
                    ),
                    Divider(thickness: 0.2,color: APP_BLACK_COLOR,),
                    ListTile(

                      title: Text("Payout Deduction",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),),
                      subtitle: Text("28 Dec 2020 | 7:16 am",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                      trailing: Container(
                        width: 110,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(LineIcons.indianRupeeSign,color:APP_BLACK_COLOR ,size: 20,),
                                      Text("1233",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),)
                                    ],
                                  ),
                                  Text("Successful",style: AppFontStyle.buttonTextStyle(PRIMARY_COLOR),)

                                ],
                              ),
                            ),
                            Icon(Icons.keyboard_arrow_right_rounded,color:APP_BLACK_COLOR ,size: 30,)
                          ],
                        ),
                      ),
                    ),
                    Divider(thickness: 0.2,color: APP_BLACK_COLOR,),
                    ListTile(

                      title: Text("Razorpay",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),),
                      subtitle: Text("28 Dec 2020 | 7:16 am",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                      trailing: Container(
                        width: 110,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(LineIcons.indianRupeeSign,color:APP_BLACK_COLOR ,size: 20,),
                                      Text("1233",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),)
                                    ],
                                  ),
                                  Text("Successful",style: AppFontStyle.buttonTextStyle(PRIMARY_COLOR),)

                                ],
                              ),
                            ),
                            Icon(Icons.keyboard_arrow_right_rounded,color:APP_BLACK_COLOR ,size: 30,)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
