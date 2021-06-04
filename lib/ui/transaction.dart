import 'package:flutter/material.dart';
import 'package:ikkava_food_app/constants/app_font_style.dart';
import 'package:ikkava_food_app/constants/colors.dart';
import 'package:ikkava_food_app/constants/dimen.dart';
import 'package:ikkava_food_app/widgets/main_appBar.dart';
import 'package:line_icons/line_icons.dart';

class Transaction extends StatefulWidget {
  @override
  _TransactionState createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  double _slider=10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      backgroundColor: APP_DRAWER_COLOR,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  decoration: BoxDecoration(color: APP_WHITE_COLOR,borderRadius: BorderRadius.circular(5),border: Border.all(color: PRIMARY_COLOR,width: 0.2)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: ListTile(
                          tileColor: APP_WHITE_COLOR,
                          title: Text("Availiable Limit",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),),
                          subtitle: Text("20 April 2021",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                          trailing: Container(
                            width: 90,
                            child: Row(
                              children: [
                                Icon(LineIcons.indianRupeeSign,color:APP_BLACK_COLOR ,size: 20,),
                                Text("1233",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Slider(value: _slider, onChanged: (val){
                        setState(() {
                        _slider=val;
                      });},min: 0,max: 100,activeColor: PRIMARY_COLOR,inactiveColor: APP_DRAWER_COLOR,),
                      SizedBox(height: LINE_HEIGHT,),

                    ],
                  ),
                ),
              ),
              SizedBox(height: LINE_HEIGHT,),
              Container(
                decoration: BoxDecoration(color: APP_WHITE_COLOR,borderRadius: BorderRadius.circular(5),border: Border.all(color: PRIMARY_COLOR,width: 0.2)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: ListTile(
                        tileColor: APP_WHITE_COLOR,
                        title: Text("Cash in Hand",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),),
                        subtitle: Text("Deposit cash when you reach the limit",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                        trailing: Container(
                          width: 90,
                          child: Row(
                            children: [
                              Icon(LineIcons.indianRupeeSign,color:APP_BLACK_COLOR ,size: 20,),
                              Text("1536",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Divider(thickness: 0.2,color: APP_BLACK_COLOR,),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: ListTile(
                        tileColor: APP_WHITE_COLOR,
                        title: Text("Availiable Balance",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),),
                        trailing: Container(
                          width: 90,
                          child: Row(
                            children: [
                              Icon(LineIcons.indianRupeeSign,color:APP_BLACK_COLOR ,size: 20,),
                              Text("100",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              ),
              SizedBox(height: LINE_HEIGHT,),
             FlatButton(
               color: APP_GREENN_COLOR,
               minWidth: MediaQuery.of(context).size.width*0.8,
               height: 60,
               child: Text("Pay by UPI",style: AppFontStyle.regularHeadingTextStyle(APP_WHITE_COLOR),),
               onPressed: (){},
                ),
              SizedBox(height: LINE_HEIGHT,),
              FlatButton(
                color: APP_GREENN_COLOR,
                minWidth: MediaQuery.of(context).size.width*0.8,
                height: 60,
                child: Text("Pay by Debit Card/ Netbanking",style: AppFontStyle.headingTextStyle(APP_WHITE_COLOR),),
                onPressed: (){},
              ),
              SizedBox(height: LINE_HEIGHT,),
              Text("Unpaid cash will be deducted from next payout",style: AppFontStyle.buttonTextStyle(PRIMARY_COLOR),),
              SizedBox(height: LINE_HEIGHT,),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: APP_WHITE_COLOR,border: Border.all(color: APP_BLACK_COLOR,width: 0.2) ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(5) ,topRight: Radius.circular(5)),
                      child : ListTile(
                        tileColor: PRIMARY_COLOR,
                        title: Text("Latest Transactions",style: AppFontStyle.titleAppBarStyle(APP_WHITE_COLOR),),
                        trailing: Container(
                          width: 80,
                          child: Row(
                            children: [
                              Text("View All",style: AppFontStyle.buttonTextStyle(APP_YELLOW_COLOR),),
                              Icon(Icons.keyboard_arrow_right,color:APP_YELLOW_COLOR ,)
                            ],
                          ),
                        ),
                      ),
                    ),

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

                  ],
                ),
              ),


            ],
          ),
        ),
      ),

    );
  }
}
