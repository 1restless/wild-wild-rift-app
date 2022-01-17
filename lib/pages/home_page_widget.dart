import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wild_wild_rift/utils/video_player.dart';

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
            alignment: AlignmentDirectional(0, 0.5),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.60,
              decoration: BoxDecoration(
                color: Color(0x3EEEEEEE),
                border: Border.all(
                  color: Color(0x41EEEEEE),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  VideoPlayer(
                    path:
                    'assets/videos/movie.mp4',
                    startAt: Duration(seconds: 6),
                    videoType: VideoType.asset,
                    autoPlay: true,
                    looping: true,
                    showControls: true,
                    allowMuting: true,
                    allowFullScreen: true,
                    allowPlaybackSpeedMenu: false,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: AutoSizeText(
                      'Hey guys!\nThis app is for any of you that doesn\'t want to look and browse through hundreds other pages searching for optimal build for your character. You will find here all the latest and best builds with rune pages, accessible quickly and with ease.\nAll the builds are up to date and come from some of the highest ranked players in WildRift right now.\n\nAbout me\n---------------------\nI\'m former AoV (Arena of Valor) pro player for teams like NovaEsports and Alliance, playing casually now in WildRift, been Challenger since s1. I hope this app helps people that are struggling to find themselves in WildRift and I hope you will find it usefull,\n\nCheers,\nRestless',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lexendDeca(
                        color: Color(0xDBF5F5F5),
                        fontSize: 12,
                        height: 1.3,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
