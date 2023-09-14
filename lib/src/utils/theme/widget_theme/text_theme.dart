import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme{
  static TextTheme lightTextTheme= TextTheme(
      displaySmall: GoogleFonts.montserrat(color: Colors.black87, fontSize: 28),
      displayMedium: GoogleFonts.poppins(color: Colors.black54, fontSize: 24),
      titleSmall: GoogleFonts.montserrat(color: Colors.black87, fontSize: 34),
      displayLarge: GoogleFonts.poppins(color: Colors.black54, fontSize: 24),
  );

  static TextTheme darkTextTheme= TextTheme(
      displaySmall: GoogleFonts.montserrat(color: Colors.white, fontSize: 28),
      displayMedium: GoogleFonts.poppins(color: Colors.white70, fontSize: 24,),
      displayLarge: GoogleFonts.poppins(color: Colors.black54, fontSize: 24),
      titleSmall: GoogleFonts.montserrat(color: Colors.black87, fontSize: 34),

  );


}