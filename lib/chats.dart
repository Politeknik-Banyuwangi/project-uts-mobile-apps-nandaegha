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
            getStory("Moh Ali", "See you Again"),
            getStory("Hassan", "Oke"),
            getStory("Sasuke", "Heii Bro"),
            getStory("Naruto", "Yummy"),
            getStory("Sakura", "Hey look at this"),
            getStory("Kakashi", "Hey can i say something?"),
            getStory("Ribut", "Thanks You"),
            getStory("Ruebe", "Well Hello Bro"),
            getStory("Taro", "Hmmm"),
            getStory("Lylia", "Hello"),
            getStory("Miya", "How are you today?"),
            getStory("Natan", "Can i help you?"),
            getStory("Aldous", "Allright"),
            getStory("Hylos", "Well nice"),
            getStory("Alucard", "Weww is crazy bro"),
            getStory("Lieh", "Shut'up"),
            getStory("Revice", "Well it's okay"),
            getStory("Luffy", "Hello Friend"),
            getStory("Boa Hancock", "I miss you so much"),
            getStory("Zoro", "Let's do this"),
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
