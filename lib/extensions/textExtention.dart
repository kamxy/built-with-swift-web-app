import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension TextModifier on Text {
  Text font({Color? color, TextAlign? textAlign}) {
    return Text(
      data ?? '',
      textAlign: textAlign ?? TextAlign.center,
      style: style?.copyWith(
          fontFamily: GoogleFonts.kaiseiOpti.toString(),
          color: color ?? Colors.black),
    );
  }
}
