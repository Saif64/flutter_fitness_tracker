import 'dart:ui';

import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

final class TextType {
  static TextStyle bigText() {
    return GoogleFonts.montserrat(
      fontSize: 20,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle seeAll() {
    return GoogleFonts.montserrat(
      color: Color(0xffF97316),
      fontWeight: FontWeight.w500,
      fontSize: 16,
    );
  }
}
