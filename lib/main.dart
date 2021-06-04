import 'package:flutter/material.dart';
import 'package:ikkava_food_app/constants/colors.dart';
import 'package:ikkava_food_app/providers/home_provider.dart';
import 'package:ikkava_food_app/ui/Home_page.dart';
import 'package:ikkava_food_app/ui/agreement.dart';
import 'package:ikkava_food_app/ui/live_orders.dart';
import 'package:ikkava_food_app/ui/login1.dart';
import 'package:ikkava_food_app/ui/login2.dart';
import 'package:ikkava_food_app/ui/order_details.dart';
import 'package:ikkava_food_app/ui/order_taken1.dart';
import 'package:ikkava_food_app/ui/order_taken2.dart';
import 'package:ikkava_food_app/ui/order_taken3.dart';
import 'package:ikkava_food_app/ui/orders.dart';
import 'package:ikkava_food_app/ui/payouts.dart';
import 'package:ikkava_food_app/ui/preferred_localities.dart';
import 'package:ikkava_food_app/ui/profile.dart';
import 'package:ikkava_food_app/ui/rate_card.dart';
import 'package:ikkava_food_app/ui/session_history.dart';
import 'package:ikkava_food_app/ui/transaction.dart';
import 'package:ikkava_food_app/ui/transaction_history.dart';
import 'package:ikkava_food_app/ui/wallet.dart';
import 'package:provider/provider.dart';
import 'constants/strings.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
  HOME_PAGE : (context)=> HomePage(),
  LOGIN_PAGE1 : (context)=> Login1(),
  LOGIN_PAGE2 : (context)=> Login2(),
  LIVE_ORDERS : (context)=> LiveOrders(),
  ORDER1 : (context)=> Order1(),
  ORDER2 : (context)=> Order2(),
  ORDER3 : (context)=> Order3(),
  WALLET : (context)=> Wallet(),
  PAYOUT : (context)=> Payout(),
  TRANSACTION : (context)=> Transaction(),
  RATE_CARD : (context)=> RateCard(),
  TRANSACTION_HISTORY : (context)=> TransactionHistory(),
  SESSION_HISTORY : (context)=> SessionHistory(),
  PROFILE : (context)=> Profile(),
  ORDERS : (context)=> Orders(),
  LOCALITY : (context)=> Locality(),
  ORDER_DETAILS : (context)=> OrderDetails(),
  AGREEMENT : (context)=> Agreement(),
  };

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeProvider>(create: (_) => HomeProvider()),

      ],
      child: MaterialApp(

          title: APP_NAME,
          theme: ThemeData(
              backgroundColor: PRIMARY_COLOR,
              primarySwatch: Colors.red,
              visualDensity: VisualDensity.adaptivePlatformDensity
          ),

        routes: routes,
        initialRoute: LOGIN_PAGE1 ,

        ),
    );

  }
}


