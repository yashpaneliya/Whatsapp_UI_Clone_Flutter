import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/pages/callpage.dart';
import 'package:whatsapp_ui_clone/pages/camerapage.dart';
import 'pages/chatpage.dart';
import 'pages/statuspage.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin{

  TabController tbc;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tbc=TabController(length: 4, vsync: this,initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
        elevation: 0.5,
        bottom: TabBar(
          controller: tbc,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(child: Text('Chats')),
            Tab(child: Text('Status')),
            Tab(child: Text('Calls')),
          ],
        ),
        actions: <Widget>[
          Icon(Icons.search),
          Padding(padding: EdgeInsets.symmetric(horizontal: 5.0),),
          Icon(Icons.more_vert)
        ],
      ),
      body: TabBarView(
        controller: tbc,
        children: <Widget>[
          CameraPage(),
          ChatPage(),
          StatusPage(),
          CallPage()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.message,color: Colors.white,),
        onPressed: (){},
      ),
    );
  }
}