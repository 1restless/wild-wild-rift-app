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
      backgroundColor: Color(0xFF090F13),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Color(0xFFEEEEEE),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/loadscreenwwrapp.jpg',
              ).image,
            ),
          ),
          child: OrientationBuilder(
            builder: (context, orientation) {
              if (orientation == Orientation.portrait) {
                return Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15, 15, 0, 15),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0x00EEEEEE),
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: Image
                                    .asset(
                                  'assets/images/wildwildriftlogo.png',
                                )
                                    .image,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15, 10, 15, 15),
                          child: VideoPlayerWidget(
                            path:
                            'assets/videos/movie.mp4',
                            videoType: VideoType.asset,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width * 0.95,
                            startAt: Duration(seconds: 4),
                            autoPlay: true,
                            looping: true,
                            showControls: true,
                            allowFullScreen: true,
                            allowPlaybackSpeedMenu: false,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15, 5, 15, 15),
                          child: Container(
                            height: MediaQuery
                                .of(context)
                                .size
                                .height * 0.5,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: SingleChildScrollView(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional
                                          .fromSTEB(0, 0, 0, 55),
                                      child: AutoSizeText(
                                        'Hey guys!\nThis app is for any of you that doesn\'t want to look and browse through hundreds other pages searching for optimal build for your character. You will find here all the latest and best builds with rune pages, accessible quickly and with ease.\nAll the builds are up to date and come from some of the highest ranked players in WildRift right now.\n\nAbout me\n---------------------\nI\'m former AoV (Arena of Valor) pro player for teams like NovaEsports and Alliance, playing casually now in WildRift, been Challenger since s1. I hope this app helps people that are struggling to find themselves in WildRift and I hope you will find it usefull,\n\nCheers,\nRestless',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.lexendDeca(
                                          color: Color(0xFFF5F5F5),
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
                      ],
                    ),
                  ),
                );
              }
              else { return Row(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        15, 10, 15, 15),
                    child: LayoutBuilder(
                      builder: (context, snapshot) {
                        return VideoPlayerWidget(
                          path:
                          'assets/videos/movie.mp4',
                          videoType: VideoType.asset,
                          width: MediaQuery
                              .of(context)
                              .size
                              .width* 0.5,
                          startAt: Duration(seconds: 4),
                          autoPlay: true,
                          looping: true,
                          showControls: true,
                          allowFullScreen: true,
                          allowPlaybackSpeedMenu: false,
                        );
                      }
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        15, 5, 15, 15),
                    child: Container(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.5,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.4,
                      child: Container(

                          child:SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsetsDirectional
                                  .fromSTEB(0, 0, 0, 0),
                              child: AutoSizeText(
                                'Hey guys!\nThis app is for any of you that doesn\'t want to look and browse through hundreds other pages searching for optimal build for your character. You will find here all the latest and best builds with rune pages, accessible quickly and with ease.\nAll the builds are up to date and come from some of the highest ranked players in WildRift right now.\n\nAbout me\n---------------------\nI\'m former AoV (Arena of Valor) pro player for teams like NovaEsports and Alliance, playing casually now in WildRift, been Challenger since s1. I hope this app helps people that are struggling to find themselves in WildRift and I hope you will find it usefull,\n\nCheers,\nRestless',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lexendDeca(
                                  color: Color(0xFFF5F5F5),
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                      ),
                    ),
                  ),
                ],
              );

              }
            }
            ),
        ),
      ),
    );
  }
}
