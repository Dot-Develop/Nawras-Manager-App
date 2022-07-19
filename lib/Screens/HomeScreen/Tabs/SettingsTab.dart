import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nawras_manager/Constants/AppTextStyle.dart';
import 'package:nawras_manager/Constants/ColorConstants.dart';
import 'package:nawras_manager/Constants/CustomIcons.dart';
import 'package:nawras_manager/GlobalWidgets/RoundedButton.dart';

class SettingsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            Container(
              color: PaletteColors.darkRedColorApp,
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: PaletteColors.darkRedColorApp,
                    backgroundImage: NetworkImage(
                        'https://media-exp1.licdn.com/dms/image/C4E1BAQEchOQUJC1jYw/company-background_10000/0?e=2159024400&v=beta&t=032AKdwx4cUvd8kkgse2AnEihic0LnJp0NdCoS1zkZs'),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dot Dev',
                        style: AppTextStyle.boldTitle20
                            .copyWith(color: Colors.white),
                      ),
                      Text(
                        'dot Dev',
                        style: AppTextStyle.regularTitle12
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(height: 0),
            SettingListTile(
              title: 'View Profile',
              icon: AppIcons.profile,
              buttonTitle: 'view',
              onPressed: () => Navigator.pushNamed(context, "/profile"),
            ),
            Divider(height: 0),
            SettingListTile(
              title: 'Feedback',
              icon: AppIcons.feedback,
              buttonTitle: 'view',
              onPressed: () => Navigator.pushNamed(context, "/feedback"),
            ),
            Divider(height: 0),
            SettingListTile(
              title: 'Language',
              icon: AppIcons.language,
              buttonTitle: 'en',
              onPressed: () => Navigator.pushNamed(context, '/language'),
            ),
            Divider(height: 0),
            SettingListTile(
              title: 'Display Mode',
              icon: AppIcons.shop,
              buttonTitle: 'light',
              onPressed: () {},
            ),
            Divider(height: 0),
            SettingListTile(
              title: 'Contact',
              icon: AppIcons.about,
              onPressed: () {},
            ),
            Divider(height: 0),
            SettingListTile(
              title: 'About',
              icon: AppIcons.about,
              onPressed: () => Navigator.pushNamed(context, "/about"),
            ),
          ],
        ),
        Positioned(
          bottom: 20,
          right: 15,
          child: FloatingActionButton(
            backgroundColor: PaletteColors.mainAppColor,
            child: Icon(Icons.logout),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

class SettingListTile extends StatelessWidget {
  final String title;
  final String buttonTitle;
  final String icon;
  final Function onPressed;

  const SettingListTile({
    Key key,
    @required this.title,
    this.buttonTitle = '',
    @required this.onPressed,
    @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: getAppIcons(asset: icon, color: Colors.black, size: 30),
      trailing: buttonTitle.isEmpty
          ? null
          : Text(
              buttonTitle,
              style: AppTextStyle.regularTitle12.copyWith(
                color: Colors.grey,
              ),
            ),
      onTap: onPressed,
    );
  }
}
