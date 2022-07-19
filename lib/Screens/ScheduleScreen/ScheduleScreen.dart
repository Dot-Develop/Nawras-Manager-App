import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nawras_manager/Constants/AppTextStyle.dart';
import 'package:nawras_manager/Constants/ColorConstants.dart';

class ScheduleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PaletteColors.whiteBg,
      appBar: AppBar(
        title: Text("Schedule"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/subSchedule");
                  },
                  child: Card(
                      elevation: 3,
                      child: ListTile(
                        trailing: Text(
                          "12-12-2020",
                          style: AppTextStyle.regularTitle14.copyWith(
                              color: PaletteColors.lightBlackAppColor),
                        ),
                        leading: Text(
                          "Saturday",
                          style: AppTextStyle.regularTitle20
                              .copyWith(color: PaletteColors.blackAppColor),
                        ),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                    elevation: 3,
                    child: ListTile(
                      trailing: Text(
                        "13-12-2020",
                        style: AppTextStyle.regularTitle14
                            .copyWith(color: PaletteColors.lightBlackAppColor),
                      ),
                      leading: Text(
                        "Sunday",
                        style: AppTextStyle.regularTitle20
                            .copyWith(color: PaletteColors.blackAppColor),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                    elevation: 3,
                    child: ListTile(
                      trailing: Text(
                        "14-12-2020",
                        style: AppTextStyle.regularTitle14
                            .copyWith(color: PaletteColors.lightBlackAppColor),
                      ),
                      leading: Text(
                        "Monday",
                        style: AppTextStyle.regularTitle20
                            .copyWith(color: PaletteColors.blackAppColor),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                    elevation: 3,
                    child: ListTile(
                      trailing: Text(
                        "15-12-2020",
                        style: AppTextStyle.regularTitle14
                            .copyWith(color: PaletteColors.lightBlackAppColor),
                      ),
                      leading: Text(
                        "Tuesday",
                        style: AppTextStyle.regularTitle20
                            .copyWith(color: PaletteColors.blackAppColor),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                  elevation: 3,
                  child: ListTile(
                    trailing: Text(
                      "16-12-2020",
                      style: AppTextStyle.regularTitle14
                          .copyWith(color: PaletteColors.lightBlackAppColor),
                    ),
                    leading: Text(
                      "Wednesday",
                      style: AppTextStyle.regularTitle20
                          .copyWith(color: PaletteColors.blackAppColor),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                    elevation: 3,
                    child: ListTile(
                      trailing: Text(
                        "17-12-2020",
                        style: AppTextStyle.regularTitle14
                            .copyWith(color: PaletteColors.lightBlackAppColor),
                      ),
                      leading: Text(
                        "Thursday",
                        style: AppTextStyle.regularTitle20
                            .copyWith(color: PaletteColors.blackAppColor),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                    elevation: 3,
                    child: ListTile(
                      trailing: Text(
                        "18-12-2020",
                        style: AppTextStyle.regularTitle14
                            .copyWith(color: PaletteColors.lightBlackAppColor),
                      ),
                      leading: Text(
                        "Friday",
                        style: AppTextStyle.regularTitle20
                            .copyWith(color: PaletteColors.blackAppColor),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
