import 'package:flutter/material.dart';
import 'package:ikkava_food_app/constants/colors.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;

 const TextFieldContainer({
    Key key,this.child
}): super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        width: size.width*0.8,
        decoration: BoxDecoration(color: APP_WHITE_COLOR),
        child: child,
      ),
    );
  }
}

