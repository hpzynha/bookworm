import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';

class LineTextButton extends StatelessWidget {
  const LineTextButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don’t have an account?',
          style: GoogleFonts.poppins(color: bPrimaryColor),
        ),
        TextButton(
            onPressed: () => {},
            child: Text(
              'Sign Up',
              style: GoogleFonts.poppins(color: bRatingColor),
            ))
      ],
    );
  }
}
