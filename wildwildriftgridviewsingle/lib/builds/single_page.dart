import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wild_wild_rift/utils/util.dart';
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
        child: Container(
          child: Scaffold(
            backgroundColor: Color(0xFF090F13),
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
                  elevation: 3,
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
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 25),
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
                                          await pageViewController
                                              .animateToPage(
                                            0,
                                            duration: const Duration(
                                                milliseconds: 500),
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
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
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
                                                            color: Color(
                                                                0xFF8B97A2),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
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
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Container(
                                          width: 100,
                                          height: 100,
                                          decoration: BoxDecoration(
                                              color: const Color(0xFF0D1821),
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
                                                        MainAxisAlignment
                                                            .center,
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
                                                            color: Color(
                                                                0xFF8B97A2),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
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
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            16, 8, 16, 8),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 185,
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
                                          physics:
                                              NeverScrollableScrollPhysics(),
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
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 7, 8, 0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 15, 0),
                                                          child: Text(
                                                            'Items',
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color: Color(
                                                                  0xA5F5F5F5),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 3, 0),
                                                          child: Container(
                                                            width: 45,
                                                            height: 45,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFEEEEEE),
                                                              image:
                                                                  DecorationImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                image:
                                                                    Image.asset(
                                                                  widget.data.item1,
                                                                ).image,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 3, 0),
                                                          child: Container(
                                                            width: 45,
                                                            height: 45,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFEEEEEE),
                                                              image:
                                                                  DecorationImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                image:
                                                                    Image.asset(
                                                                  widget.data.item2,
                                                                ).image,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 3, 0),
                                                          child: Container(
                                                            width: 45,
                                                            height: 45,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFEEEEEE),
                                                              image:
                                                                  DecorationImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                image:
                                                                    Image.asset(
                                                                  widget.data.item3,
                                                                ).image,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 3, 0),
                                                          child: Container(
                                                            width: 45,
                                                            height: 45,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFEEEEEE),
                                                              image:
                                                                  DecorationImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                image:
                                                                    Image.asset(
                                                                  widget.data.item4,
                                                                ).image,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 3, 0),
                                                          child: Container(
                                                            width: 45,
                                                            height: 45,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFEEEEEE),
                                                              image:
                                                                  DecorationImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                image:
                                                                    Image.asset(
                                                                  widget.data.item5,
                                                                ).image,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 3, 0),
                                                          child: Container(
                                                            width: 45,
                                                            height: 45,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFEEEEEE),
                                                              image:
                                                                  DecorationImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                image:
                                                                    Image.asset(
                                                                  widget.data.item6,
                                                                ).image,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Divider(
                                                      color: Color(0xFFF5F5F5),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 10, 0),
                                                          child: Text(
                                                            'Runes',
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color: Color(
                                                                  0xA5F5F5F5),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 3, 0),
                                                          child: Container(
                                                            width: 45,
                                                            height: 45,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFEEEEEE),
                                                              image:
                                                                  DecorationImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                image:
                                                                    Image.asset(
                                                                  widget.data.rune1,
                                                                ).image,
                                                              ),
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 3, 0),
                                                          child: Container(
                                                            width: 45,
                                                            height: 45,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFEEEEEE),
                                                              image:
                                                                  DecorationImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                image:
                                                                    Image.asset(
                                                                  widget.data.rune2,
                                                                ).image,
                                                              ),
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 3, 0),
                                                          child: Container(
                                                            width: 45,
                                                            height: 45,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFEEEEEE),
                                                              image:
                                                                  DecorationImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                image:
                                                                    Image.asset(
                                                                  widget.data.rune3,
                                                                ).image,
                                                              ),
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 3, 0),
                                                          child: Container(
                                                            width: 45,
                                                            height: 45,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFEEEEEE),
                                                              image:
                                                                  DecorationImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                image:
                                                                    Image.asset(
                                                                  widget.data.rune4,
                                                                ).image,
                                                              ),
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Divider(
                                                      color: Color(0xFFF5F5F5),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 13, 0),
                                                          child: Text(
                                                            'Spells',
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color: Color(
                                                                  0xA5F5F5F5),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 3, 0),
                                                          child: Container(
                                                            width: 45,
                                                            height: 45,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFEEEEEE),
                                                              image:
                                                                  DecorationImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                image:
                                                                    Image.asset(
                                                                  widget.data.spell1,
                                                                ).image,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 3, 0),
                                                          child: Container(
                                                            width: 45,
                                                            height: 45,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFEEEEEE),
                                                              image:
                                                                  DecorationImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                image:
                                                                    Image.asset(
                                                                  widget.data.spell2,
                                                                ).image,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
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
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 7, 8, 0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 15, 0),
                                                          child: Text(
                                                            'Items',
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color: Color(
                                                                  0xA5F5F5F5),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 3, 0),
                                                          child: Container(
                                                            width: 45,
                                                            height: 45,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFEEEEEE),
                                                              image:
                                                                  DecorationImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                image:
                                                                    Image.asset(
                                                                  widget.data.altitem1,
                                                                ).image,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 3, 0),
                                                          child: Container(
                                                            width: 45,
                                                            height: 45,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFEEEEEE),
                                                              image:
                                                                  DecorationImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                image:
                                                                    Image.asset(
                                                                  widget.data.altitem2,
                                                                ).image,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 3, 0),
                                                          child: Container(
                                                            width: 45,
                                                            height: 45,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFEEEEEE),
                                                              image:
                                                                  DecorationImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                image:
                                                                    Image.asset(
                                                                  widget.data.altitem3,
                                                                ).image,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 3, 0),
                                                          child: Container(
                                                            width: 45,
                                                            height: 45,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFEEEEEE),
                                                              image:
                                                                  DecorationImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                image:
                                                                    Image.asset(
                                                                  widget.data.altitem4,
                                                                ).image,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 3, 0),
                                                          child: Container(
                                                            width: 45,
                                                            height: 45,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFEEEEEE),
                                                              image:
                                                                  DecorationImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                image:
                                                                    Image.asset(
                                                                  widget.data.altitem5,
                                                                ).image,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 3, 0),
                                                          child: Container(
                                                            width: 45,
                                                            height: 45,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFEEEEEE),
                                                              image:
                                                                  DecorationImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                image:
                                                                    Image.asset(
                                                                  widget.data.altitem6,
                                                                ).image,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Divider(
                                                      color: Color(0xFFF5F5F5),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 10, 0),
                                                          child: Text(
                                                            'Runes',
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color: Color(
                                                                  0xA5F5F5F5),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 3, 0),
                                                          child: Container(
                                                            width: 45,
                                                            height: 45,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFEEEEEE),
                                                              image:
                                                                  DecorationImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                image:
                                                                    Image.asset(
                                                                  widget.data.altrune1,
                                                                ).image,
                                                              ),
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 3, 0),
                                                          child: Container(
                                                            width: 45,
                                                            height: 45,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFEEEEEE),
                                                              image:
                                                                  DecorationImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                image:
                                                                    Image.asset(
                                                                  widget.data.altrune2,
                                                                ).image,
                                                              ),
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 3, 0),
                                                          child: Container(
                                                            width: 45,
                                                            height: 45,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFEEEEEE),
                                                              image:
                                                                  DecorationImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                image:
                                                                    Image.asset(
                                                                  widget.data.altrune3,
                                                                ).image,
                                                              ),
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 3, 0),
                                                          child: Container(
                                                            width: 45,
                                                            height: 45,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFEEEEEE),
                                                              image:
                                                                  DecorationImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                image:
                                                                    Image.asset(
                                                                  widget.data.altrune4,
                                                                ).image,
                                                              ),
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Divider(
                                                      color: Color(0xFFF5F5F5),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 13, 0),
                                                          child: Text(
                                                            'Spells',
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color: Color(
                                                                  0xA5F5F5F5),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 3, 0),
                                                          child: Container(
                                                            width: 45,
                                                            height: 45,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFEEEEEE),
                                                              image:
                                                                  DecorationImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                image:
                                                                    Image.asset(
                                                                  widget.data.altspell1,
                                                                ).image,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 3, 0),
                                                          child: Container(
                                                            width: 45,
                                                            height: 45,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFEEEEEE),
                                                              image:
                                                                  DecorationImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                image:
                                                                    Image.asset(
                                                                  widget.data.altspell2,
                                                                ).image,
                                                              ),
                                                            ),
                                                          ),
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
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20, 0, 20, 8),
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
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              15, 5, 15, 15),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.95,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF0D1821),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: Colors.transparent,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 50,
                                                  height: 30,
                                                  child: Stack(
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0, 0),
                                                        child: Text(
                                                          '1st',
                                                          style: GoogleFonts
                                                              .lexendDeca(
                                                            color: Color(
                                                                0xFF8B97A2),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width: 55,
                                                  height: 55,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    color: Color(0x00EEEEEE),
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: Image.asset(
                                                        widget.data.skill1,
                                                      ).image,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              width: 50,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color: Color(0x00EEEEEE),
                                              ),
                                              child: Align(
                                                alignment:
                                                    AlignmentDirectional(0, 1),
                                                child: FaIcon(
                                                  FontAwesomeIcons
                                                      .solidArrowAltCircleRight,
                                                  color: Color(0xFF8B97A2),
                                                  size: 35,
                                                ),
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 50,
                                                  height: 30,
                                                  child: Stack(
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0, 0),
                                                        child: Text(
                                                          '2nd',
                                                          style: GoogleFonts
                                                              .lexendDeca(
                                                            color: Color(
                                                                0xFF8B97A2),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width: 55,
                                                  height: 55,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    color: Color(0x00EEEEEE),
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: Image.asset(
                                                        widget.data.skill2,
                                                      ).image,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              width: 50,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color: Color(0x00EEEEEE),
                                              ),
                                              child: Align(
                                                alignment:
                                                    AlignmentDirectional(0, 1),
                                                child: FaIcon(
                                                  FontAwesomeIcons
                                                      .solidArrowAltCircleRight,
                                                  color: Color(0xFF8B97A2),
                                                  size: 35,
                                                ),
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 50,
                                                  height: 30,
                                                  child: Stack(
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0, 0),
                                                        child: Text(
                                                          '3rd',
                                                          style: GoogleFonts
                                                              .lexendDeca(
                                                            color: Color(
                                                                0xFF8B97A2),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width: 55,
                                                  height: 55,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    color: Color(0x00EEEEEE),
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: Image.asset(
                                                        widget.data.skill3,
                                                      ).image,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
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
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 35),
                                      child: YoutubePlayer(
                                        url: widget.data.url,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.93,
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
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
