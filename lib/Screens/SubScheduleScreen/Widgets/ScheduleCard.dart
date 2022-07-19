import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nawras_manager/Constants/AppTextStyle.dart';
import 'package:nawras_manager/Constants/ColorConstants.dart';
import 'package:nawras_manager/Helper/Language.dart';

class ScheduleCard extends StatelessWidget {
  final Function onPressed;

  const ScheduleCard({Key key, @required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: PaletteColors.cardColorApp,
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0.9, 0.9))
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
              children: [
                getARow("Market:", 'Mamzawa'),
                getARow("Zone:", 'Erbil'),
                getARow("Phone:", '0750 444 44 44'),
              ],
            ),
          ),
          Align(
            alignment: Language().languageDirection == "rtl"
                ? Alignment(-1.03, -1.03)
                : Alignment(1.03, -1.03),
            child: Container(
              alignment: Alignment.center,
              width: 38,
              height: 38,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: PaletteColors.mainAppColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Icon(
                Icons.calendar_today_rounded,
                color: Colors.white,
                size: 18,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget getARow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(title, style: AppTextStyle.boldTitle18),
          Text(value, style: AppTextStyle.regularTitle14),
        ],
      ),
    );
  }
}
