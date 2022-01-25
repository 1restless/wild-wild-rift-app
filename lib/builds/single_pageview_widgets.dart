import 'package:flutter/material.dart';
import 'package:wild_wild_rift/data/model.dart';

class pageviewIconcircle extends StatelessWidget {
  final image;


  pageviewIconcircle({ this.image});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(image).image,
            ),
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}

class pageviewIconsquare extends StatelessWidget {
  final image;
  final Data data;

  pageviewIconsquare({this.image,this.data});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(image).image,
            ),
          ),
        ),
      ),
    );
  }
}

class pageviewSkillIcon extends StatelessWidget {
  final image;

  pageviewSkillIcon({ this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Color(0xEEEEEE),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: Image.asset(image,
          ).image,
        ),
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: Colors.white,
          width: 1,
        ),
      ),
    );
  }
}
