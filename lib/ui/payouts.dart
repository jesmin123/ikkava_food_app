import 'package:flutter/material.dart';
import 'package:ikkava_food_app/constants/app_font_style.dart';
import 'package:ikkava_food_app/constants/colors.dart';
import 'package:ikkava_food_app/constants/dimen.dart';
import 'package:ikkava_food_app/constants/strings.dart';
import 'package:ikkava_food_app/widgets/main_appBar.dart';
import 'package:ikkava_food_app/widgets/sub_app_bar.dart';
import 'package:line_icons/line_icons.dart';

class Payout extends StatefulWidget {
  @override
  _PayoutState createState() => _PayoutState();
}

class _PayoutState extends State<Payout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: APP_DRAWER_COLOR,
      appBar: MainAppBar(),
      body: SingleChildScrollView(
        child: DefaultTabController(
          initialIndex: 0,
          length: 3,
          child: Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Column(
              children: [
                MAppBar("Payouts"),
                SizedBox(height: LINE_HEIGHT),
                Container(
                  height: 40,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: APP_WHITE_COLOR,border: Border.all(color: APP_BLACK_COLOR,width: 0.2)),
                  child: TabBar(
                    indicator: BoxDecoration(borderRadius: BorderRadius.circular(50),color: PRIMARY_COLOR,),
                      unselectedLabelColor: APP_BLACK_COLOR,

                      tabs: [
                    Container(child: Text("Daily")),
                    Container(child: Text("Weakly")),
                    Container(child: Text("Monthly")),
                  ]),
                ),
                SizedBox(height: LINE_HEIGHT,),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: APP_WHITE_COLOR,border: Border.all(color: APP_BLACK_COLOR,width: 0.2) ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(5) ,topRight: Radius.circular(5)),
                        child : ListTile(
                          tileColor: PRIMARY_COLOR,
                          title: Text("Performance Of Today",style: AppFontStyle.titleAppBarStyle(APP_WHITE_COLOR),),
                          trailing: Container(
                            width: 80,
                            child: Row(
                              children: [
                                Text("See Trips",style: AppFontStyle.buttonTextStyle(APP_YELLOW_COLOR),),
                                Icon(Icons.keyboard_arrow_right,color:APP_YELLOW_COLOR ,)
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: LINE_HEIGHT),
                      SizedBox(height: LINE_HEIGHT),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 50,
                            width: 80,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all(color: PRIMARY_COLOR,width: 0.2),color: Colors.grey[200]),
                            child: Center(child: Text("11",style: AppFontStyle.boldTextStyle(APP_BLACK_COLOR),)),
                          ),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all(color: PRIMARY_COLOR,width: 0.2),color: Colors.grey[200]),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  Text("10:45",style: AppFontStyle.boldTextStyle(APP_BLACK_COLOR),),
                                  SizedBox(width: 2,),
                                  Text("hrs",style: AppFontStyle.boldTextStyle2(APP_BLACK_COLOR),),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 80,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all(color: PRIMARY_COLOR,width: 0.2),color: Colors.grey[200]),
                            child: Center(child: Text("12",style: AppFontStyle.boldTextStyle(APP_BLACK_COLOR),)),
                          ),
                        ],
                      ),
                      SizedBox(height: LINE_HEIGHT,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Trips",style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),),
                          Text("Login Hours",style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),),
                          Text("Orders",style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),)
                        ],
                      ),
                      SizedBox(height: LINE_HEIGHT,),

                    ],
                  ),
                ),
                SizedBox(height: LINE_HEIGHT,),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: APP_WHITE_COLOR,border: Border.all(color: APP_BLACK_COLOR,width: 0.2) ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(5) ,topRight: Radius.circular(5)),
                        child : ListTile(
                          tileColor: PRIMARY_COLOR,
                          title: Text("Earnings Of Today",style: AppFontStyle.titleAppBarStyle(APP_WHITE_COLOR),),
                          trailing: Container(
                            width: 90,
                            child: Row(
                              children: [
                                Icon(LineIcons.indianRupeeSign,color:APP_WHITE_COLOR ,size: 20,),
                                Text("1233",style: AppFontStyle.titleAppBarStyle(APP_WHITE_COLOR),)
                              ],
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Container(
                          height: 60,
                          child: ListTile(
                            horizontalTitleGap: 10,

                            leading: CircleAvatar(
                              backgroundColor: PRIMARY_COLOR,
                              radius: 25,
                            ),
                            title: Text("Order Pay",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),),
                            subtitle:Text("Earnings per Order",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),) ,
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
                      ),

                      Divider(color: APP_BLACK_COLOR,thickness: 0.2,),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Container(
                          height: 60,
                          child: ListTile(
                            horizontalTitleGap: 10,

                            leading: CircleAvatar(
                              backgroundColor: PRIMARY_COLOR,
                              radius: 25,
                            ),
                            title: Text("Target Pay",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),),
                            subtitle:Text("For reaching order per Target",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),) ,
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
                      ),





                    ],
                  ),
                ),
                SizedBox(height: LINE_HEIGHT,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text( "Learn about Payout Calculation",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                    Container(
                      child: Row(
                        children: [
                          Text("See Rate Card",style: AppFontStyle.buttonTextStyle(PRIMARY_COLOR),),
                          Icon(Icons.keyboard_arrow_right,color:PRIMARY_COLOR ,)
                        ],
                      ),
                    ),

                  ],
                ),
                SizedBox(height: LINE_HEIGHT,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
