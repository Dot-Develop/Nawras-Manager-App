import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'ColorConstants.dart';
SvgPicture getAppIcons({
  @required String asset,
  double size = 40,
  color,
}) {
  return SvgPicture.asset(
    asset,
    width: size,
    height: size,
    color: color == null ? PaletteColors.whiteBg : color,
    fit: BoxFit.contain,
  );
}
class AppIcons {
  // static IconData homeIcon = FontAwesomeIcons.home;
  // static IconData buyPagesIcon = FontAwesomeIcons.clone;
  // static IconData printsIcon = FontAwesomeIcons.print;
  // static IconData graphicDesignIcon = FontAwesomeIcons.penNib;
  // static IconData sponsorIcon = FontAwesomeIcons.bullhorn;
  // static IconData settingsIcon = FontAwesomeIcons.userCog;
  // static IconData propertiesIcon = FontAwesomeIcons.userEdit;
  // static IconData addressIcon = FontAwesomeIcons.mapMarkedAlt;
  // static IconData editAccountIcon = FontAwesomeIcons.userAltSlash;
  // static IconData contactIcon = FontAwesomeIcons.questionCircle;
  // static IconData myAccountIcon = FontAwesomeIcons.user;
  // static IconData myAccountSolidIcon = FontAwesomeIcons.solidUser;
  // static IconData myWalletIcon = FontAwesomeIcons.wallet;
  // static IconData myPointsIcon = FontAwesomeIcons.award;
  // static IconData logoutIcon = FontAwesomeIcons.signOutAlt;
  // static IconData languageIcon = FontAwesomeIcons.globeAfrica;



  static String fff = 'assets/images/favorite.svg';
  static String favoriteItem = 'assets/images/favorite_Item.svg';
  static String about = 'assets/images/About.svg';
  static String back = 'assets/images/Back.svg';
  static String darkMode = 'assets/images/darkmode.svg';
  static String date = 'assets/images/Date.svg';
  static String feedback = 'assets/images/Feedback.svg';
  static String filter = 'assets/images/Filter.svg';
  static String home = 'assets/images/Home.svg';
  static String language = 'assets/images/Language.svg';
  static String logout = 'assets/images/logout.svg';
  static String manager = 'assets/images/Manager.svg';
  static String market = 'assets/images/Market.svg';
  static String noCard = 'assets/images/nocard.svg';
  static String noNotification = 'assets/images/noNotification.svg';
  static String noFavorite = 'assets/images/no_favorite.svg';
  static String bin = 'assets/images/bin.svg';
  static String notifivations = 'assets/images/Notifivations.svg';
  static String phone = 'assets/images/Phone.svg';

  static String plus = 'assets/images/Plus.svg';

  static String price = 'assets/images/Price.svg';

  static String profile = 'assets/images/Profile.svg';

  static String salesPerson = 'assets/images/Salesperson.svg';

  static String search = 'assets/images/Search.svg';

  static String settings = 'assets/images/Setting.svg';

  static String shop = 'assets/images/Shop.svg';

  static String shop1 = 'assets/images/Shop_1.svg';

  static String shop2 = 'assets/images/Shop_2.svg';

  static String shopEmpty = 'assets/images/Shop_Empty.svg';

  static String supervisor = 'assets/images/SuperVisor.svg';

  static String update = 'assets/images/Update.svg';
}
