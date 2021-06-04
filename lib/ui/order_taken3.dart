import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ikkava_food_app/constants/app_font_style.dart';
import 'package:ikkava_food_app/constants/colors.dart';
import 'package:ikkava_food_app/constants/dimen.dart';
import 'package:ikkava_food_app/widgets/main_appBar.dart';

class Order3 extends StatefulWidget {
  @override
  _Order3State createState() => _Order3State();
}

class _Order3State extends State<Order3> {
  FToast fToast;
  @override

  void initState(){
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MainAppBar(),
        body: Stack(
          children: [
            SingleChildScrollView(child: Image.asset("asset/map2.jpg")),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: MediaQuery.of(context).size.height*0.41,
                  color: APP_WHITE_COLOR,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ListTile(
                          dense: true,
                          title: Row(
                            children: [
                              Text("Order ID: ", style: AppFontStyle.labelStyle(APP_BLACK_COLOR),),
                              Text("#Order25765",
                                style: AppFontStyle.regularTextStyle(APP_BLACK_COLOR),)
                            ],
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Icon(Icons.more_horiz,size: 30,color: APP_BLACK_COLOR,),
                          ),
                        ),
                        Divider(thickness: 2,indent: 8,endIndent: 8,),
                        ListTile(
                          dense: true,
                          title: Row(
                            children: [
                              Text("Customer Name: ", style: AppFontStyle.labelStyle(
                                  APP_BLACK_COLOR),),
                              Text("Jibu Raju",
                                style: AppFontStyle.regularTextStyle(APP_BLACK_COLOR),)
                            ],
                          ),
                          trailing: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: PRIMARY_COLOR),
                            width: 100,
                            height: 25,
                            child: Center(
                              child: Text("Call Customer",style: AppFontStyle.labelStyle(APP_WHITE_COLOR),),
                            ),
                          ),
                        ),
                        Divider(thickness: 2,indent: 8,endIndent: 8,),
                        ListTile(
                          dense: true,
                          title: Row(
                            children: [
                              Text("Food Checklist: ", style: AppFontStyle.labelStyle(
                                  APP_BLACK_COLOR),),
                              Text("Parotta x 5, Beef Fry x 1",
                                style: AppFontStyle.regularTextStyle(APP_BLACK_COLOR),)
                            ],
                          ),
                        ),
                        Divider(thickness: 2,indent: 8,endIndent: 8,),
                        ListTile(
                          dense: true,
                          title: Row(
                            children: [
                              Text("Total Amount: ", style: AppFontStyle.labelStyle(
                                  APP_BLACK_COLOR),),
                              Text("100.00",
                                style: AppFontStyle.regularTextStyle(APP_BLACK_COLOR),)
                            ],
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(right: 4),
                            child: Container(
                              width: 140,
                              child: Row(
                                children: [
                                  Text("Payment Method: ", style: AppFontStyle.labelStyle(
                                      APP_BLACK_COLOR),),
                                  Text("COD",
                                    style: AppFontStyle.regularTextStyle(APP_BLACK_COLOR),)
                                ],
                              ),
                            ),
                          ),
                        ),
                        Divider(thickness: 2,indent: 8,endIndent: 8,),
                        FlatButton(onPressed: (){_showToast();},shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),),
                            minWidth: MediaQuery.of(context).size.width*0.35,
                            color: APP_GREEN_COLOR,
                            child: Text("Order Completed",style: AppFontStyle.titleAppBarStyle(APP_WHITE_COLOR),))
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        )
    );
  }
   _showToast(){
    //TO DO AlertDialog
     Widget toast = Container(
       height: 250,
       width: MediaQuery.of(context).size.width*0.9,
       decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: APP_WHITE_COLOR),
       child: Center(
         child: Padding(
           padding: const EdgeInsets.symmetric(vertical: LINE_HEIGHT*2),
           child: Column(
             children: [
               Image.asset("asset/toast.png"),
               SizedBox(height: 10,),
               Text("Delivery Completed",style: AppFontStyle.boldTextStyle(PRIMARY_COLOR),)
             ],
           ),
         ),
       ),
     );
     fToast.showToast(
       child: toast,
       gravity: ToastGravity.CENTER,
       toastDuration: Duration(seconds: 2),
     );


  }
}