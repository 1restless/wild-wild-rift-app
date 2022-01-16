import 'package:flutter/material.dart';
import 'package:wild_wild_rift/data/build_video_player.dart';
import 'package:wild_wild_rift/pages/grid_view_list.dart';
import 'package:wild_wild_rift/pages/home_page_widget.dart';
import 'package:wild_wild_rift/pages/home_page_widget2.dart';
import 'package:wild_wild_rift/pages/streamers.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';




void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: const Color(0xFF0D1821),
            textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.white))),
        home:  SafeArea(
          top: true,
          bottom: false,
          child: MainPage(),
        ));
  }
}

class MainPage extends StatefulWidget {

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int selectedIndex = 0;
  final screens = [
    HomePageWidget(),
    GridViewPage(),
    StreamersWidget(),
    HomePageWidget2()
  ];

  @override
  Widget build(BuildContext context) =>
    Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: FFNavigationBar(
        theme: FFNavigationBarTheme(
          barBackgroundColor: const Color(0xFF090F13),
          selectedItemBorderColor: const Color(0xFF262D34),
          selectedItemBackgroundColor: Colors.white,
          selectedItemIconColor: Colors.black,
          selectedItemLabelColor: Colors.white,
        ),
        selectedIndex: selectedIndex,
        onSelectTab: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
        FFNavigationBarItem(
        iconData: Icons.home,
        label: 'Home',
      ),
      FFNavigationBarItem(
        iconData: Icons.people,
        label: 'Builds',
      ),
      FFNavigationBarItem(
        iconData: Icons.video_label,
        label: 'Streamers',
      ),
          FFNavigationBarItem(
            iconData: Icons.camera,
            label: 'Test',
          )

    ]
      )
    );
  }

