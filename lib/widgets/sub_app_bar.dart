import 'package:flutter/material.dart';
import 'package:ikkava_food_app/constants/app_font_style.dart';
import 'package:ikkava_food_app/constants/colors.dart';
import 'package:line_icons/line_icons.dart';


class MAppBar extends StatelessWidget implements PreferredSizeWidget{

  final double height = 50;

  final String _title;

  MAppBar(this._title,);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(_title,style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR)),
        backgroundColor: APP_DRAWER_COLOR,
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,), onPressed: ()=>{Navigator.pop(context,true)})
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);

}