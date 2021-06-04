
import 'package:flutter/material.dart';
import 'package:ikkava_food_app/constants/app_font_style.dart';
import 'package:ikkava_food_app/constants/colors.dart';
import 'package:ikkava_food_app/constants/dimen.dart';
import 'package:ikkava_food_app/constants/strings.dart';
import 'package:ikkava_food_app/ui/Home_page.dart';
import 'package:ikkava_food_app/widgets/textField_container.dart';
import 'package:page_transition/page_transition.dart';

class Login2 extends StatefulWidget {
  @override
  _Login2State createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("asset/geteasy.png",height: 200,alignment: Alignment.topCenter,),
          TextFieldContainer(
            child: TextField(
              cursorColor: APP_BLACK_COLOR,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                icon: Icon(Icons.phone,color: APP_BLACK_COLOR,),
                hintText: "Phone no",
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: LINE_HEIGHT,),
          TextFieldContainer(
            child: TextField(
              cursorColor: APP_BLACK_COLOR,
              decoration: InputDecoration(
                icon: Icon(Icons.lock,color: APP_BLACK_COLOR,),
                hintText: "Enter OTP",
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: LINE_HEIGHT,),
          FlatButton(onPressed: (){Navigator.push(context, PageTransition(child: HomePage(), type: PageTransitionType.leftToRightWithFade));},
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
              height: 60,
              color: APP_YELLOW_COLOR,
              minWidth: MediaQuery.of(context).size.width*0.8,
              child: Text("CONTINUE",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR,),)),
          SizedBox(height: LINE_HEIGHT,),
          SizedBox(height: 5,),

        ],
      ),

    );
  }
}
