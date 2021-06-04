import 'package:flutter/material.dart';
import 'package:ikkava_food_app/constants/app_font_style.dart';
import 'package:ikkava_food_app/constants/colors.dart';
import 'package:ikkava_food_app/constants/dimen.dart';
import 'package:ikkava_food_app/constants/strings.dart';
import 'package:ikkava_food_app/ui/login2.dart';
import 'package:ikkava_food_app/widgets/textField_container.dart';
import 'package:page_transition/page_transition.dart';

class Login1 extends StatefulWidget {
  @override
  _Login1State createState() => _Login1State();
}

class _Login1State extends State<Login1> {
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
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.lock,color: APP_BLACK_COLOR,),
                hintText: "Password",
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: LINE_HEIGHT,),
          FlatButton(onPressed: (){Navigator.push(context, PageTransition(
            child:Login2(),
              type: PageTransitionType.rightToLeftWithFade),);},
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
              height: 60,
              color: APP_YELLOW_COLOR,
              minWidth: MediaQuery.of(context).size.width*0.8,
              child: Text("SIGN IN",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR,),)),
          SizedBox(height: 10,),
          Text("Forgot Password?",style: AppFontStyle.bodyTextStyle(APP_WHITE_COLOR),)

        ],
      ),

    );
  }
}
