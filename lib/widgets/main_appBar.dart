
import 'package:flutter/material.dart';
import 'package:ikkava_food_app/constants/app_font_style.dart';
import 'package:ikkava_food_app/constants/colors.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget{

  final double height = 70;


  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 4,

        backgroundColor: PRIMARY_COLOR,
        leading: Row(
          children: [
            SizedBox(width: 30,),
            Image(image: AssetImage("asset/geteasy.png")),
          ],
        ),
        leadingWidth: 100,
         actions: [
        Padding(
          padding: const EdgeInsets.only(top: 20,bottom: 8,right: 10),
          child: Container(

             decoration: BoxDecoration(shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(20),color: APP_WHITE_COLOR,),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 8),
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(shape: BoxShape.circle,color: APP_GREEN_COLOR),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text("Online",style: AppFontStyle.bodyTextStyle(PRIMARY_COLOR),),
                )
              ],
            ),
          ),
        ),
        SizedBox(width: 10,),
        Padding(
          padding: const EdgeInsets.only(top: 10,right: 15),
          child: Icon(Icons.notifications,color: APP_WHITE_COLOR,size: 30,),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);

}