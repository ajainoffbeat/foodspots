import 'package:flutter/material.dart';

class AppThemeData {
  // ------------------ PRIMARY (Orange Brand) ------------------
  static const Color primary50  = Color(0xFFFFF0E8); // very light orange
  static const Color primary100 = Color(0xFFFFD4BF);
  static const Color primary200 = Color(0xFFFFB089);
  static const Color primary300 = Color(0xFFFF8C52);
  static const Color primary400 = Color(0xFFE85C1A); // matches your icon
  static const Color primary500 = Color(0xFFB24514);
  static const Color primary600 = Color(0xFF66270A);

  static const Color surface = Color(0xFFF9FAFB);
  static const Color surfaceDark = Color(0xFF030712);

  // ------------------ INFO (cool blue remains same ORANGE variant) ------------------
  static const Color info50  = Color(0xFFFFF4E5);
  static const Color info100 = Color(0xFFFFE0AC);
  static const Color info200 = Color(0xFFFFCC72);
  static const Color info300 = Color(0xFFFFB838);
  static const Color info400 = Color(0xFFB28226);
  static const Color info500 = Color(0xFF664713);
  static const Color info600 = Color(0xFF1A1100);

  // ------------------ DANGER (red-orange variant) ------------------
  static const Color danger50  = Color(0xFFFFECE8);
  static const Color danger100 = Color(0xFFFFBDB3);
  static const Color danger200 = Color(0xFFFF8D7D);
  static const Color danger300 = Color(0xFFFF5D46);
  static const Color danger400 = Color(0xFFE8381A);
  static const Color danger500 = Color(0xFF8F2310);
  static const Color danger600 = Color(0xFF3A0F08);

  // ------------------ SECONDARY (dark orange to purple blend) ------------------
  static const Color secondary50  = Color(0xFFFBEFF5);
  static const Color secondary100 = Color.fromARGB(255, 245, 218, 196);
  static const Color secondary200 = Color.fromARGB(255, 233, 185, 153);
  static Color  secondary300 = const Color.fromARGB(255, 216, 144, 110);
  static const Color secondary400 = Color.fromARGB(255, 178, 119, 80);
  static const Color secondary500 = Color.fromARGB(255, 102, 68, 45);
  static const Color secondary600 = Color.fromARGB(255, 26, 16, 10);

  // ------------------ SUCCESS (green stays readable but warm-tuned) ------------------
  static const Color success50  = Color(0xFFEFFFF0);
  static const Color success100 = Color(0xFFC6F5CD);
  static const Color success200 = Color(0xFF92EAA5);
  static const Color success300 = Color(0xFF5EDF7C);
  static const Color success400 = Color(0xFF2DBC53);
  static const Color success500 = Color(0xFF1B732F);
  static const Color success600 = Color(0xFF0A2A11);

  // ------------------ WARNING (golden-orange) ------------------
  static const Color warning50  = Color(0xFFFFF6E5);
  static const Color warning100 = Color(0xFFFFE4AC);
  static const Color warning200 = Color(0xFFFFD272);
  static const Color warning300 = Color(0xFFFFC039);
  static const Color warning400 = Color(0xFFB28626);
  static const Color warning500 = Color(0xFF664913);
  static const Color warning600 = Color(0xFF191200);

  // ------------------ GREYS (unchanged) ------------------
  static const Color grey50 = Color(0xFFFFFFFF);
  static const Color grey100 = Color(0xFFF3F4F6);
  static const Color grey200 = Color(0xFFE5E7EB);
  static const Color grey300 = Color(0xFFD1D5DB);
  static const Color grey400 = Color(0xFF9CA3AF);
  static const Color grey500 = Color(0xFF6B7280);
  static const Color grey600 = Color(0xFF4B5563);
  static const Color grey700 = Color(0xFF374151);
  static const Color grey800 = Color(0xFF1F2937);
  static const Color grey900 = Color(0xFF111827);

  static const Color outrageous300 = Color(0xFFE85C1A); // replaced with your brand orange
  static const Color successC400 = Color(0xff26B246);
  static const Color goldenrodDark = Color.fromARGB(255, 202, 124, 35);

  static const Color driverApp50 = Color(0XFFEFF9EB);

  // ------------------ Fonts (unchanged) ------------------
  static const String black = 'Urbanist-Black';
  static const String bold = 'Urbanist-Bold';
  static const String extraBold = 'Urbanist-ExtraBold';
  static const String extraLight = 'Urbanist-ExtraLight';
  static const String light = 'Urbanist-Light';
  static const String medium = 'Urbanist-Medium';
  static const String regular = 'Urbanist-Regular';
  static const String semiBold = 'Urbanist-SemiBold';
  static const String thin = 'Urbanist-Thin';
}
