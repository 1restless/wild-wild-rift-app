import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:wild_wild_rift/data/build_video_player.dart';





class HomePageWidget2 extends StatefulWidget {
  const HomePageWidget2({Key key}) : super(key: key);

  @override
  _HomePageWidget2State createState() => _HomePageWidget2State();
}

class _HomePageWidget2State extends State<HomePageWidget2> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
final asset = 'assets/videos/quadraAOV.mp4';
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
                width: 125,
                height: 125,
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
            alignment: AlignmentDirectional(0, 0.6),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.60,
              decoration: BoxDecoration(
                color: Color(0x3EEEEEEE),
                border: Border.all(
                  color: Color(0x41EEEEEE),
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget> [
                    Container(
                      width: 100,
                      height: 255,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: VideoPlayerWidget(controller: VideoPlayerController.asset('assets/videos/quadraAOV.mp4'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: Color(0x00EEEEEE),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: AutoSizeText(
                            'Hey guys!\nThis app is for any of you that doesn\'t want to look and browse through hundreds other pages searching for optimal build for your character. You will find here all the latest and best builds with rune pages, accessible quickly and with ease.\nAll the builds are up to date and come from some of the highest ranked players in WildRift right now.\n\nAbout me\n---------------------\nI\'m former AoV (Arena of Valor) pro player for teams like NovaEsports and Alliance, playing casually now in WildRift, been Challenger since s1. I hope this app helps people that are struggling to find themselves in WildRift and I hope you will find it usefull,\n\nCheers,\nRestless',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xDBF5F5F5),
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
