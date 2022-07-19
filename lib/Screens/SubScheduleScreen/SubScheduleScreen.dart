import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nawras_manager/Constants/AppTextStyle.dart';
import 'package:nawras_manager/Constants/ColorConstants.dart';
import 'package:nawras_manager/GlobalWidgets/Responsive.dart';
import 'package:nawras_manager/GlobalWidgets/RoundedButton.dart';

import 'Widgets/ScheduleCard.dart';

class SubScheduleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sub Schedule"),
      ),
      body: GridView.count(
        crossAxisCount: Responsive.isTablet(context) ? 3 : 2,
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height / 1.8),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: EdgeInsets.all(10),
        children: [
          ScheduleCard(
            onPressed: () {},
          ),
          ScheduleCard(
            onPressed: () {},
          ),
          ScheduleCard(
            onPressed: () {},
          ),
          ScheduleCard(
            onPressed: () {},
          ),
          ScheduleCard(
            onPressed: () {},
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    backgroundColor: PaletteColors.whiteBg,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    content: Form(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextFormField(
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                  labelText: 'Market',
                                  labelStyle: AppTextStyle.boldTitle16),
                            ),
                            TextFormField(
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                  labelText: 'Phone Number',
                                  labelStyle: AppTextStyle.boldTitle16),
                            ),
                            TextFormField(
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                  labelText: 'Zone',
                                  labelStyle: AppTextStyle.boldTitle16),
                            ),
                            TextFormField(
                              maxLines: 2,
                              decoration: InputDecoration(
                                  labelText: 'Message',
                                  labelStyle: AppTextStyle.boldTitle16),
                            ),
                            SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                RoundedButton(
                                  title: 'Cancel',
                                  isThikHeight: true,
                                  onPressed: () {},
                                ),
                                RoundedButton(
                                  title: 'Add',
                                  isThikHeight: true,
                                  onPressed: () {},
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ));
        },
      ),
    );
  }
}
