import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);

  Widget getStory(title, subTitle) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage("https://i0.wp.com/www.cirebonkota.go.id/wp-content/uploads/2018/05/jokowi.jpg"),
        radius: 30,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
      ),
      subtitle: Row(
        children: [
          Icon(
            Icons.south_west,
            color: Colors.green,
            size: 16.0,
          ),
          SizedBox(
            width: 3.0,
          ),
          Text(
            subTitle,
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ],
      ),
      trailing: Icon(
        Icons.call,
        color: Colors.green,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (_) {
          _.disallowGlow();
          return true;
        },
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://i0.wp.com/www.cirebonkota.go.id/wp-content/uploads/2018/05/jokowi.jpg"),
                radius: 30.0,
              ),
              title: Text(
                'Bagus',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.south_west,
                    color: Colors.green,
                    size: 16.0,
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Text(
                    '24 Menit yang lalu',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              trailing: Icon(
                Icons.videocam,
                color: Colors.green,
              ),
            ),
            getStory("Sasuke", "Hari ini 13.10"),
            getStory("Ribut", "Hari ini 06.00"),
            getStory("Moh Ali", "Kemarin 20.24"),
            getStory("Ruebe", "23 April 07.02"),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.white,
            focusElevation: 0.0,
            onPressed: () {},
            child: Icon(
              Icons.video_call,
              color: Colors.teal.shade900,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {},
            child: Icon(
              Icons.add_call,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
