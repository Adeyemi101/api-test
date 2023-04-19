part of 'config.dart';

abstract class AppIcons {
  //Bottom nav
  static const ImageIcon home = ImageIcon( AssetImage('assets/icons/home.png'));
  static const ImageIcon search = ImageIcon( AssetImage('assets/icons/search.png'));
  static const ImageIcon orders = ImageIcon( AssetImage('assets/icons/orders.png'));
  static const ImageIcon profile = ImageIcon( AssetImage('assets/icons/profile.png'));

  static const Color primary = Color(0xFF008EFF);
  static const Color secondary = Color(0xFFF474FF);
  static const Color neutral = Color(0xFFF1F1F1);
  static const Color background = Color(0xFFFAFAFA);

  //system colours
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);
  static const Color grey = Color(0xFFB7B7B7);
  static const Color green = Color(0xFF96D398);
  static const Color orange = Color(0xFFEFB86E);
  static const Color red = Color(0xFFED7373);
  static const Color blue = Color(0xFF00D8FF);

  //text colours
  static const Color textDark = Color(0xFF1D1D1F);
  static const Color textMedium = Color(0xFF494949);
  static const Color textLight = Color(0xFF707070);

  //gradients
  static const LinearGradient mainGradient = LinearGradient(colors: [
    primary,
    Color(0xFFA780FF),
    secondary,
  ]);
  static const LinearGradient ongoingGradient = LinearGradient(colors: [
    primary,
    blue,
  ]);
  static const LinearGradient completeGradient = LinearGradient(colors: [
    primary,
    green,
  ]);
  static const LinearGradient missedGradient = LinearGradient(colors: [
    primary,
    red,
  ]);
  static const LinearGradient lateGradient = LinearGradient(colors: [
    primary,
    orange,
  ]);

  static const LinearGradient primaryGradient = LinearGradient(colors: [
    primary,
    primary,
  ]);
  static const LinearGradient secondaryGradient = LinearGradient(colors: [
    secondary,
    secondary,
  ]);
  static const LinearGradient neutralGradient = LinearGradient(colors: [
    neutral,
    neutral,
  ]);
  static const LinearGradient backgroundGradient = LinearGradient(colors: [
    background,
    background,
  ]);
  static const LinearGradient greyGradient = LinearGradient(colors: [
    grey,
    grey,
  ]);

  //utils
  static const Color none = Color(0x00000000);
  static const Color glass = Color(0x32FFFFFF);
  static const Color borderLight = Color(0xFFB7B7B7);
  static const Color borderDark = Color(0x33B7B7B7);
  static const Color overlay = Color(0x0F000000);

  //specific colours
  static const Color h1 = textDark;
  static const Color h2 = textDark;
  static const Color h3 = textDark;
  static const Color h4 = grey;
  static const Color h5 = textMedium;

  static const Color p = textLight;

  static const Color link = primary;
}

//
// static const Color black = Color(0xFF000000);
// static const Color darkBlack = Color(0xFF1D1D1F);
// static const Color mediumBlack = Color(0xFF494949);
// static const Color lightBlack = Color(0xFF707070);
// static const Color white = Color(0xFFFFFFFF);
// static const Color glass = Color(0x32FFFFFF);
// static const Color lightGrey = Color(0xFFFAFAFA);
// static const Color mediumGrey = Color(0xFFF1F1F1);
// static const Color grey = Color(0xFFB7B7B7);
// static const Color hotPink = Color(0xFFF474FF);
// static const Color electricBlue = Color(0xFF008EFF);
// static const Color lightBlue = Color(0xFF00D8FF);
// static const Color green = Color(0xFF96D398);
// static const Color red = Color(0xFFED7373);
// static const Color orange = Color(0xFFEFB86E);

// static const Color dividerDark = Color(0xFFB7B7B7);
// static const Color dividerLight = Color(0x33B7B7B7);
