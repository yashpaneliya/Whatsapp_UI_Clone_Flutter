import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/whatsapphome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData(
        primaryColor: Color(0xff075e54),
        accentColor: Color(0xff25D366)
      ),
      home: WhatsAppHome(),
    );
  }
}
