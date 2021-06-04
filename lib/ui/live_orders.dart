import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ikkava_food_app/constants/app_font_style.dart';
import 'package:ikkava_food_app/constants/colors.dart';
import 'package:ikkava_food_app/constants/dimen.dart';
import 'package:ikkava_food_app/constants/strings.dart';
import 'package:ikkava_food_app/ui/order_taken1.dart';
import 'package:ikkava_food_app/widgets/main_appBar.dart';
import 'package:ikkava_food_app/widgets/sub_app_bar.dart';
import 'package:page_transition/page_transition.dart';
class LiveOrders extends StatefulWidget {
  @override
  _LiveOrdersState createState() => _LiveOrdersState();
}

class _LiveOrdersState extends State<LiveOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: APP_WHITE_COLOR,
      appBar: MainAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              AppBar(
              elevation: 0,
              centerTitle: true,
              title: Text(LIVE_ORDERS,style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR)),
              backgroundColor: APP_WHITE_COLOR,
              leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,), onPressed: ()=>{Navigator.pop(context,true)})
          ),
              Column(
              children: [
                SizedBox(height: LINE_HEIGHT),
              Container(
                decoration: BoxDecoration(shape: BoxShape.rectangle,border: Border.all(width: 1,color: PRIMARY_COLOR),
                borderRadius: BorderRadius.circular(10)),
                child: Padding(
              padding: const EdgeInsets.all(LINE_HEIGHT),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Shop Address"),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Icon(Icons.location_on,size: 30,color: PRIMARY_COLOR,),
                      SizedBox(width: 4,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Thai Restaurant, Metro Pillar No 47",style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),),
                          Text("MG Road kochi 601564",style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Text("User Address"),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Icon(Icons.location_on,size: 30,color: PRIMARY_COLOR,),
                      SizedBox(width: 4,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("House No 65,\n Muttathu Lane Kadavanthara",style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),),
                          Text("kochi 601564",style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FlatButton( onPressed: (){Navigator.push(context, PageTransition(child: Order1(), type: PageTransitionType.leftToRightWithFade));},minWidth: 150,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),color: APP_RED_COLOR, child: Text("Decline",style: TextStyle(color: APP_WHITE_COLOR),)),
                      FlatButton( onPressed: (){Navigator.push(context, PageTransition(child: Order1(), type: PageTransitionType.leftToRightWithFade));},minWidth: 150,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),color: APP_GREEN_COLOR, child: Text("Accept",style: TextStyle(color: APP_WHITE_COLOR),))
                    ],
                  )
                ],
              ),
                ),

              ),
              SizedBox(height: LINE_HEIGHT),
              Container(
                decoration: BoxDecoration(shape: BoxShape.rectangle,border: Border.all(width: 1,color: PRIMARY_COLOR),
                borderRadius: BorderRadius.circular(10)),
                child: Padding(
              padding: const EdgeInsets.all(LINE_HEIGHT),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Shop Address"),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Icon(Icons.location_on,size: 30,color: PRIMARY_COLOR,),
                      SizedBox(width: 4,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Thai Restaurant, Metro Pillar No 47",style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),),
                          Text("MG Road kochi 601564",style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Text("User Address"),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Icon(Icons.location_on,size: 30,color: PRIMARY_COLOR,),
                      SizedBox(width: 4,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("House No 65,\n Muttathu Lane Kadavanthara",style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),),
                          Text("kochi 601564",style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FlatButton( onPressed: (){},minWidth: 150,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),color: APP_RED_COLOR, child: Text("Decline",style: TextStyle(color: APP_WHITE_COLOR),)),
                      FlatButton( onPressed: (){},minWidth: 150,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),color: APP_GREEN_COLOR, child: Text("Accept",style: TextStyle(color: APP_WHITE_COLOR),))
                    ],
                  )]

              ),
                ),

              )
            ],
          ),
          ]

    )
        ),
      )
    );
  }
}
