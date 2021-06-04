import 'package:flutter/material.dart';
import 'package:ikkava_food_app/constants/app_font_style.dart';
import 'package:ikkava_food_app/constants/colors.dart';
import 'package:ikkava_food_app/constants/dimen.dart';
import 'package:ikkava_food_app/constants/strings.dart';
import 'package:ikkava_food_app/widgets/sub_app_bar.dart';
class Locality extends StatefulWidget {
  @override
  _LocalityState createState() => _LocalityState();
}

class _LocalityState extends State<Locality> {
  @override
  bool _switch=false;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: APP_DRAWER_COLOR,
      appBar: MAppBar(LOCALITY),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: LINE_HEIGHT,),
            SizedBox(height: LINE_HEIGHT,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(

                  cursorColor: Colors.blue,

                  decoration: InputDecoration(hintText: "Default Locality",focusedBorder: new UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.blue
                    ),
                  ))
              ),
            ),
            SizedBox(height: LINE_HEIGHT,),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                Text("Cross Locality",style: AppFontStyle.bodyTextStyle(PRIMARY_COLOR),),
               Switch(value: _switch, onChanged:(val){
                 setState(() {
                   _switch=val;
                 });
               },activeColor: PRIMARY_COLOR,
               )
              ],
            ),
            SizedBox(height: LINE_HEIGHT,),
            Row(

              children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: Wrap(
                    runSpacing: 6,
                    spacing: 6,
                    children: [
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue[100]),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 3),
                          child: Text("Ambalamukal",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue[100]),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 3),
                          child: Text("Kakkanad",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue[100]),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 3),
                          child: Text("Fort Kochi",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue[100]),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 3),
                          child: Text("Eroor",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue[100]),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 3),
                          child: Text("Kalamassery",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue[100]),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 3),
                          child: Text("Kaloor",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue[100]),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 3),
                          child: Text("Edathala",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue[100]),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 3),
                          child: Text("Pallikkara",style: AppFontStyle.buttonTextStyle(APP_BLACK_COLOR),),
                        ),
                      ),
                    ],
                  ),
                ),
                Text("Edit",style: AppFontStyle.buttonTextStyle(PRIMARY_COLOR),)

              ],
            ),
            SizedBox(height: LINE_HEIGHT,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: LINE_HEIGHT),
              child: FlatButton(onPressed: (){Navigator.pushNamed(context, PROFILE);},
                  color: PRIMARY_COLOR,
                  height: 50,
                  minWidth: MediaQuery.of(context).size.width*0.9,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text("Update",style: AppFontStyle.headingTextStyle(APP_WHITE_COLOR,),),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
