import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:parallax_animation/parallax_animation.dart';
import 'package:wild_wild_rift/utils/util.dart';
import 'package:wild_wild_rift/utils/youtube_player.dart';
import '../data/model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'single_pageview_widgets.dart';

class SinglePage2 extends StatefulWidget {
  const SinglePage2(this.data);
  final Data data;

  @override
  State<StatefulWidget> createState() => _SinglePage2();
}

class _SinglePage2 extends State<SinglePage2> {
  PageController pageViewController;
  bool isFirstButton = false;
  bool isSecondButton = false;

  @override
  void initState() {
    super.initState();
    pageViewController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) =>
      OrientationBuilder(builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return Scaffold(
            backgroundColor: Color(0xFF090F13),
            body: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                SliverAppBar(
                  expandedHeight: 200,
                  toolbarHeight: 40,
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
                  elevation: 3,
                  flexibleSpace: Stack(
                    children: <Widget>[
                      Positioned.fill(
                          child: Image.asset(widget.data.backgroundimage,
                              fit: BoxFit.cover)),
                    ],
                  ),
                ),
              ],
              body: buildPortrait(),
            ),
          );
        } else {
          return Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              automaticallyImplyLeading: true,
              toolbarHeight: 40,
              toolbarOpacity: 1,
            ),
            backgroundColor: Color(0xFF090F13),
            body: buildLandscape(),
          );
        }
      });
  Widget buildPortrait() => Center(
        child: SingleChildScrollView(
          child: Column(mainAxisSize: MainAxisSize.max, children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        widget.data.lane,
                        style: GoogleFonts.lexendDeca(
                          color: Color(0xFFFFFFFF),
                          fontSize: 35,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                        child: Text(
                          ' lane',
                          style: GoogleFonts.lexendDeca(
                            color: Color(0xFF8B97A2),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        widget.data.tier,
                        style: GoogleFonts.lexendDeca(
                          color: Color(0xFFFFFFFF),
                          fontSize: 35,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        ' tier\n patch 3.0',
                        style: GoogleFonts.lexendDeca(
                          color: Color(0xFF8B97A2),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
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
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Choose build',
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
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 12, 1, 0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16, 0, 0, 0),
                              child: InkWell(
                                onTap: () async {
                                  isSecondButton = false;
                                  isFirstButton = true;
                                  setState(() {});
                                  await pageViewController.animateToPage(
                                    0,
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.ease,
                                  );
                                },
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
                                        color: const Color(0xFF0D1821),
                                        borderRadius: BorderRadius.circular(8),
                                        shape: BoxShape.rectangle,
                                        border: isFirstButton
                                            ? Border.all(color: Colors.white)
                                            : null),
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: const AlignmentDirectional(
                                              0, -0.05),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                'assets/images/memes/standardbuild.jpg',
                                                width: 50,
                                                height: 50,
                                                fit: BoxFit.cover,
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 8, 0, 0),
                                                child: AutoSizeText(
                                                  'STANDARD BUILD',
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.lexendDeca(
                                                    color: Color(0xFF8B97A2),
                                                    fontSize: 13,
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
                              padding: const EdgeInsetsDirectional.fromSTEB(
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
                                      color: const Color(0xFF0D1821),
                                      borderRadius: BorderRadius.circular(8),
                                      border: isSecondButton
                                          ? Border.all(color: Colors.white)
                                          : null),
                                  child: InkWell(
                                    onTap: () async {
                                      isSecondButton = true;
                                      isFirstButton = false;
                                      setState(() {});
                                      await pageViewController.animateToPage(
                                        1,
                                        duration:
                                            const Duration(milliseconds: 500),
                                        curve: Curves.ease,
                                      );
                                    },
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: const AlignmentDirectional(
                                              0, -0.05),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                'assets/images/memes/pepechad.png',
                                                width: 50,
                                                height: 50,
                                                fit: BoxFit.cover,
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 8, 0, 0),
                                                child: AutoSizeText(
                                                  'ALTERNATIVE BUILD',
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.lexendDeca(
                                                    color: Color(0xFF8B97A2),
                                                    fontSize: 13,
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
                    SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 8, 0, 8),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: 165,
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
                                    Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xFF0D1821),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 7, 8, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 15, 0),
                                                  child: Text(
                                                    'ITEMS',
                                                    style:
                                                        GoogleFonts.lexendDeca(
                                                      fontSize: 12,
                                                      color: Color(0xA5F5F5F5),
                                                    ),
                                                  ),
                                                ),
                                                pageviewIconsquare(
                                                    image:
                                                        widget.data.item1),
                                                pageviewIconsquare(
                                                    image:
                                                        widget.data.item2),
                                                pageviewIconsquare(
                                                    image:
                                                        widget.data.item3),
                                                pageviewIconsquare(
                                                    image:
                                                        widget.data.item4),
                                                pageviewIconsquare(
                                                    image:
                                                        widget.data.item5),
                                                pageviewIconsquare(
                                                    image:
                                                        widget.data.item6),
                                              ],
                                            ),
                                            Divider(
                                              color: Color(0xFFF5F5F5),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 10, 0),
                                                  child: Text(
                                                    'RUNES',
                                                    style:
                                                        GoogleFonts.lexendDeca(
                                                      fontSize: 12,
                                                      color: Color(0xA5F5F5F5),
                                                    ),
                                                  ),
                                                ),
                                                pageviewIconcircle(
                                                    image:
                                                    widget.data.rune1),
                                                pageviewIconcircle(
                                                    image:
                                                    widget.data.rune2),
                                                pageviewIconcircle(
                                                    image:
                                                    widget.data.rune3),
                                                pageviewIconcircle(
                                                    image:
                                                        widget.data.rune4),
                                              ],
                                            ),
                                            Divider(
                                              color: Color(0xFFF5F5F5),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 13, 0),
                                                  child: Text(
                                                    'SPELLS',
                                                    textAlign: TextAlign.start,
                                                    style:
                                                        GoogleFonts.lexendDeca(
                                                      fontSize: 12,
                                                      color: Color(0xA5F5F5F5),
                                                    ),
                                                  ),
                                                ),
                                                pageviewIconsquare(
                                                    image:
                                                        widget.data.spell1),
                                                pageviewIconsquare(
                                                    image:
                                                        widget.data.spell2),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xFF0D1821),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 7, 8, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 15, 0),
                                                  child: Text(
                                                    'ITEMS',
                                                    style:
                                                        GoogleFonts.lexendDeca(
                                                      fontSize: 12,
                                                      color: Color(0xA5F5F5F5),
                                                    ),
                                                  ),
                                                ),
                                                pageviewIconsquare(
                                                    image:
                                                        widget.data.altitem1),
                                                pageviewIconsquare(
                                                    image:
                                                        widget.data.altitem2),
                                                pageviewIconsquare(
                                                    image:
                                                        widget.data.altitem3),
                                                pageviewIconsquare(
                                                    image:
                                                        widget.data.altitem4),
                                                pageviewIconsquare(
                                                    image:
                                                        widget.data.altitem5),
                                                pageviewIconsquare(
                                                    image:
                                                        widget.data.altitem6),
                                              ],
                                            ),
                                            Divider(
                                              color: Color(0xFFF5F5F5),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 10, 0),
                                                  child: Text(
                                                    'RUNES',
                                                    style:
                                                        GoogleFonts.lexendDeca(
                                                      fontSize: 12,
                                                      color: Color(0xA5F5F5F5),
                                                    ),
                                                  ),
                                                ),
                                                pageviewIconcircle(
                                                  image: widget.data.altrune1,
                                                ),
                                                pageviewIconcircle(
                                                  image: widget.data.altrune2,
                                                ),
                                                pageviewIconcircle(
                                                  image: widget.data.altrune3,
                                                ),
                                                pageviewIconcircle(
                                                  image: widget.data.altrune4,
                                                ),
                                              ],
                                            ),
                                            Divider(
                                              color: Color(0xFFF5F5F5),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 13, 0),
                                                  child: Text(
                                                    'SPELLS',
                                                    textAlign: TextAlign.start,
                                                    style:
                                                        GoogleFonts.lexendDeca(
                                                      fontSize: 12,
                                                      color: Color(0xA5F5F5F5),
                                                    ),
                                                  ),
                                                ),
                                                pageviewIconsquare(
                                                    image:
                                                        widget.data.altspell1),
                                                pageviewIconsquare(
                                                    image:
                                                        widget.data.altspell2),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 8),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.9,
                                      height: 135,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF0D1821),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.1,
                                                child: AutoSizeText(
                                                  'start order',
                                                  style: GoogleFonts.lexendDeca(
                                                    fontSize: 12,
                                                    color: Colors.white,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              pageviewSkillIcon(
                                                image:
                                                    widget.data.startskill1,
                                              ),
                                              Icon(
                                                Icons.double_arrow_outlined,
                                                color: Color(0xFFF5F5F5),
                                                size: 24,
                                              ),
                                              pageviewSkillIcon(
                                                image:
                                                    widget.data.startskill2,
                                              ),
                                              Icon(
                                                Icons.double_arrow_outlined,
                                                color: Color(0xFFF5F5F5),
                                                size: 24,
                                              ),
                                              pageviewSkillIcon(
                                                image:
                                                    widget.data.startskill3,
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.1,
                                                child: Text(
                                                  'max order',
                                                  style: GoogleFonts.lexendDeca(
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              pageviewSkillIcon(
                                                image:
                                                    widget.data.maxskill1,
                                              ),
                                              Icon(
                                                Icons.double_arrow_outlined,
                                                color: Color(0xFFF5F5F5),
                                                size: 24,
                                              ),
                                              pageviewSkillIcon(
                                                image:
                                                    widget.data.maxskill2,
                                              ),
                                              Icon(
                                                Icons.double_arrow_outlined,
                                                color: Color(0xFFF5F5F5),
                                                size: 24,
                                              ),
                                              pageviewSkillIcon(
                                                image:
                                                    widget.data.maxskill3,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20, 0, 20, 15),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Watch a pro guide',
                                  style: GoogleFonts.lexendDeca(
                                    color: Color(0xFF8B97A2),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onLongPress: () async {
                              await launchURL(widget.data.url);
                            },
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
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
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      );

  Widget buildLandscape() => Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 15),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.2,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                    child: AutoSizeText(
                      widget.data.name,
                      minFontSize: 10,
                      maxFontSize: 35,
                      maxLines: 1,
                      style: GoogleFonts.lexendDeca(
                        color: Color(0xFFFFFFFF),
                        fontSize: 35,
                        fontWeight: FontWeight.normal,
                        shadows: <Shadow>[
                          Shadow(
                            blurRadius: 35,
                            color: Color(0xFF8B97A2),
                            offset: Offset(0,0)
                          )
                        ]
                      ),
                    ),

                  ),
                  Padding(
                    padding:
                    const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                    child: AutoSizeText(
                      ' champion',
                      style: GoogleFonts.lexendDeca(
                        color: Color(0xFF8B97A2),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                    child: AutoSizeText(
                      widget.data.lane,
                      minFontSize: 10,
                      maxFontSize: 35,
                      maxLines: 1,
                      style: GoogleFonts.lexendDeca(
                        color: Color(0xFFFFFFFF),
                        fontSize: 35,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                    child: AutoSizeText(
                      ' lane',
                      style: GoogleFonts.lexendDeca(
                        color: Color(0xFF8B97A2),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AutoSizeText(
                          widget.data.tier,
                          maxLines: 1,
                          maxFontSize: 45,
                          style: GoogleFonts.lexendDeca(
                            color: Color(0xFFFFFFFF),
                            fontSize: 45,
                            fontWeight: FontWeight.normal,
                          ),
                        ),

                        AutoSizeText(
                          ' tier\n patch 3.0',
                          style: GoogleFonts.lexendDeca(
                            color: Color(0xFF8B97A2),
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
            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: ParallaxArea(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: ParallaxWidget(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Material(
                          color: Colors.transparent,
                          elevation: 0,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20, 45, 20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Choose build',
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
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 12, 1, 0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
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
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                            color: const Color(0xFF0D1821),
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
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Image.asset(
                                                    'assets/images/memes/standardbuild.jpg',
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
                                                      'STANDARD BUILD',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: GoogleFonts
                                                          .lexendDeca(
                                                        color:
                                                            Color(0xFF8B97A2),
                                                        fontSize: 13,
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
                                  padding: const EdgeInsetsDirectional.fromSTEB(
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
                                          color: const Color(0xFF0D1821),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border: isSecondButton
                                              ? Border.all(color: Colors.white)
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
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Image.asset(
                                                    'assets/images/memes/pepechad.png',
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
                                                      'ALTERNATE BUILD',
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                height: 165,
                                decoration: BoxDecoration(
                                  color: Color(0x00090F13),
                                  boxShadow: [
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
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0xFF0D1821),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 7, 8, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 15, 0),
                                                      child: Text(
                                                        'ITEMS',
                                                        style: GoogleFonts
                                                            .lexendDeca(
                                                          fontSize: 12,
                                                          color:
                                                              Color(0xA5F5F5F5),
                                                        ),
                                                      ),
                                                    ),
                                                    pageviewIconsquare(
                                                      image:
                                                          (widget.data.item1),
                                                    ),
                                                    pageviewIconsquare(
                                                      image:
                                                          (widget.data.item2),
                                                    ),
                                                    pageviewIconsquare(
                                                      image:
                                                          (widget.data.item3),
                                                    ),
                                                    pageviewIconsquare(
                                                      image:
                                                          (widget.data.item4),
                                                    ),
                                                    pageviewIconsquare(
                                                      image:
                                                          (widget.data.item5),
                                                    ),
                                                    pageviewIconsquare(
                                                      image:
                                                          (widget.data.item6),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Divider(
                                                color: Color(0xFFF5F5F5),
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 10, 0),
                                                      child: Text(
                                                        'RUNES',
                                                        style: GoogleFonts
                                                            .lexendDeca(
                                                          fontSize: 12,
                                                          color:
                                                              Color(0xA5F5F5F5),
                                                        ),
                                                      ),
                                                    ),
                                                    pageviewIconcircle(
                                                      image: widget.data.rune1,
                                                    ),
                                                    pageviewIconcircle(
                                                      image: widget.data.rune2,
                                                    ),
                                                    pageviewIconcircle(
                                                      image: widget.data.rune3,
                                                    ),
                                                    pageviewIconcircle(
                                                      image: widget.data.rune4,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Divider(
                                                color: Color(0xFFF5F5F5),
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 13, 0),
                                                      child: Text(
                                                        'SPELLS',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: GoogleFonts
                                                            .lexendDeca(
                                                          fontSize: 12,
                                                          color:
                                                              Color(0xA5F5F5F5),
                                                        ),
                                                      ),
                                                    ),
                                                    pageviewIconcircle(
                                                      image: widget.data.spell1,
                                                    ),
                                                    pageviewIconcircle(
                                                      image: widget.data.spell2,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0xFF0D1821),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 7, 8, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 15, 0),
                                                    child: Text(
                                                      'ITEMS',
                                                      style: GoogleFonts
                                                          .lexendDeca(
                                                        fontSize: 12,
                                                        color:
                                                            Color(0xA5F5F5F5),
                                                      ),
                                                    ),
                                                  ),
                                                  pageviewIconsquare(
                                                    image:
                                                        (widget.data.altitem1),
                                                  ),
                                                  pageviewIconsquare(
                                                    image:
                                                        (widget.data.altitem2),
                                                  ),
                                                  pageviewIconsquare(
                                                    image:
                                                        (widget.data.altitem3),
                                                  ),
                                                  pageviewIconsquare(
                                                    image:
                                                        (widget.data.altitem4),
                                                  ),
                                                  pageviewIconsquare(
                                                    image:
                                                        (widget.data.altitem5),
                                                  ),
                                                  pageviewIconsquare(
                                                    image:
                                                        (widget.data.altitem6),
                                                  ),
                                                ],
                                              ),
                                              Divider(
                                                color: Color(0xFFF5F5F5),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 10, 0),
                                                    child: Text(
                                                      'RUNES',
                                                      style: GoogleFonts
                                                          .lexendDeca(
                                                        fontSize: 12,
                                                        color:
                                                            Color(0xA5F5F5F5),
                                                      ),
                                                    ),
                                                  ),
                                                  pageviewIconcircle(
                                                    image: widget.data.altrune1,
                                                  ),
                                                  pageviewIconcircle(
                                                    image: widget.data.altrune2,
                                                  ),
                                                  pageviewIconcircle(
                                                    image: widget.data.altrune3,
                                                  ),
                                                  pageviewIconcircle(
                                                    image: widget.data.altrune4,
                                                  ),
                                                ],
                                              ),
                                              Divider(
                                                color: Color(0xFFF5F5F5),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 13, 0),
                                                    child: Text(
                                                      'SPELLS',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: GoogleFonts
                                                          .lexendDeca(
                                                        fontSize: 12,
                                                        color:
                                                            Color(0xA5F5F5F5),
                                                      ),
                                                    ),
                                                  ),
                                                  pageviewIconcircle(
                                                    image:
                                                        widget.data.altspell1,
                                                  ),
                                                  pageviewIconcircle(
                                                    image:
                                                        widget.data.altspell2,
                                                  ),
                                                ],
                                              ),
                                            ],
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
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20, 8, 20, 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Skill order',
                                style: GoogleFonts.lexendDeca(
                                  color: Color(0xFF8B97A2),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16, 8, 16, 8),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    height: 135,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF0D1821),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.1,
                                              child: Text(
                                                'start order',
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.lexendDeca(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            pageviewSkillIcon(
                                              image:
                                                  widget.data.startskill1,
                                            ),
                                            Icon(
                                              Icons.double_arrow_outlined,
                                              color: Color(0xFFF5F5F5),
                                              size: 24,
                                            ),
                                            pageviewSkillIcon(
                                              image:
                                                  widget.data.startskill2,
                                            ),
                                            Icon(
                                              Icons.double_arrow_outlined,
                                              color: Color(0xFFF5F5F5),
                                              size: 24,
                                            ),
                                            pageviewSkillIcon(
                                              image:
                                                  widget.data.startskill3,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.1,
                                              child: Text(
                                                'max order',
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.lexendDeca(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            pageviewSkillIcon(
                                              image:
                                                  widget.data.maxskill1,
                                            ),
                                            Icon(
                                              Icons.double_arrow_outlined,
                                              color: Color(0xFFF5F5F5),
                                              size: 24,
                                            ),
                                            pageviewSkillIcon(
                                              image:
                                                  widget.data.maxskill2,
                                            ),
                                            Icon(
                                              Icons.double_arrow_outlined,
                                              color: Color(0xFFF5F5F5),
                                              size: 24,
                                            ),
                                            pageviewSkillIcon(
                                              image:
                                                  widget.data.maxskill3,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ))
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20, 12, 20, 20),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Watch a pro guide',
                                style: GoogleFonts.lexendDeca(
                                  color: Color(0xFF8B97A2),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onLongPress: () async {
                            await launchURL(widget.data.url);
                          },
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 25),
                            child: YoutubePlayer(
                              url: widget.data.url,
                              width: MediaQuery.of(context).size.width * 0.5,
                              autoPlay: false,
                              looping: false,
                              mute: true,
                              showControls: true,
                              showFullScreen: true,
                            ),
                          ),
                        )
                      ],
                    ),
                    background: Image.asset(
                      'assets/images/image_tiles/Ahri_portrait.jpg',
                      fit: BoxFit.fitHeight,
                    ),
                    overflowHeightFactor: 1.5,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
}

