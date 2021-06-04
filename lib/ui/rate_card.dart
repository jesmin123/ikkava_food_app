import 'package:flutter/material.dart';
import 'package:ikkava_food_app/constants/app_font_style.dart';
import 'package:ikkava_food_app/constants/colors.dart';
import 'package:ikkava_food_app/constants/dimen.dart';
import 'package:ikkava_food_app/constants/strings.dart';
import 'package:ikkava_food_app/widgets/main_appBar.dart';
import 'package:ikkava_food_app/widgets/sub_app_bar.dart';
import 'package:line_icons/line_icons.dart';
class RateCard extends StatefulWidget {
  @override
  _RateCardState createState() => _RateCardState();
}

class _RateCardState extends State<RateCard> {
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
              MAppBar(RATE_CARD),
              Container(
               decoration: BoxDecoration(color: APP_WHITE_COLOR,borderRadius: BorderRadius.circular(5),border: Border.all(color: PRIMARY_COLOR,width: 0.2)),
                child: Column(
                  children: [
                    ClipRRect(
                      child: ListTile(
                        horizontalTitleGap: 10,
                        tileColor: Colors.grey[200],

                        leading: CircleAvatar(
                          backgroundColor: PRIMARY_COLOR,
                          radius: 25,
                        ),
                        title: Text("Order Pay",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),),
                        subtitle:Text("Earnings per Order",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),) ,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    Container(
                       height: 60,
                      child: ListTile(

                        title: Text("Total Distance Pay",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),),

                        subtitle: Text("For total distance travelled over 7.0 kms",style: AppFontStyle.labelStyle(APP_BLACK_COLOR),),
                        trailing: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Container(
                            width: 80,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.add,size: 20,color: APP_BLACK_COLOR,),
                                    Icon(LineIcons.indianRupeeSign,size: 18,color: APP_BLACK_COLOR,),
                                    Text("12",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),)
                                  ],
                                ),
                                Text("per km",style: AppFontStyle.labelStyle(APP_BLACK_COLOR),)
                              ],
                            ),
                          ),
                        ),

                      ),
                    ),
                    Divider(color: APP_BLACK_COLOR,thickness: 0.2,endIndent: 10,indent: 10,),
                    Container(
                      height: 60,
                      child: ListTile(

                        title: Text("Order Readytime Pay",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),),
                        subtitle: Text("wait time at restaurant after 3 mins",style: AppFontStyle.labelStyle(APP_BLACK_COLOR),),
                        trailing: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Container(
                            width: 80,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.add,size: 20,color: APP_BLACK_COLOR,),
                                    Icon(LineIcons.indianRupeeSign,size: 18,color: APP_BLACK_COLOR,),
                                    Text("16",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),)
                                  ],
                                ),
                                Text("per min",style: AppFontStyle.labelStyle(APP_BLACK_COLOR),)
                              ],
                            ),
                          ),
                        ),

                      ),
                    ),
                    Divider(color: APP_BLACK_COLOR,thickness: 0.2,endIndent: 10,indent: 10,),
                    Container(
                      height: 60,
                      child: ListTile(

                        title: Text("Pickup Pay",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),),
                        subtitle: Text("For successful pickup",style: AppFontStyle.labelStyle(APP_BLACK_COLOR),),
                        trailing: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Container(
                            width: 80,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.add,size: 20,color: APP_BLACK_COLOR,),
                                    Icon(LineIcons.indianRupeeSign,size: 18,color: APP_BLACK_COLOR,),
                                    Text("20",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),)
                                  ],
                                ),
                                Text("per pickup",style: AppFontStyle.labelStyle(APP_BLACK_COLOR),)
                              ],
                            ),
                          ),
                        ),

                      ),
                    ),
                    Divider(color: APP_BLACK_COLOR,thickness: 0.2,endIndent: 10,indent: 10,),
                    Container(
                      height: 60,
                      child: ListTile(

                        title: Text("Drop Pay",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),),
                        subtitle: Text("For successful drop",style: AppFontStyle.labelStyle(APP_BLACK_COLOR),),
                        trailing: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Container(
                            width: 80,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.add,size: 20,color: APP_BLACK_COLOR,),
                                    Icon(LineIcons.indianRupeeSign,size: 18,color: APP_BLACK_COLOR,),
                                    Text("15",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),)
                                  ],
                                ),
                                Text("per drop",style: AppFontStyle.labelStyle(APP_BLACK_COLOR),)
                              ],
                            ),
                          ),
                        ),

                      ),
                    ),
                    Divider(color: APP_BLACK_COLOR,thickness: 0.2,endIndent: 10,indent: 10,),
                    Container(
                      height: 60,
                      child: ListTile(

                        title: Text("Minimum Base Pay",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),),
                        subtitle: Text("Guarantee pay for trip",style: AppFontStyle.labelStyle(APP_BLACK_COLOR),),
                        trailing: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Container(
                            width: 80,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.add,size: 20,color: APP_BLACK_COLOR,),
                                    Icon(LineIcons.indianRupeeSign,size: 18,color: APP_BLACK_COLOR,),
                                    Text("25",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),)
                                  ],
                                ),
                                Text("per trip",style: AppFontStyle.labelStyle(APP_BLACK_COLOR),)
                              ],
                            ),
                          ),
                        ),

                      ),
                    ),
                    SizedBox(height: 4,)
                  ],
                ),
          ),
              SizedBox(height: LINE_HEIGHT,),
              Container(
                decoration: BoxDecoration(color: APP_WHITE_COLOR,borderRadius: BorderRadius.circular(5),border: Border.all(color: PRIMARY_COLOR,width: 0.2)),
                child: Column(
                  children: [
                    ClipRRect(
                      child: ListTile(
                        horizontalTitleGap: 10,
                        tileColor: Colors.grey[200],

                        leading: CircleAvatar(
                          backgroundColor: PRIMARY_COLOR,
                          radius: 25,
                        ),
                        title: Text("Surge Pay",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),),
                        subtitle:Text("Extra pay during Certain Time slots",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),) ,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    Container(
                      height: 60,
                      child: ListTile(

                        title: Text("Rain",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),),

                        subtitle: Text("8:00am-10am",style: AppFontStyle.labelStyle(APP_BLACK_COLOR),),
                        trailing: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Container(
                            width: 110,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Upto",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),),
                                    Icon(LineIcons.indianRupeeSign,size: 18,color: APP_BLACK_COLOR,),
                                    Text("1350",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),)
                                  ],
                                ),
                                Text("per drop",style: AppFontStyle.labelStyle(APP_BLACK_COLOR),)
                              ],
                            ),
                          ),
                        ),

                      ),
                    ),
                    Divider(color: APP_BLACK_COLOR,thickness: 0.2,endIndent: 10,indent: 10,),
                    Container(
                      height: 60,
                      child: ListTile(

                        title: Text("Incentive",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),),
                        trailing: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Container(
                            width: 110,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Upto",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),),
                                    Icon(LineIcons.indianRupeeSign,size: 18,color: APP_BLACK_COLOR,),
                                    Text("7000",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),)
                                  ],
                                ),
                                Text("per drop",style: AppFontStyle.labelStyle(APP_BLACK_COLOR),)
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
              Container(
                decoration: BoxDecoration(color: APP_WHITE_COLOR,borderRadius: BorderRadius.circular(5),border: Border.all(color: PRIMARY_COLOR,width: 0.2)),
                child: Column(
                  children: [
                    ClipRRect(
                      child: ListTile(
                        horizontalTitleGap: 10,
                        tileColor: Colors.grey[200],

                        leading: CircleAvatar(
                          backgroundColor: PRIMARY_COLOR,
                          radius: 25,
                        ),
                        title: Text("Login Hours Guarentee ",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),),
                        subtitle:Text("min guarenteed pay for login hours",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),) ,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    Container(
                      height: 60,
                      child: ListTile(

                        title: Text("Daily Guarentee Pay",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),),

                        subtitle: Text("for min daily login hours",style: AppFontStyle.labelStyle(APP_BLACK_COLOR),),
                        trailing: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Container(
                            decoration: BoxDecoration(color: APP_DRAWER_COLOR,borderRadius: BorderRadius.circular(25)),
                            width: 120,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 6),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Upto",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),),
                                  Icon(LineIcons.indianRupeeSign,size: 18,color: APP_BLACK_COLOR,),
                                  Text("1350",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),)
                                ],
                              ),
                            ),
                          ),
                        ),

                      ),
                    ),
                    Divider(color: APP_BLACK_COLOR,thickness: 0.2,endIndent: 10,indent: 10,),
                    Container(
                      height: 60,
                      child: ListTile(

                        title: Text("Weekly Guarentee Pay",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),),
                        subtitle: Text("for min weekly login hours",style: AppFontStyle.labelStyle(APP_BLACK_COLOR),),
                        trailing: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Container(
                            decoration: BoxDecoration(color: APP_DRAWER_COLOR,borderRadius: BorderRadius.circular(25)),
                            width: 120,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 6),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Upto",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),),
                                  Icon(LineIcons.indianRupeeSign,size: 18,color: APP_BLACK_COLOR,),
                                  Text("7000",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),)
                                ],
                              ),
                            ),
                          ),
                        ),

                      ),
                    ),
                    SizedBox(height: 10,)
                  ],
                ),
              ),
              SizedBox(height: LINE_HEIGHT,)
          ]
    ),
        ),
      )
    );
  }
}
