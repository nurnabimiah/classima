
import 'package:classimia/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

/// For Roboto Google Font
myStyleRobotoCustom({
  required double fontSize,
  required Color color,
  FontWeight? fontWeight,
  FontStyle? fontStyle,
  double? letterSpacing,
  TextDecoration? decoration,
  Color? decorationColor}){
  return GoogleFonts.inter(fontSize: fontSize, color: color, fontWeight: fontWeight,
      fontStyle: fontStyle, decoration: decoration, decorationColor: decorationColor,
      letterSpacing: letterSpacing);
}

/// For Extra Large Size
myStyleInterExtraLarge({required BuildContext context,Color? color, FontWeight? fontWeight, double? fontSize}){
  return GoogleFonts.inter(fontSize: fontSize ?? 18, color: color ??AppColors.appWhiteColor, fontWeight: fontWeight ?? FontWeight.w800);
}

/// For Large Size
myStyleInterLarge({required BuildContext context,  Color ? color, FontWeight? fontWeight, double? fontSize}){
  return GoogleFonts.inter(fontSize: fontSize ?? 16, color: color ?? AppColors.appWhiteColor, fontWeight: fontWeight ?? FontWeight.w600);
}

/// For Medium Size
myStyleInterMedium({required BuildContext context,  Color? color, FontWeight? fontWeight, double? fontSize}){
  return GoogleFonts.inter(fontSize: fontSize ?? 14, color: color?? AppColors.appWhiteColor, fontWeight: fontWeight ?? FontWeight.w500);
}

/// For Small Size
myStyleInterSmall({required BuildContext context, required Color color, FontWeight? fontWeight, double? fontSize}){
  return GoogleFonts.inter(fontSize: fontSize ?? 12, color: color, fontWeight: fontWeight ?? FontWeight.w400);
}

/// For Very Small Size
myStyleInterVerySmall({required BuildContext context, required Color color, FontWeight? fontWeight, double? fontSize}){
  return GoogleFonts.inter(fontSize: fontSize ?? 10, color: color, fontWeight: fontWeight ?? FontWeight.w400);
}


