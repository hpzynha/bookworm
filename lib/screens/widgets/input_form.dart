import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';

class InputForm extends StatelessWidget {
  final String title;
  final String labelText;
  final String hintText;

  const InputForm({
    Key? key,
    required this.title,
    required this.labelText,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, bottom: 10, top: 20),
          child: Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: bPrimaryColor,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: TextFormField(
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.never,
              filled: true,
              fillColor: bBackgroundColorWhite,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              labelText: labelText,
              hintText: hintText,
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: bPrimaryColor),
                  borderRadius: BorderRadius.circular(15)),
            ),
          ),
        ),
      ],
    );
  }
}
