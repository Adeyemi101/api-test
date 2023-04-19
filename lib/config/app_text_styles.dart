part of 'config.dart';

abstract class AppTextStyles {
  //page title
  static final TextStyle h1 = GoogleFonts.roboto(
    fontSize: 36,
    color: AppColours.h1,
    fontWeight: FontWeight.bold,
  );

  //login title
  static final TextStyle h2 = GoogleFonts.roboto(
    fontSize: 24,
    color: AppColours.h2,
    fontWeight: FontWeight.bold,
  );

  //username
  static final TextStyle h3 = GoogleFonts.roboto(
    fontSize: 20,
    color: AppColours.h3,
    fontWeight: FontWeight.bold,
  );

  //page subtitles
  static final TextStyle h4 = GoogleFonts.roboto(
    fontSize: 16,
    color: AppColours.h4,
    fontWeight: FontWeight.normal,
  );

  //card titles
  static final TextStyle h5 = GoogleFonts.roboto(
    fontSize: 16,
    color: AppColours.h5,
    fontWeight: FontWeight.normal,
  );

  //contents
  static final TextStyle p = GoogleFonts.roboto(
    fontSize: 16,
    color: AppColours.p,
    fontWeight: FontWeight.normal,
  );

  static final TextStyle pPrimary = GoogleFonts.roboto(
    fontSize: 16,
    color: AppColours.primary,
    fontWeight: FontWeight.normal,
  );

  static final TextStyle pSecondary = GoogleFonts.roboto(
    fontSize: 16,
    color: AppColours.secondary,
    fontWeight: FontWeight.normal,
  );

  static final TextStyle pError = GoogleFonts.roboto(
    fontSize: 16,
    color: AppColours.red,
    fontWeight: FontWeight.normal,
  );

  //table headers
  static final TextStyle pGrey = GoogleFonts.roboto(
    fontSize: 16,
    color: AppColours.grey,
    fontWeight: FontWeight.normal,
  );

  //login text
  static final TextStyle pLogin = GoogleFonts.roboto(
    fontSize: 14,
    color: AppColours.textMedium,
    fontWeight: FontWeight.normal,
  );

  static final TextStyle pWhite = GoogleFonts.roboto(
    fontSize: 16,
    color: AppColours.white,
    fontWeight: FontWeight.normal,
  );

  //input fields
  static final TextStyle inputField = GoogleFonts.roboto(
    fontSize: 14,
    color: AppColours.textMedium,
    fontWeight: FontWeight.bold,
  );

  //error text
  static final TextStyle error = GoogleFonts.roboto(
    fontSize: 14,
    color: AppColours.red,
    fontWeight: FontWeight.normal,
  );

  //button text
  static final TextStyle buttonText = GoogleFonts.roboto(
    fontSize: 16,
    color: AppColours.white,
    fontWeight: FontWeight.normal,
  );

  static final TextStyle small = GoogleFonts.roboto(
    fontSize: 12,
    color: AppColours.textMedium,
    fontWeight: FontWeight.normal,
  );

  static final TextStyle helperText = GoogleFonts.roboto(
    fontSize: 12,
    color: AppColours.p,
    fontWeight: FontWeight.normal,
  );
}
