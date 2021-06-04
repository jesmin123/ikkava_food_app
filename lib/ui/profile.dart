import 'package:flutter/material.dart';
import 'package:ikkava_food_app/constants/app_font_style.dart';
import 'package:ikkava_food_app/constants/colors.dart';
import 'package:ikkava_food_app/constants/dimen.dart';
import 'package:ikkava_food_app/constants/strings.dart';
import 'package:ikkava_food_app/widgets/sub_app_bar.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: APP_DRAWER_COLOR,
      appBar: MAppBar(PROFILE),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: LINE_HEIGHT*2,),
              Center(
                child: Stack(
                  children:[
                    Container(
                    height: 82,
                      width: 81,
                      decoration: BoxDecoration(boxShadow: [BoxShadow(
                        color: APP_GREY_COLOR,
                        blurRadius: 30.0,
                        spreadRadius: 15,
                      )]),

                      margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                          child: Image.asset("asset/pro.jpg", fit: BoxFit.fill,))
                  ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: Container(
                        width:35,
                        height: 35,
                        decoration: BoxDecoration(shape: BoxShape.circle,color: APP_GREENN_COLOR),
                        child: Icon(Icons.camera_alt_outlined,color: APP_WHITE_COLOR,size: 20,),
                      ),
                    )
             ] ),
              ),
              SizedBox(height: LINE_HEIGHT,),
              Align(
                alignment: Alignment.topLeft,
                  child: Text("User Information",style: AppFontStyle.boldTextStyle(PRIMARY_COLOR),)),
              SizedBox(height: LINE_HEIGHT,),
              SizedBox(height: LINE_HEIGHT*0.5,),
              Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text("First Name",style: AppFontStyle.labelTextStyle3(APP_BLACK_COLOR),),
                          Container(
                            width: MediaQuery.of(context).size.width*0.45,
                            child: TextField(
                              cursorColor: Colors.blue,
                              decoration: InputDecoration(
                                focusedBorder: new UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blue
                                ),
                              ),),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Last Name",style: AppFontStyle.labelTextStyle3(APP_BLACK_COLOR),),
                          Container(
                            width: MediaQuery.of(context).size.width*0.45,
                            child: TextField(
                                cursorColor: Colors.blue,
                                decoration: InputDecoration(focusedBorder: new UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.blue
                                  ),
                                ),)
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
              SizedBox(height: LINE_HEIGHT,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Email",style: AppFontStyle.labelTextStyle3(APP_BLACK_COLOR),),
                  Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    child: TextField(
                        cursorColor: Colors.blue,
                        decoration: InputDecoration(focusedBorder: new UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.blue
                          ),
                        ),)
                    ),
                  ),
                ],
              ),
              SizedBox(height: LINE_HEIGHT,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text("Gender",style: AppFontStyle.labelTextStyle3(APP_BLACK_COLOR),),
                      Container(
                        width: MediaQuery.of(context).size.width*0.45,
                        child: DropdownButtonFormField(
                          decoration: InputDecoration(
                            focusedBorder: new UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.blue
                              ),
                            ),),
                          onChanged: (val){},

                          items: [
                            DropdownMenuItem(child: Text("Male"),value: "Male",),
                            DropdownMenuItem(child: Text("Female"),value: "Female",),
                            DropdownMenuItem(child: Text("Other"),value: "Other",)
                          ],
                        ),

                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Phone",style: AppFontStyle.labelTextStyle3(APP_BLACK_COLOR),),
                      Container(
                        width: MediaQuery.of(context).size.width*0.45,
                        child: TextField(
                            cursorColor: Colors.blue,
                            decoration: InputDecoration(focusedBorder: new UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.blue
                              ),
                            ),)
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: LINE_HEIGHT,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Address",style: AppFontStyle.labelTextStyle3(APP_BLACK_COLOR),),
                  Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    child: TextField(
                        cursorColor: Colors.blue,
                        decoration: InputDecoration(focusedBorder: new UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.blue
                          ),
                        ),prefixIcon: Icon(Icons.location_on_outlined,color: Colors.blue,size: 35,))
                    ),
                  ),
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
                      child: Text("Save",style: AppFontStyle.headingTextStyle(APP_WHITE_COLOR,),),
                    )),
              ),






            ],
          ),
        ),
      ),
    );
  }
}
