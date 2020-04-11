import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/models/chatmodel.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.message,color: Colors.white,),
        onPressed: (){},
      ),
          body: ListView.builder(
        itemCount: temp.length,
        itemBuilder: (context,index){
          return Column(children: <Widget>[
            Divider(
              height: 10.0,
              indent: 20.0,
              endIndent: 20.0,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                foregroundColor: Theme.of(context).primaryColor,
                backgroundImage: NetworkImage(temp[index].image),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(temp[index].name,style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(temp[index].time,style: TextStyle(color: Colors.grey,fontSize: 10.0),)
                ],
              ),
              subtitle: Container(
                padding: EdgeInsets.only(top:5.0),
                child: Text(temp[index].msg,style: TextStyle(color: Colors.grey,fontSize: 15.0),),
              ),
            )
          ],);
        },
      ),
    );
  }
}