import 'package:flutter/material.dart';
import 'package:ikkava_food_app/constants/colors.dart';
import 'package:ikkava_food_app/ui/drawer.dart';
import 'file:///C:/Users/jesmi/AndroidStudioProjects/ikkava_food_app/lib/ui/home.dart';
import 'package:line_icons/line_icons.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index=0;
    List<Widget> _widgetOptions = <Widget>[
    Home(),
    Text('offers', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('donate', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('cart', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];
  @override
  Widget build(BuildContext context) {
    // HomeProvider homeProvider=Provider.of(context);
    return  Scaffold(

      drawer: MDrawer(),

      body: SizedBox(child: _widgetOptions.elementAt(_index)),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_outlined),
            // ignore: deprecated_member_use
            title: Text('Feed'),
          ),
          BottomNavigationBarItem(
            icon: Icon(LineIcons.indianRupeeSign),
            // ignore: deprecated_member_use
            title: Text('Payout'),
          ),
          BottomNavigationBarItem(
            icon: Icon(LineIcons.alternateWavyMoneyBill),
            title: Text('Deposit'),
          ),
          BottomNavigationBarItem(
            icon: Icon(LineIcons.cube),
            title: Text('More'),
          ),
        ],
         currentIndex: _index,
        selectedItemColor: PRIMARY_COLOR ,
        unselectedItemColor: Colors.black,
          backgroundColor: APP_WHITE_COLOR,
          elevation: 5,
        showUnselectedLabels: true,
          onTap: (index) {
          setState(() {
            _index=index;
          });
          },

        // onTap:
      ),

    );

  }
}
