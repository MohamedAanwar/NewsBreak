import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff2B475E),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 85,
            child: CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage("assets/me.jpg"),
            ),
          ),
          Text(
            "Mohamed Anwar",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 32,
                fontFamily: 'Pacifico'),
          ),
          Text(
            "FLUTTER DEVELOPER",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff6C8090)),
          ),
          Divider(
            color: Color(0xff6C8090),
            thickness: 2,
            indent: 60,
            endIndent: 60,
            height: 20,
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: Icon(
                Icons.phone,
                size: 32,
                color: Color(0xff2B475E),
              ),
              title: Text(
                "(+20) 1100106132",
                style: TextStyle(fontSize: 24, color: Color(0xff2B475E)),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: Icon(
                Icons.email,
                size: 32,
                color: Color(0xff2B475E),
              ),
              title: Text(
                "moahamedanwar082@gmail.com",
                style: TextStyle(fontSize: 20, color: Color(0xff2B475E)),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
