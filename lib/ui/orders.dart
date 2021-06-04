import 'package:flutter/material.dart';
import 'package:ikkava_food_app/constants/app_font_style.dart';
import 'package:ikkava_food_app/constants/colors.dart';
import 'package:ikkava_food_app/constants/dimen.dart';
import 'package:ikkava_food_app/constants/strings.dart';
import 'package:ikkava_food_app/widgets/main_appBar.dart';
import 'package:ikkava_food_app/widgets/sub_app_bar.dart';
import 'package:line_icons/line_icons.dart';
class Orders extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      backgroundColor: APP_DRAWER_COLOR,
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(10),
        child: DefaultTabController(
          length: 3,
          initialIndex: 0,
          child: Column(
            children: [
              MAppBar(ORDERS),
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
              SizedBox(height: LINE_HEIGHT),
              Card(
                shape: RoundedRectangleBorder(side: BorderSide(width: 0.2),borderRadius: BorderRadius.circular(10 )),
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Hotel Paradise",style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),),
                      subtitle: Row(
                        children: [
                          Text("12:54 pm",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                          SizedBox(width: 4,),
                          Container(
                            color: APP_RED_COLOR,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text("Cancelled",style:AppFontStyle.buttonTextStyle(APP_WHITE_COLOR),),
                            ),
                          ),
                          SizedBox(width: 4,),
                          Container(
                            color: APP_RED_COLOR,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text("Penalty",style:AppFontStyle.buttonTextStyle(APP_WHITE_COLOR),),
                            ),
                          )
                        ],
                      ),
                      trailing: Container(
                      width: 150,
                        child: Row(
                          children: [
                            Text("7.85 km . ",style: AppFontStyle.boldTextStyle2(APP_BLACK_COLOR),),
                            Icon(LineIcons.indianRupeeSign,color: APP_BLACK_COLOR,size: 20,),
                            Text("62.25",style: AppFontStyle.boldTextStyle2(APP_BLACK_COLOR))
                          ],
                        ),


                    ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,bottom: 15),
                      child: Row(
                        children: [
                          Text("Cash Collected:"),
                          Icon(LineIcons.indianRupeeSign,color: APP_BLACK_COLOR,size: 15,),
                          Text("62")
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(side: BorderSide(width: 0.2),borderRadius: BorderRadius.circular(10 )),
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Hotel Paradise",style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),),
                      subtitle: Row(
                        children: [
                          Text("12:54 pm",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                          SizedBox(width: 4,),
                          Container(
                            color: APP_RED_COLOR,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text("Cancelled",style:AppFontStyle.buttonTextStyle(APP_WHITE_COLOR),),
                            ),
                          ),
                          SizedBox(width: 4,),
                          Container(
                            color: APP_RED_COLOR,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text("Penalty",style:AppFontStyle.buttonTextStyle(APP_WHITE_COLOR),),
                            ),
                          )
                        ],
                      ),
                      trailing: Container(
                        width: 150,
                        child: Row(
                          children: [
                            Text("7.85 km . ",style: AppFontStyle.boldTextStyle2(APP_BLACK_COLOR),),
                            Icon(LineIcons.indianRupeeSign,color: APP_BLACK_COLOR,size: 20,),
                            Text("62.25",style: AppFontStyle.boldTextStyle2(APP_BLACK_COLOR))
                          ],
                        ),


                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,bottom: 15),
                      child: Row(
                        children: [
                          Text("Cash Collected:"),
                          Icon(LineIcons.indianRupeeSign,color: APP_BLACK_COLOR,size: 15,),
                          Text("62")
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(side: BorderSide(width: 0.2),borderRadius: BorderRadius.circular(10 )),
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Hotel Paradise",style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),),
                      subtitle: Row(
                        children: [
                          Text("12:54 pm",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                          SizedBox(width: 4,),
                          Container(
                            color: APP_RED_COLOR,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text("Cancelled",style:AppFontStyle.buttonTextStyle(APP_WHITE_COLOR),),
                            ),
                          ),
                          SizedBox(width: 4,),
                          Container(
                            color: APP_RED_COLOR,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text("Penalty",style:AppFontStyle.buttonTextStyle(APP_WHITE_COLOR),),
                            ),
                          )
                        ],
                      ),
                      trailing: Container(
                        width: 150,
                        child: Row(
                          children: [
                            Text("7.85 km . ",style: AppFontStyle.boldTextStyle2(APP_BLACK_COLOR),),
                            Icon(LineIcons.indianRupeeSign,color: APP_BLACK_COLOR,size: 20,),
                            Text("62.25",style: AppFontStyle.boldTextStyle2(APP_BLACK_COLOR))
                          ],
                        ),


                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,bottom: 15),
                      child: Row(
                        children: [
                          Text("Cash Collected:"),
                          Icon(LineIcons.indianRupeeSign,color: APP_BLACK_COLOR,size: 15,),
                          Text("62")
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(side: BorderSide(width: 0.2),borderRadius: BorderRadius.circular(10 )),
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Hotel Paradise",style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),),
                      subtitle: Row(
                        children: [
                          Text("12:54 pm",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                          SizedBox(width: 4,),
                          Container(
                            color: APP_RED_COLOR,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text("Cancelled",style:AppFontStyle.buttonTextStyle(APP_WHITE_COLOR),),
                            ),
                          ),
                          SizedBox(width: 4,),
                          Container(
                            color: APP_RED_COLOR,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text("Penalty",style:AppFontStyle.buttonTextStyle(APP_WHITE_COLOR),),
                            ),
                          )
                        ],
                      ),
                      trailing: Container(
                        width: 150,
                        child: Row(
                          children: [
                            Text("7.85 km . ",style: AppFontStyle.boldTextStyle2(APP_BLACK_COLOR),),
                            Icon(LineIcons.indianRupeeSign,color: APP_BLACK_COLOR,size: 20,),
                            Text("62.25",style: AppFontStyle.boldTextStyle2(APP_BLACK_COLOR))
                          ],
                        ),


                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,bottom: 15),
                      child: Row(
                        children: [
                          Text("Cash Collected:"),
                          Icon(LineIcons.indianRupeeSign,color: APP_BLACK_COLOR,size: 15,),
                          Text("62")
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(side: BorderSide(width: 0.2),borderRadius: BorderRadius.circular(10 )),
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Hotel Paradise",style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),),
                      subtitle: Row(
                        children: [
                          Text("12:54 pm",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                          SizedBox(width: 4,),
                          Container(
                            color: APP_RED_COLOR,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text("Cancelled",style:AppFontStyle.buttonTextStyle(APP_WHITE_COLOR),),
                            ),
                          ),
                          SizedBox(width: 4,),
                          Container(
                            color: APP_RED_COLOR,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text("Penalty",style:AppFontStyle.buttonTextStyle(APP_WHITE_COLOR),),
                            ),
                          )
                        ],
                      ),
                      trailing: Container(
                        width: 150,
                        child: Row(
                          children: [
                            Text("7.85 km . ",style: AppFontStyle.boldTextStyle2(APP_BLACK_COLOR),),
                            Icon(LineIcons.indianRupeeSign,color: APP_BLACK_COLOR,size: 20,),
                            Text("62.25",style: AppFontStyle.boldTextStyle2(APP_BLACK_COLOR))
                          ],
                        ),


                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,bottom: 15),
                      child: Row(
                        children: [
                          Text("Cash Collected:"),
                          Icon(LineIcons.indianRupeeSign,color: APP_BLACK_COLOR,size: 15,),
                          Text("62")
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(side: BorderSide(width: 0.2),borderRadius: BorderRadius.circular(10 )),
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Hotel Paradise",style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),),
                      subtitle: Row(
                        children: [
                          Text("12:54 pm",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                          SizedBox(width: 4,),
                          Container(
                            color: APP_RED_COLOR,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text("Cancelled",style:AppFontStyle.buttonTextStyle(APP_WHITE_COLOR),),
                            ),
                          ),
                          SizedBox(width: 4,),
                          Container(
                            color: APP_RED_COLOR,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text("Penalty",style:AppFontStyle.buttonTextStyle(APP_WHITE_COLOR),),
                            ),
                          )
                        ],
                      ),
                      trailing: Container(
                        width: 150,
                        child: Row(
                          children: [
                            Text("7.85 km . ",style: AppFontStyle.boldTextStyle2(APP_BLACK_COLOR),),
                            Icon(LineIcons.indianRupeeSign,color: APP_BLACK_COLOR,size: 20,),
                            Text("62.25",style: AppFontStyle.boldTextStyle2(APP_BLACK_COLOR))
                          ],
                        ),


                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,bottom: 15),
                      child: Row(
                        children: [
                          Text("Cash Collected:"),
                          Icon(LineIcons.indianRupeeSign,color: APP_BLACK_COLOR,size: 15,),
                          Text("62")
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        ),
      ),

    );
  }
}
