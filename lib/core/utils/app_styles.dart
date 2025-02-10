import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppStyles {
  // Regular - 16
  static TextStyle regular16(BuildContext context) {
    return GoogleFonts.montserrat(
      fontSize: 16,
      fontWeight: FontWeight.w400,
    );
  }

  // Medium - 16
  static TextStyle medium16(BuildContext context) {
    return GoogleFonts.montserrat(
      fontSize: 16,
      fontWeight: FontWeight.w500,
    );
  }

  // SemiBold - 16
  static TextStyle semiBold16(BuildContext context) {
    return GoogleFonts.montserrat(
      fontSize: 16,
      fontWeight: FontWeight.w600,
    );
  }

  // SemiBold - 20
  static TextStyle semiBold20(BuildContext context) {
    return GoogleFonts.montserrat(
      fontSize: 20,
      fontWeight: FontWeight.w600,
    );
  }

  // Regular - 12
  static TextStyle regular12(BuildContext context) {
    return GoogleFonts.montserrat(
      fontSize: 12,
      fontWeight: FontWeight.w400,
    );
  }

  // SemiBold - 24
  static TextStyle semiBold24(BuildContext context) {
    return GoogleFonts.montserrat(
      fontSize: 24,
      fontWeight: FontWeight.w600,
    );
  }

  // Regular - 14
  static TextStyle regular14(BuildContext context) {
    return GoogleFonts.montserrat(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    );
  }

  // SemiBold - 18
  static TextStyle semiBold18(BuildContext context) {
    return GoogleFonts.montserrat(
      fontSize: 18,
      fontWeight: FontWeight.w600,
    );
  }

  // Bold - 16
  static TextStyle bold16(BuildContext context) {
    return GoogleFonts.montserrat(
      fontSize: 16,
      fontWeight: FontWeight.w700,
    );
  }

  // Medium - 20
  static TextStyle medium20(BuildContext context) {
    return GoogleFonts.montserrat(
      fontSize: 20,
      fontWeight: FontWeight.w500,
    );
  }
}
