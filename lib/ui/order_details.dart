import 'package:flutter/material.dart';
import 'package:ikkava_food_app/constants/app_font_style.dart';
import 'package:ikkava_food_app/constants/colors.dart';
import 'package:ikkava_food_app/constants/dimen.dart';
import 'package:ikkava_food_app/constants/strings.dart';
import 'package:ikkava_food_app/widgets/main_appBar.dart';
import 'package:ikkava_food_app/widgets/sub_app_bar.dart';
import 'package:line_icons/line_icons.dart';

class OrderDetails extends StatefulWidget {
  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      backgroundColor: APP_DRAWER_COLOR,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              MAppBar(ORDER_DETAILS),
              SizedBox(height: LINE_HEIGHT,),
              Align(
                alignment: Alignment.topLeft,
                  child: Text("Order ID : 1556464",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),)),
              SizedBox(height: LINE_HEIGHT,),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(width: 0.2)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: ListTile(
                  shape: Border.all(width: 0.2,color: APP_BLACK_COLOR),
                  tileColor: APP_WHITE_COLOR,
                  title: Text("Order Pay",style: AppFontStyle.titleBarStyle(APP_BLACK_COLOR),),
                  trailing: Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Text("₹62.25"),
                      )

                    ),
              ),
            ),
              SizedBox(height: LINE_HEIGHT,),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Pickup",style: AppFontStyle.titleBarStyle(APP_BLACK_COLOR),)),
              SizedBox(height: LINE_HEIGHT*0.5,),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(width: 0.2)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: ExpansionTile(
                    backgroundColor: APP_WHITE_COLOR,
                      title: Text("Hotel Paradise",style: AppFontStyle.titleBarStyle(APP_BLACK_COLOR),),
                     subtitle: Text("Kanjirappally",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                    trailing: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.blue,
                    ),

                    children: [
                      ListTile(
                        dense: true,
                        title: Text("Reached Restaurant",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                        trailing: Text("6:49 pm",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                      ),
                      ListTile(
                        dense: true,
                        title: Text("Distance Travelled",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                        trailing: Text("7.6 km",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                      ),
                      ListTile(
                        dense: true,
                        title: Text("Order-Ready-Time",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                        trailing: Text("8:17 mins",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                      )
                    ],
                      )

                  ),
                ),
              SizedBox(height: LINE_HEIGHT,),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Drop",style: AppFontStyle.titleBarStyle(APP_BLACK_COLOR),)),
              SizedBox(height: LINE_HEIGHT*0.5,),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(width: 0.2)),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: ExpansionTile(
                      backgroundColor: APP_WHITE_COLOR,
                      title: Text("Ajmal Asad",style: AppFontStyle.titleBarStyle(APP_BLACK_COLOR),),
                      subtitle: Text("Kaloor",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                      trailing: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.blue,
                      ),

                      children: [
                        ListTile(
                          dense: true,
                          title: Text("Order Picked",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                          trailing: Text("6:49 pm",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                        ),
                        ListTile(
                          dense: true,
                          title: Text("Order Delivered",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                          trailing: Text("6:59 pm",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                        ),
                        ListTile(
                          dense: true,
                          title: Text("Distance Travelled",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                          trailing: Text("8.7 km",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                        )
                      ],
                    )

                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
