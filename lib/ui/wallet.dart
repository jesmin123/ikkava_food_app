import 'package:flutter/material.dart';
import 'package:ikkava_food_app/constants/app_font_style.dart';
import 'package:ikkava_food_app/constants/colors.dart';
import 'package:ikkava_food_app/constants/dimen.dart';
import 'package:ikkava_food_app/widgets/sub_app_bar.dart';

class Wallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: APP_WHITE_COLOR,
      appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text("Wallet",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR)),
          backgroundColor: APP_WHITE_COLOR,
          leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,), onPressed: ()=>{Navigator.pop(context,true)})
      ),
      body: Column(
        children: [
          SizedBox(height: LINE_HEIGHT,),
          SizedBox(height: LINE_HEIGHT,),
          SizedBox(height: LINE_HEIGHT,),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width*0.9,
              height: 250,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: PRIMARY_COLOR),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: LINE_HEIGHT,),
                  SizedBox(height: LINE_HEIGHT,),
                  Padding(
                    padding: const EdgeInsets.only(left: LINE_HEIGHT),
                    child: Text("JIBU RAJU",style: AppFontStyle.titleAppBarStyle(APP_WHITE_COLOR),),
                  ),
                  SizedBox(height: LINE_HEIGHT,),
                  Padding(
                    padding: const EdgeInsets.only(left: LINE_HEIGHT),
                    child: Text("EARNINGS: 2500",style: AppFontStyle.titleAppBarStyle(APP_WHITE_COLOR),),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
