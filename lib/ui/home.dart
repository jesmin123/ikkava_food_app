import 'package:flutter/material.dart';
import 'package:ikkava_food_app/constants/app_font_style.dart';
import 'package:ikkava_food_app/constants/colors.dart';
import 'package:ikkava_food_app/constants/strings.dart';
import 'package:ikkava_food_app/ui/live_orders.dart';
import 'package:ikkava_food_app/widgets/main_appBar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:page_transition/page_transition.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: PRIMARY_COLOR,
        appBar: MainAppBar(),
       body: SizedBox.expand(
         
         child: Stack(
           children:[
             SingleChildScrollView(
               child: Column(
               children: [

                 Row(
                   children: [
                     Expanded(child: GestureDetector(onTap: (){Navigator.push(context, PageTransition(child: LiveOrders(), type: PageTransitionType.leftToRightWithFade));},child: Container(height: 50,color: APP_WHITE_COLOR,child: Center(child: Text("Live Orders")),))),
                    VerticalDivider(color: APP_BLACK_COLOR,width: 1.0,),
                     Expanded(child: GestureDetector(onTap: (){Navigator.push(context, PageTransition(child: LiveOrders(), type: PageTransitionType.leftToRightWithFade));},child: Container(height: 50,color: APP_WHITE_COLOR,child: Center(child: Text("All Orders")),)))
                   ],
                 ),
                 Image(image: AssetImage("asset/map2.jpg")),

               ],
           ),
             ),
             SizedBox.expand(
               child:DraggableScrollableSheet(
                 initialChildSize: 0.2,
                 minChildSize: 0.2,
                 maxChildSize: 0.5,
                 builder: (BuildContext context,ScrollController scrollcontroller){
                   return SingleChildScrollView(
                     controller: scrollcontroller,
                     child: Container(
                       decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15)),color: APP_WHITE_COLOR),
                       child: Column(
                         children: [
                           Icon(Icons.arrow_drop_up_sharp,size: 50,),
                           Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 8),
                             child: ClipRRect(
                               borderRadius: BorderRadius.circular(5),
                               child:
                               ListTile(
                                 tileColor: PRIMARY_COLOR,
                                 leading: CircleAvatar(radius: 25,backgroundImage: AssetImage("asset/pro.jpg"),),
                                 title: Text("Jibu Raju",style: TextStyle(color: APP_WHITE_COLOR),),
                                 subtitle: Text("Delivery Partner",style: AppFontStyle.labelTextStyle4(APP_WHITE_COLOR)),
                                 trailing: Padding(
                                   padding: const EdgeInsets.only(right: 8),
                                   child: Container(
                                     width: 90,
                                     child: Row(
                                       children: [
                                         Text("4.3",style: AppFontStyle.boldTextStyle(APP_WHITE_COLOR),),
                                         SizedBox(width: 4,),
                                         Icon(Icons.star,size: 20,color: Colors.yellow,)
                                       ],
                                     ),
                                   ),
                                 ),
                               ),
                             ),

                           ),
                           SizedBox(height: 20,),
                           Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 8),
                             child: Container(
                               decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: PRIMARY_COLOR,width: 1)),
                               child: Center(
                                 child: Padding(
                                   padding: const EdgeInsets.symmetric(vertical: 10),
                                   child: Column(
                                     children: [
                                       Text("Earnings Today"),
                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.center,
                                         children: [
                                           Icon(LineIcons.indianRupeeSign,color: APP_BLACK_COLOR,size: 25,),
                                           Text("940",style: AppFontStyle.boldTextStyle(APP_BLACK_COLOR),),
                                         ],
                                       ),

                                     ],
                                   ),
                                 ),
                               ),
                             ),
                           ),
                           SizedBox(height: 20,),
                           Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 8),
                             child: Row(

                               children: [
                                 Expanded(

                                   child: Container(
                                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: PRIMARY_COLOR,width: 1)),
                                     child: Center(
                                       child: Padding(
                                         padding: const EdgeInsets.symmetric(vertical: 10),
                                         child: Column(
                                           children: [
                                             Text("Orders Completed"),
                                             Text("14",style: AppFontStyle.boldTextStyle(APP_BLACK_COLOR),),

                                           ],
                                         ),
                                       ),
                                     ),
                                   ),
                                 ),
                                 SizedBox(width: 6,),
                                 Expanded(
                                   child: Container(
                                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: PRIMARY_COLOR,width: 1)),
                                     child: Center(
                                       child: Padding(
                                         padding: const EdgeInsets.symmetric(vertical: 10),
                                         child: Column(
                                           children: [
                                             Text("Login Hours"),
                                             Text("15:00hrs",style: AppFontStyle.boldTextStyle(APP_BLACK_COLOR),),

                                           ],
                                         ),
                                       ),
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                           SizedBox(height: 20,)

                         ],
                       ),
                     ),
                   );
                 },
               ),
             )
         ]),
       ),
    );
  }


}
