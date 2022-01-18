import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:wild_wild_rift/builds/single_page.dart';
import 'package:wild_wild_rift/data/model.dart';
import 'package:google_fonts/google_fonts.dart';

class GridViewPage extends StatefulWidget {
  @override
  _GridViewPage createState() => _GridViewPage();
}

class _GridViewPage extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                SliverAppBar(
                  stretchTriggerOffset: 10,
                  floating: true,
                  pinned: false,
                  snap: true,
                  backgroundColor: const Color(0xFF090F13),
                  automaticallyImplyLeading: true,
                  title: Text(
                    'Champions',
                    style: GoogleFonts.lexendDeca(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  elevation: 2,
                ),
              ],
          body: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: GridView.builder(
                    itemCount: itemGriddata.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 1,
                      childAspectRatio: 0.75,
                    ),
                    itemBuilder: (context, index) {
                      return GridSingleItem(
                        itemGriddata: itemGriddata[index],
                        onTap: () async {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      SinglePage(itemGriddata[index])));
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          )));
}

class GridSingleItem extends StatelessWidget {
  final itemGriddata;
  final Function() onTap;

  const GridSingleItem({Key key, @required this.itemGriddata, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          itemGriddata.image,
                        ).image,
                      ),
                    ),
                  ),
                ),
                AutoSizeText(
                  itemGriddata.name,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lexendDeca(
                    color: Color(0xFFF5F5F5),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
