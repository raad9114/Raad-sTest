import 'package:flutter/material.dart';
import 'package:hrandsells/home_page.dart';


class ViewNotification extends StatefulWidget {
  const ViewNotification({Key? key}) : super(key: key);

  @override
  _ViewNotificationState createState() => _ViewNotificationState();
}

class _ViewNotificationState extends State<ViewNotification> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(title: Text('View Notification'),),
        body: Center(
          child: Container(
            child: FlatButton(
                color: Color(0xFF8CA6DB),
                height: 60,
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text('View Notification', style:  TextStyle(fontSize: 30),)),
          ),
        ),
      ),
    );
  }
}