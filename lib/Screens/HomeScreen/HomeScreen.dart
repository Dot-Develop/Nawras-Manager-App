import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:nawras_manager/Constants/CustomIcons.dart';
import 'package:nawras_manager/GlobalWidgets/Direction.dart';
import 'package:nawras_manager/Screens/HomeScreen/Tabs/MapTab.dart';
import 'package:nawras_manager/Screens/HomeScreen/Tabs/SearchTab.dart';
import 'Tabs/HomeTab.dart';
import 'Tabs/SalePersonTab.dart';
import 'Tabs/SettingsTab.dart';
import 'package:nawras_manager/Constants/AppTextStyle.dart';
import 'package:nawras_manager/Constants/ColorConstants.dart';

import 'Widgets/Notification.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Direction(
      child: Scaffold(
        endDrawer: NotificationDrawer(),
        backgroundColor: PaletteColors.whiteBg,
        appBar: AppBar(
          title: Text(
            "NAWRAS",
            style: AppTextStyle.boldTitle22.copyWith(
              color: PaletteColors.whiteBg,
            ),
          ),
          automaticallyImplyLeading: false,
          centerTitle: true,
          iconTheme: IconThemeData(color: PaletteColors.whiteBg),
          backgroundColor: PaletteColors.mainAppColor,
          actions: [
            Builder(
              builder: (context) => IconButton(
                icon: getAppIcons(
                    asset: AppIcons.notifivations,
                    color: PaletteColors.whiteBg),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavyBar(
          backgroundColor: PaletteColors.mainAppColor,
          selectedIndex: _selectedIndex,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          containerHeight: 50,
          curve: Curves.fastLinearToSlowEaseIn,
          iconSize: 24,
          showElevation: true,
          itemCornerRadius: 15,
          onItemSelected: (index) {
            setState(() {
              controller.jumpToPage(index);
            });
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
                activeColor: PaletteColors.whiteBg,
                inactiveColor: PaletteColors.whiteBg,
                title: Text(
                  'Home',
                  style: AppTextStyle.regularTitle16
                      .copyWith(color: PaletteColors.whiteBg),
                  textAlign: TextAlign.center,
                ),
                icon: getAppIcons(
                    asset: AppIcons.home,
                    size: 30,
                    color: PaletteColors.whiteBg)),
            BottomNavyBarItem(
                activeColor: PaletteColors.whiteBg,
                inactiveColor: PaletteColors.whiteBg,
                title: Text(
                  'SalePerson',
                  style: AppTextStyle.regularTitle14
                      .copyWith(color: PaletteColors.whiteBg),
                  textAlign: TextAlign.center,
                ),
                icon: getAppIcons(
                    asset: AppIcons.salesPerson,
                    size: 30,
                    color: PaletteColors.whiteBg)),
            BottomNavyBarItem(
                activeColor: PaletteColors.whiteBg,
                inactiveColor: PaletteColors.whiteBg,
                title: Text(
                  'Search',
                  style: AppTextStyle.regularTitle16
                      .copyWith(color: PaletteColors.whiteBg),
                  textAlign: TextAlign.center,
                ),
                icon: getAppIcons(
                    asset: AppIcons.search,
                    size: 30,
                    color: PaletteColors.whiteBg)),
            BottomNavyBarItem(
                activeColor: PaletteColors.whiteBg,
                inactiveColor: PaletteColors.whiteBg,
                title: Text(
                  'Map',
                  style: AppTextStyle.regularTitle16
                      .copyWith(color: PaletteColors.whiteBg),
                  textAlign: TextAlign.center,
                ),
                icon: getAppIcons(
                    asset: AppIcons.market,
                    size: 30,
                    color: PaletteColors.whiteBg)),
            BottomNavyBarItem(
                activeColor: PaletteColors.whiteBg,
                inactiveColor: PaletteColors.whiteBg,
                title: Text(
                  'Settings',
                  style: AppTextStyle.regularTitle16
                      .copyWith(color: PaletteColors.whiteBg),
                  textAlign: TextAlign.center,
                ),
                icon: getAppIcons(
                    asset: AppIcons.settings,
                    size: 30,
                    color: PaletteColors.whiteBg)),
          ],
        ),
        body: SizedBox.expand(
          child: PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(() => _selectedIndex = index);
            },
            children: <Widget>[
              HomeTab(),
              SalePersonTab(),
              SearchTab(),
              MapTab(),
              SettingsTab(),
            ],
          ),
        ),
      ),
    );
  }
}
