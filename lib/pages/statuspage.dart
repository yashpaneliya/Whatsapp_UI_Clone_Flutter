import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/models/statusmodel.dart';

class StatusPage extends StatefulWidget {
  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.camera_alt,color: Colors.white,),
      ),
          body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('My Status',style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text('Tap to add status update',style: TextStyle(color: Colors.grey),),
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1466112928291-0903b80a9466?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1953&q=80'),),
          ),
          Container(
            height: 30.0,
            padding: EdgeInsets.only(left: 15.0,top:5.0,bottom: 3.0),
            width: MediaQuery.of(context).size.width,
            color: Colors.grey.shade300,
            child: Text(
              'Recent updates',
              style: TextStyle(color: Colors.grey.shade600),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: stdata.length,
              itemBuilder: (context,index){
                  return Column(children: <Widget>[
                    Divider(
                      height: 10.0,
                      indent: 80.0,
                      endIndent: 5.0,
                    ),
                    ListTile(
                      leading: Container(
                        padding: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          border: Border.all(color:Theme.of(context).accentColor,width: 3.0),
                          borderRadius: BorderRadius.circular(30.0)
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(stdata[index].imgPath),
                          backgroundColor: Colors.grey,
                        ),
                      ),
                      title: Text(stdata[index].name,style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text(stdata[index].time,style: TextStyle(color: Colors.grey),),
                    )
                  ],);
              },
            ),
          ),
        ],
      ),
    );
  }
}