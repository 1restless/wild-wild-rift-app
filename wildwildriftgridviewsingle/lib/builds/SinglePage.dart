import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:wild_wild_rift/utils/youtube_player.dart';
import '../data/model.dart';
import 'package:google_fonts/google_fonts.dart';

class SinglePage extends StatefulWidget {
  const SinglePage(this.data);
  final Data data;

  @override
  State<StatefulWidget> createState() => _SinglePage();
}

class _SinglePage extends State<SinglePage> {
  PageController pageViewController;
  bool isFirstButton = false;
  bool isSecondButton = false;

  @override
  void initState() {
    super.initState();
    pageViewController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) => SafeArea(
        top: true,
        child: Scaffold(
          extendBodyBehindAppBar: true,
          body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverAppBar(
                expandedHeight: 200,
                floating: true,
                pinned: false,
                snap: false,
                backgroundColor: Colors.transparent,
                automaticallyImplyLeading: true,
                title: Text(
                  widget.data.name,
                  style: GoogleFonts.lexendDeca(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                actions: const [],
                centerTitle: false,
                elevation: 0,
                flexibleSpace: Stack(
                  children: <Widget>[
                    Positioned.fill(
                        child: Image.asset(widget.data.backgroundimage,
                            fit: BoxFit.cover))
                  ],
                ),
              ),
            ],
            body: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 25),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Material(
                                color: Colors.transparent,
                                elevation: 2,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20, 12, 20, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Choose a role',
                                  style: GoogleFonts.lexendDeca(
                                    color: Color(0xFF8B97A2),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 12, 1, 0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            16, 0, 0, 0),
                                    child: InkWell(
                                      onTap: () async {
                                        isSecondButton = false;
                                        isFirstButton = true;
                                        setState(() {});
                                        await pageViewController.animateToPage(
                                          0,
                                          duration:
                                              const Duration(milliseconds: 500),
                                          curve: Curves.ease,
                                        );
                                      },
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 2,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Container(
                                          width: 100,
                                          height: 100,
                                          decoration: BoxDecoration(
                                              color: const Color(0xFF090F13),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              shape: BoxShape.rectangle,
                                              border: isFirstButton
                                                  ? Border.all(
                                                      color: Colors.white)
                                                  : null),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment:
                                                    const AlignmentDirectional(
                                                        0, -0.05),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                      'assets/images/icon-position-jungle.png',
                                                      width: 50,
                                                      height: 50,
                                                      fit: BoxFit.cover,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 8, 0, 0),
                                                      child: AutoSizeText(
                                                        'FULL CHAD\n(BURST AP)',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: GoogleFonts
                                                            .lexendDeca(
                                                          color:
                                                              Color(0xFF8B97A2),
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            16, 0, 0, 0),
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 2,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                            color: const Color(0xFF090F13),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: isSecondButton
                                                ? Border.all(
                                                    color: Colors.white)
                                                : null),
                                        child: InkWell(
                                          onTap: () async {
                                            isSecondButton = true;
                                            isFirstButton = false;
                                            setState(() {});
                                            await pageViewController
                                                .animateToPage(
                                              1,
                                              duration: const Duration(
                                                  milliseconds: 500),
                                              curve: Curves.ease,
                                            );
                                          },
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment:
                                                    const AlignmentDirectional(
                                                        0, -0.05),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                      'assets/images/icon-position-jungle.png',
                                                      width: 50,
                                                      height: 50,
                                                      fit: BoxFit.cover,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 8, 0, 0),
                                                      child: AutoSizeText(
                                                        'BETA BUILD\n(TANK)',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: GoogleFonts
                                                            .lexendDeca(
                                                          color:
                                                              Color(0xFF8B97A2),
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20, 8, 20, 8),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Builds',
                                  style: GoogleFonts.lexendDeca(
                                    color: Color(0xFF8B97A2),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      color: const Color(0x00090F13),
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 3,
                                          color: Colors.transparent,
                                          offset: Offset(0, 2),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 500,
                                      child: PageView(
                                        physics: NeverScrollableScrollPhysics(),
                                        controller: pageViewController,
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          Image.asset(
                                            'assets/images/FULLCHAD.png',
                                            width: 150,
                                            height: 150,
                                            fit: BoxFit.cover,
                                          ),
                                          Image.asset(
                                            'assets/images/gragastankxd.png',
                                            width: 150,
                                            height: 150,
                                            fit: BoxFit.cover,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Skill order',
                          style: GoogleFonts.lexendDeca(
                            color: Color(0xFF8B97A2),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            '1st skill',
                            style: GoogleFonts.lexendDeca(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Watch a pro guide...',
                          style: GoogleFonts.lexendDeca(
                            color: Color(0xFF8B97A2),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 35),
                    child: YoutubePlayer(
                      url: widget.data.url,
                      width: MediaQuery.of(context).size.width * 0.93,
                      autoPlay: false,
                      looping: true,
                      mute: false,
                      showControls: true,
                      showFullScreen: true,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
