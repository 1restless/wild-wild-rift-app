import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0x00262D34),
      body: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional(0, 0),
            child: Image.asset(
              'assets/images/loadscreenwwrapp.jpg',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-0.91, -0.95),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Container(
                width: 145,
                height: 145,
                decoration: BoxDecoration(
                  color: Color(0x00EEEEEE),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/wildwildriftlogo.png',
                    ).image,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0, 0.3),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                color: Color(0x3EEEEEEE),
                border: Border.all(
                  color: Color(0x41EEEEEE),
                ),
              ),
              child: Align(
                alignment: AlignmentDirectional(0, -0.5),
                child: Text(
                  'Hey guys!\nThis app is for any of you that doesn\'t want to look and browse through hundreds other pages searching for optimal build for your character. You will find here all the latest and best builds with rune pages, accessible quickly and with ease.\nAll the builds are up to date and come from some of the highest ranked players in WildRift right now.\nI hope it saves your time and you don\'t have to look and fail to chose optimal builds while in character selection.\nApp is designed to be light and fast to not waste your time but please have in mind the fact, that\'s it\'s the first app I have ever written and done so all by myself so it\'s not gonna be perfect but I do hope you enjoy it and find it useful !\n\nCheers !\nRestless',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lexendDeca(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
