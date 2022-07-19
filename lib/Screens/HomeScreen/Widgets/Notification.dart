import 'package:flutter/material.dart';
import 'package:nawras_manager/Constants/AppTextStyle.dart';
import 'package:nawras_manager/Constants/ColorConstants.dart';
import 'package:nawras_manager/Constants/CustomIcons.dart';

class NotificationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.centerLeft,
              height: 45,
              width: double.infinity,
              color: PaletteColors.mainAppColor,
              child: Text(
                'Notification',
                style: AppTextStyle.boldTitle18
                    .copyWith(color: PaletteColors.whiteBg),
              ),
            ),
            NotificationCard(
              title: '',
              content: '',
              timeAgo: '',
              onPressed: () {},
            ),
            NotificationCard(
              title: '',
              content: '',
              timeAgo: '',
              onPressed: () {},
            ),
            NotificationCard(
              title: '',
              content: '',
              timeAgo: '',
              onPressed: () {},
            ),
            NotificationCard(
              title: '',
              content: '',
              timeAgo: '',
              onPressed: () {},
            ),
            NotificationCard(
              title: '',
              content: '',
              timeAgo: '',
              onPressed: () {},
            ),
            NotificationCard(
              title: '',
              content: '',
              timeAgo: '',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final String title;
  final String timeAgo;
  final String content;
  final Function onPressed;

  const NotificationCard({
    Key key,
    @required this.title,
    @required this.timeAgo,
    @required this.content,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(color: PaletteColors.cardColorApp))),
      child: ListTile(
        leading: getAppIcons(
            asset: AppIcons.notifivations,
            color: PaletteColors.darkRedColorApp),
        title: Text('New Product'),
        subtitle: Text(
          'Test test test test test test test test test',
          style: AppTextStyle.regularTitle12,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '1 day ago',
              style: AppTextStyle.regularTitle10,
            ),
            SizedBox(height: 4),
            GestureDetector(
              child: getAppIcons(
                  asset: AppIcons.market,size: 24, color: PaletteColors.darkRedColorApp),
              onTap: () {},
            )
          ],
        ),
        onTap: onPressed,
      ),
    );
  }
}
