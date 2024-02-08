import 'package:flutter/material.dart';
import 'package:newsapp/components/CatogriesListview.dart';
import 'package:newsapp/components/listtile.dart';

import 'package:newsapp/components/newslistviewbuilder.dart';
import 'package:newsapp/screens/info.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            leading: Builder(
              builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu)),
            ),
            title: const Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "News",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                  ),
                  Text(
                    "Break",
                    style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.w600,
                        fontSize: 24),
                  )
                ],
              ),
            ),
          ),
          drawer: Drawer(
            child: Container(
              padding: EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  ListTileCat(
                    text: "Developer",
                    ic: Icon(Icons.person_pin_rounded,
                        size: 35, color: Colors.amber),
                    ontop: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Info()));
                    },
                  ),
                  ListTileCat(
                    text: 'Share',
                    ic: Icon(
                      Icons.share_sharp,
                      size: 35,
                      color: Colors.amber,
                    ),
                    ontop: () {},
                  ),
                ],
              ),
            ),
          ),
          body: const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomScrollView(
              scrollDirection: Axis.vertical,
              slivers: [
                SliverToBoxAdapter(
                  child: CatogriesListview(),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 22,
                  ),
                ),
                NewsListViewBuilder(cat: "general"),
              ],
            ),
          )),
    );
  }
}
