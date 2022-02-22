import 'package:flutter/material.dart';
import 'package:hrandsells/data_model/notification_model.dart';
import 'package:hrandsells/hr/viewNotification.dart';
import 'package:hrandsells/screen/notification_api.dart';
//import 'package:hrandsells/hr/viewNotification.dart';


class NotificationList extends StatefulWidget {
  const NotificationList({Key? key}) : super(key: key);

  @override
  _NotificationListState createState() => _NotificationListState();
}

class _NotificationListState extends State<NotificationList> {
  fetchnotification _noteList = fetchnotification();
  //fetchnotification _noteList = fetchnotification();

  @override



  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification List'),
        backgroundColor: Color(0xFF8CA6DB),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: FutureBuilder<List<Note>>(
            future: _noteList.getnoteList(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
              var data = snapshot.data;
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => Container(
                  child: Column(
                    children: [
                      FlatButton(
                        color: Colors.white70,
                        height: 70,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ViewNotification()));
                        },
                        child:  Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.lightBlueAccent,
                              child: Icon(Icons.notifications_active_outlined),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Column(
                              children: [
                                Text('${data?[index].xtitle}', style: TextStyle(fontSize: 20,),textAlign: TextAlign.start,),
                                Text('${data?[index].xsubtitle}', style: TextStyle(fontSize: 15),),
                              ],
                            ),
                            // SizedBox(
                            //   width: 100,
                            // ),

                            //Icon(Icons.delete, color: Colors.grey,),
                          ],
                        ),
                      ),
                    ],
                  ),

                ),
              );
            } else {
              return Center(
                  child: Image(
                    image: AssetImage("images/loading.gif"),
                  ),
              );

            }
            }),
      ),
    );
  }
}