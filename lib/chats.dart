import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

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
            Icons.done_all_rounded,
            color: Colors.blue,
          ),
          SizedBox(
            width: 3.0,
          ),
          Text(subTitle),
        ],
      ),
      trailing: Text('09.00'),
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
                'Bagas',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.done_all_rounded,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Text('Im here guys'),
                ],
              ),
              trailing: Text('09.00'),
            ),
            getStory("Sasuke", "Heii Bro"),
            getStory("Ribut", "Thanks You"),
            getStory("Moh Ali", "See you Again"),
            getStory("Ruebe", "Well Hello Bro"),
            getStory("Taro", "Hmmm"),
            getStory("Hassan", "Oke"),
            getStory("Lylia", "Oke"),
            getStory("Miya", "Oke"),
            getStory("Natan", "Oke"),
            getStory("Aldous", "Oke"),
            getStory("Hylos", "Oke"),
            getStory("Naruto", "Oke"),
            getStory("Sakura", "Oke"),
            getStory("Kakashi", "Oke"),
            getStory("Alucard", "Oke"),
            getStory("Revice", "Oke"),
            getStory("Luffy", "Oke"),
            getStory("Boa Hancock", "Oke"),
            getStory("Tanjiro", "Oke"),
            getStory("Lieh", "Oke"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(
          Icons.chat_bubble,
          color: Colors.white,
        ),
      ),
    );
  }
}
