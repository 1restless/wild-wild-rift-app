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
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: GridView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: itemGriddata.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1,
                    ),
                    shrinkWrap: true,
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
      child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Stack(
            children: [
              Image.asset(
                itemGriddata.image,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.94),
                child: AutoSizeText(
                  itemGriddata.name,
                  style: GoogleFonts.lexendDeca(
                    shadows: [
                      Shadow(
                          blurRadius: 15.0,
                          color: Colors.black,
                          offset: Offset(0.0, 0.0)),
                      Shadow(blurRadius: 10,
                      color: Colors.black,)
                    ],
                    color: Color(0xFFF5F5F5),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
