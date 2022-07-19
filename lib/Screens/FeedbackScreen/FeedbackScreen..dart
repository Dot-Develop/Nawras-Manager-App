import 'package:flutter/material.dart';
import 'package:nawras_manager/Constants/AppTextStyle.dart';
import 'package:nawras_manager/Constants/ColorConstants.dart';

class FeedbackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback'),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) => FeedbackCardTile(
          index: (index+1).toString(),
          title: "Feedback",
          subtitle: 'dotDev',
          time: '1 day',
        ),
      ),
    );
  }
}

class FeedbackCardTile extends StatelessWidget {
  const FeedbackCardTile({
    Key key,
    @required this.index,
    @required this.title,
    @required this.subtitle,
    @required this.time,
  }) : super(key: key);

  final String index;
  final String title;
  final String subtitle;
  final String time;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            backgroundColor: PaletteColors.whiteBg,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            title: Text('Title',style: AppTextStyle.boldTitle20.copyWith(color: PaletteColors.mainAppColor),),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Great food and easy environment. If you want to try traditional norwegian. this is place to go",
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(subtitle,style: AppTextStyle.boldTitle16,),
                    FlatButton.icon(
                      icon: Icon(Icons.call),
                      label: Text('tel: 0750 444 44 44'),
                      onPressed: (){},
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 6, horizontal: 14),
        padding: EdgeInsets.all(15),
        width: double.infinity,
        decoration: BoxDecoration(
            color: PaletteColors.cardColorApp,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                  color: PaletteColors.cardColorApp,
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: Offset(0.3, 0.3))
            ]),
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: PaletteColors.darkRedColorApp,
              radius: 25,
              child: Text(
                index,
                style: AppTextStyle.boldTitle16
                    .copyWith(color: PaletteColors.whiteBg),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Market name: $title',
                  style: AppTextStyle.boldTitle20
                      .copyWith(color: PaletteColors.blackAppColor),
                ),
                Text(
                  subtitle,
                  style: AppTextStyle.regularTitle14
                      .copyWith(color: PaletteColors.blackAppColor),
                ),
              ],
            ),
            Spacer(),
            Text(
              time,
              style: AppTextStyle.regularTitle14
                  .copyWith(color: PaletteColors.blackAppColor),
            ),
          ],
        ),
      ),
    );
  }
}
