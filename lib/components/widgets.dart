import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoutedButton extends StatelessWidget {
  final String title;
  final Widget route;
  RoutedButton({Key key, this.title, this.route});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: OutlineButton(
        color: Colors.white,
        borderSide: BorderSide(color: Colors.black),
        highlightedBorderColor: Colors.black,
        child: Text(
          title,
          style: GoogleFonts.robotoMono(textStyle: TextStyle(fontSize: 16)),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => route),
          );
        },
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(4),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget with PreferredSizeWidget {
  final String title;
  Header({Key key, this.title});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title,
          style: GoogleFonts.robotoMono(
              textStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 26,
                  color: Colors.black))),
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
    );
  }
}

class Footnote extends StatelessWidget {
  final String text;
  Footnote({Key key, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      child: Text(
        "Kits should be placed at Work, Home, and in car.",
        textAlign: TextAlign.center,
        style: GoogleFonts.robotoMono(
            textStyle: TextStyle(color: Colors.grey[600])),
      ),
    );
  }
}
