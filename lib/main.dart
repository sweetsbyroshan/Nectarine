import 'package:flutter/material.dart';
import 'package:nectarine/pages/checkout.dart';
import 'package:nectarine/pages/home.dart';
import 'package:nectarine/pages/login.dart';
import 'package:nectarine/pages/nmoney.dart';
import 'package:nectarine/pages/notifications.dart';
import 'package:nectarine/pages/settings.dart';
import 'package:nectarine/pages/tariff.dart';
import 'package:nectarine/pages/transaction_details.dart';

import 'pages/getstarted.dart';
import 'pages/profile.dart';
import 'pages/saverpacks.dart';
import 'pages/transactions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF383838),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: GetStartedPage(),
      debugShowCheckedModeBanner: false,
      routes: {
        LoginPage.routeName: (c) => LoginPage(),
        HomePage.routeName: (c) => HomePage(),
        ProfilePage.routeName: (c) => ProfilePage(),
        NMoneyPage.routeName: (c) => NMoneyPage(),
        CheckoutPage.routeName:(c)=>CheckoutPage(),
        TransactionsPage.routeName:(c)=>TransactionsPage(),
        TransactionDetailsPage.routeName:(c)=>TransactionDetailsPage(),
        TariffPage.routeName:(c)=>TariffPage(),
        SaverPacksPage.routeName:(c)=>SaverPacksPage(),
        NotificationPage.routeName:(c)=>NotificationPage(),
        SettingsPage.routeName:(c)=>SettingsPage()
      },
    );
  }
}
