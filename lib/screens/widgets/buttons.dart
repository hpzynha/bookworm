import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  const PrimaryButton({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 360,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          title,
          style: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.w400),
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(bPrimaryColor)),
      ),
    );
  }
}

class GoogleButton extends StatelessWidget {
  final String title;
  const GoogleButton({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 360,
      child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(bBackgroundColorWhite)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/google.png'),
              Text(title,
                  style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: bPrimaryColor)),
            ],
          )),
    );
  }
}

class LineTextButton extends StatelessWidget {
  final String title;
  final String textButton;
  const LineTextButton({
    Key? key,
    required this.title,
    required this.textButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
              color: bPrimaryColor,
              fontWeight: FontWeight.normal,
              fontSize: 18),
        ),
        TextButton(
          onPressed: () => {},
          child: Text(
            textButton,
            style: GoogleFonts.poppins(
                color: bRatingColor, fontWeight: FontWeight.w500, fontSize: 18),
          ),
        )
      ],
    );
  }
}
