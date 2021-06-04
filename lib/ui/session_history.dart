import 'package:flutter/material.dart';
import 'package:ikkava_food_app/constants/app_font_style.dart';
import 'package:ikkava_food_app/constants/colors.dart';
import 'package:ikkava_food_app/constants/dimen.dart';
import 'package:ikkava_food_app/constants/strings.dart';
import 'package:ikkava_food_app/widgets/main_appBar.dart';
import 'package:ikkava_food_app/widgets/sub_app_bar.dart';

class SessionHistory extends StatefulWidget {
  @override
  _SessionHistoryState createState() => _SessionHistoryState();
}

class _SessionHistoryState extends State<SessionHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      backgroundColor: APP_DRAWER_COLOR,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            MAppBar(SESSION_HISTORY),
            SizedBox(height: LINE_HEIGHT,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.4,

                  child:DropdownButtonFormField(

                    decoration: InputDecoration(filled: true,fillColor: APP_WHITE_COLOR,enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                      hintText: 'Today',contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    ),
                    items: [
                      DropdownMenuItem(
                        child: Text('Today'),value: "Today",),
                      DropdownMenuItem(
                        child: Text('Yesterday'),value: "Yesterday",),
                      DropdownMenuItem(
                        child: Text('Tommorrow'),value: "Tommorrow",),
                    ],
                    onChanged: (value){

                    },
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.4,
                  child: DropdownButtonFormField(items: [
                    DropdownMenuItem(child: Text("Today"),value: "Today",),
                    DropdownMenuItem(child: Text("Yesterday"),value: "Yesterday",),
                    DropdownMenuItem(child: Text("tommorrow"),value: "tommorrow",)
                  ],
                    onChanged: (val){},
                    decoration: InputDecoration(filled: true,fillColor: APP_WHITE_COLOR,enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                      hintText: 'Select Time',contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    ), )
                ),
                 ]
                ),
            SizedBox(height: LINE_HEIGHT,),
            SizedBox(height: LINE_HEIGHT,),
            Column(
              children: [
                Text("04:30",style: AppFontStyle.boldTextStyle3(APP_BLACK_COLOR),),
                Text("Hours Completed",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),)
              ],
            )
              ],
            )



        ),

    );
  }
}
