import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 16.0;

Color primaryColor = Color(0xFF284678);
Color secondaryColor = Color(0xFFA5B3CA);
Color subtitleColor = Color(0xFFBE4A54);
Color accentColor = Color(0xFFF9B432);
Color darkColor = Color(0xFF1D1D1D);
Color lightColor = Color(0xFFFFFFFF);
Color semiGreyColor = Color(0xFFE3E3E3);
Color greyColor = Color(0xFFC4C4C4);
Color titleColor = Color(0xFF7389AC);
Color backgroundColor1 = Color(0xFFEEEEEE);
Color backgroundColor2 = Color(0xFFFBFBFB);
Color backgroundColor3 = Color(0xFFFFFFFF);

TextStyle headingTextStyle = GoogleFonts.nunito(
  color: lightColor,
);

TextStyle titleTextStyle = GoogleFonts.nunitoSans(
  color: semiGreyColor,
);

TextStyle primaryTextStyle = GoogleFonts.poppins(
  color: primaryColor,
);

TextStyle secondaryTextStyle = GoogleFonts.poppins(
  color: secondaryColor,
);

TextStyle subtitleTextStyle = GoogleFonts.poppins(
  color: subtitleColor,
);

TextStyle accentTextStyle = GoogleFonts.poppins(
  color: accentColor,
);

TextStyle darkColorTextStyle = GoogleFonts.poppins(
  color: darkColor,
);

TextStyle lightColorTextStyle = GoogleFonts.poppins(
  color: lightColor,
);

TextStyle semiGreyTextStyle = GoogleFonts.poppins(
  color: semiGreyColor,
);

TextStyle greyTextStyle = GoogleFonts.poppins(
  color: greyColor,
);
TextStyle title2TextStyle = GoogleFonts.poppins(
  color: titleColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;

ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom(
  primary: accentColor,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(24),
  ),
);

ButtonStyle secondaryButtonStyle = ElevatedButton.styleFrom(
  primary: primaryColor,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(24),
  ),
);

Border primaryBorder = Border.all(
  width: 1.0,
  color: primaryColor,
);

BoxShadow primaryBoxShadow = BoxShadow(
  color: Colors.black.withOpacity(0.15),
  spreadRadius: 0,
  blurRadius: 24,
  offset: Offset(0, 8), // changes position of shadow
);
