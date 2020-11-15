import 'package:flutter/material.dart';
import 'file:///D:/Android%20Project/whatssapappflutter/lib/screens/whatssap_main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Clone',
      theme: ThemeData(
        primaryColor: Color(0xff075E54),
        accentColor: Color(0xff25D366),
      ),
      home: WhatsAppMain(),
    );
  }
}
