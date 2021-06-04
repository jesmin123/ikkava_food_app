import 'package:flutter/material.dart';
import 'package:ikkava_food_app/constants/app_font_style.dart';
import 'package:ikkava_food_app/constants/colors.dart';
import 'package:ikkava_food_app/constants/dimen.dart';
import 'package:ikkava_food_app/constants/strings.dart';
import 'package:ikkava_food_app/ui/agreement.dart';
import 'package:ikkava_food_app/ui/order_details.dart';
import 'package:ikkava_food_app/ui/orders.dart';
import 'package:ikkava_food_app/ui/payouts.dart';
import 'package:ikkava_food_app/ui/preferred_localities.dart';
import 'package:ikkava_food_app/ui/profile.dart';
import 'package:ikkava_food_app/ui/rate_card.dart';
import 'package:ikkava_food_app/ui/session_history.dart';
import 'package:ikkava_food_app/ui/transaction.dart';
import 'package:ikkava_food_app/ui/transaction_history.dart';
import 'package:ikkava_food_app/ui/wallet.dart';
import 'package:ikkava_food_app/widgets/sub_app_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:page_transition/page_transition.dart';

class MDrawer extends StatefulWidget {
  @override
  _MDrawerState createState() => _MDrawerState();
}

class _MDrawerState extends State<MDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(

          child: SingleChildScrollView(
            child: Container(
              color: APP_DRAWER_COLOR,
              child: Column(
        children: [
                  AppBar(
                  elevation: 0,
                  centerTitle: true,
                  title: Text("Profile",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR)),
                  backgroundColor:APP_DRAWER_COLOR,
                  leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,), onPressed: ()=>{Navigator.pop(context,true)})
                      ),
                SizedBox(height: LINE_HEIGHT,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all(color: PRIMARY_COLOR,width: 1),color: APP_WHITE_COLOR),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: ListTile(

                            leading:  Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: ClipRRect(

                                  child: Image.asset("asset/pro.jpg"),borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            title: Text("Jibu Raju",style: AppFontStyle.headingTextStyle(PRIMARY_COLOR),),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 4,),
                                Text("IKK14544D",style: AppFontStyle.labelStyle(APP_BLACK_COLOR)),
                                SizedBox(height: 4,),
                                Container(
                                  decoration: BoxDecoration(shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(20),color: APP_GREEN_COLOR,),
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 10,left: 10),
                                    child: Text("Verify",style: AppFontStyle.bodyTextStyle(APP_WHITE_COLOR),),
                                  ),
                                ),

                              ],
                            ),

                            trailing: Padding(
                              padding: const EdgeInsets.only(right: 4),
                              child: Container(
                                width: 80,
                                child: Row(
                                  children: [
                                    Text("4.3",style: AppFontStyle.boldTextStyle(APP_BLACK_COLOR),),
                                    SizedBox(width: 4,),
                                    Icon(Icons.star,size: 25,color: Colors.yellow,)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: LINE_HEIGHT),
                          child: FlatButton(onPressed: (){Navigator.push(context, PageTransition(child: Profile(), type: PageTransitionType.leftToRightWithFade));},
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
                              color: PRIMARY_COLOR,
                              minWidth: MediaQuery.of(context).size.width*0.5,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: Text("Manage Profile",style: AppFontStyle.headingTextStyle(APP_WHITE_COLOR,),),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: LINE_HEIGHT,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all(color: PRIMARY_COLOR,width: 1),color: APP_WHITE_COLOR),
                    child: Column(
                      children: [
                        SizedBox(height: 5,),
                        Container(
                          height: 40,
                          child: ListTile(
                            dense: true,
                            horizontalTitleGap: 0,
                            onTap: (){Navigator.push(context, PageTransition(child: RateCard(), type: PageTransitionType.leftToRightWithFade));},
                            leading: Icon(Icons.rate_review_outlined,color: PRIMARY_COLOR,size: 20,),
                             title: Text(RATE_CARD),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                        Divider(indent: 10,endIndent: 10,color: APP_BLACK_COLOR,thickness: 0.2,),
                        Container(
                          height: 40,
                          child: ListTile(
                            dense: true,

                            horizontalTitleGap: 0,
                            onTap: (){Navigator.push(context, PageTransition(child: Payout(), type: PageTransitionType.leftToRightWithFade));},
                            leading: Icon(Icons.person_outline,color: PRIMARY_COLOR,size: 20,),
                            title: Text("Benefits"),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                        Divider(indent: 10,endIndent: 10,color: APP_BLACK_COLOR,thickness: 0.2,),
                        Container(
                          height: 40,
                          child: ListTile(
                            dense: true,
                            horizontalTitleGap: 0,
                            onTap: (){Navigator.push(context, PageTransition(child: Transaction(), type: PageTransitionType.leftToRightWithFade));},
                            leading: Icon(Icons.room_preferences_outlined,color: PRIMARY_COLOR,size: 20,),
                            title: Text("Preferences"),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                        Divider(indent: 10,endIndent: 10,color: APP_BLACK_COLOR,thickness: 0.2,),
                        Container(

                          child: ExpansionTile(
                            leading: Icon(Icons.history,color: PRIMARY_COLOR,size: 20,),
                            title: Text("History",style: TextStyle(color: APP_BLACK_COLOR),),
                            childrenPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            expandedCrossAxisAlignment: CrossAxisAlignment.start,
                            trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey[500],),
                            children: [
                              GestureDetector(
                                onTap: (){Navigator.push(context, PageTransition(child: TransactionHistory(), type: PageTransitionType.leftToRightWithFade));},
                                  child: Row(
                                children: [
                                  Text("Trip History"),
                                  Icon(Icons.keyboard_arrow_right_rounded)
                                ],
                              )),
                              SizedBox(height: 10,),
                              GestureDetector(
                                  onTap: (){Navigator.push(context, PageTransition(child: SessionHistory(), type: PageTransitionType.leftToRightWithFade));},
                                  child: Row(
                                children: [
                                  Text("Session History"),
                                  Icon(Icons.keyboard_arrow_right_rounded)
                                ],
                              ))
                            ],
                          ),
                        ),
                        Divider(indent: 10,endIndent: 10,color: APP_BLACK_COLOR,thickness: 0.2,),
                        Container(
                          height: 40,
                          child: ListTile(
                            dense: true,
                            horizontalTitleGap: 0,
                            onTap: (){Navigator.push(context, PageTransition(child: Orders(), type: PageTransitionType.leftToRightWithFade));},
                            leading: Icon(Icons.model_training,color: PRIMARY_COLOR,size: 20,),
                            title: Text("Training"),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                        Divider(indent: 10,endIndent: 10,color: APP_BLACK_COLOR,thickness: 0.2,),
                        Container(
                          height: 40,
                          child: ListTile(
                            dense: true,
                            horizontalTitleGap: 0,
                            onTap: (){Navigator.push(context, PageTransition(child:Locality(), type: PageTransitionType.leftToRightWithFade));},
                            leading: Icon(Icons.account_balance,color: PRIMARY_COLOR,size: 20,),
                            title: Text("Bank Account Details"),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                        Divider(indent: 10,endIndent: 10,color: APP_BLACK_COLOR,thickness: 0.2,),
                        Container(
                          height: 40,
                          child: ListTile(
                            dense: true,
                            horizontalTitleGap: 0,
                            onTap: (){Navigator.push(context, PageTransition(child: OrderDetails(), type: PageTransitionType.leftToRightWithFade));},
                            leading: Icon(Icons.star_rate_outlined,color: PRIMARY_COLOR,size: 20,),
                            title: Text("My Ratings"),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                        Divider(indent: 10,endIndent: 10,color: APP_BLACK_COLOR,thickness: 0.2,),
                        Container(
                          height: 40,
                          child: ListTile(
                            dense: true,
                            horizontalTitleGap: 0,
                            onTap: (){Navigator.push(context, PageTransition(child:Agreement(), type: PageTransitionType.leftToRightWithFade));},
                            leading: Icon(Icons.notes_outlined,color: PRIMARY_COLOR,size: 20,),
                            title: Text("Agreement"),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                        Divider(indent: 10,endIndent: 10,color: APP_BLACK_COLOR,thickness: 0.2,),
                        Container(
                          height: 40,
                          child: ListTile(
                            dense: true,
                            horizontalTitleGap: 0,
                            onTap: (){Navigator.push(context, PageTransition(child: Wallet(), type: PageTransitionType.leftToRightWithFade));},
                            leading: Icon(Icons.account_balance_wallet_outlined,color: PRIMARY_COLOR,size: 20,),
                            title: Text(WALLET),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                        Divider(indent: 10,endIndent: 10,color: APP_BLACK_COLOR,thickness: 0.2,),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: LINE_HEIGHT),
                          child: Container(
                            width: MediaQuery.of(context).size.width*0.5,
                            child: FlatButton(onPressed: (){},
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                                color: PRIMARY_COLOR,
                                minWidth: MediaQuery.of(context).size.width*0.5,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.power_settings_new,color: APP_WHITE_COLOR,),
                                      Text("Log Out",style: AppFontStyle.headingTextStyle(APP_WHITE_COLOR,),),
                                    ],
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),

                  ),
                ),
                  SizedBox(height: LINE_HEIGHT,),

              ],
      ),
            ),
          )),
    );
  }
}
