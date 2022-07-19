import 'package:flutter/material.dart';
import 'package:nawras_manager/GlobalWidgets/Direction.dart';
import 'package:nawras_manager/Helper/Language.dart';
import 'package:provider/provider.dart';
import 'package:nawras_manager/Constants/AppTextStyle.dart';
import 'package:nawras_manager/Constants/ColorConstants.dart';

class LanguageScreen extends StatefulWidget {
  @override
  _LanguageScreenState createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  String currentLanguageCode = 'kr';
  String currentLanguageDirection = 'rtl';

  @override
  void initState() {
    super.initState();
    final language = Provider.of<Language>(context, listen: false);
    currentLanguageCode = language.languageCode;
    currentLanguageDirection = language.languageDirection;
  }

  @override
  Widget build(BuildContext context) {
    return Direction(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: PaletteColors.blackIconAppBar),
          title: Text(
            'Change Language',
            style: AppTextStyle.boldTitle16.copyWith(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(Icons.check),
              onPressed: () {
                Provider.of<Language>(context, listen: false).setLanguage(
                    currentLanguageCode, currentLanguageDirection);
                Navigator.pop(context);
              },
            )
          ],
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              languageButton(
                title: 'کوردی',
                languageCode: 'kr',
                image:
                'https://upload.wikimedia.org/wikipedia/commons/d/d2/Flag_of_Kurdistan.png',
                onTap: () {
                  setState(() {
                    currentLanguageCode = 'kr';
                    currentLanguageDirection = 'rtl';
                  });
                },
              ),
              languageButton(
                title: 'عربی',
                languageCode: 'ar',
                image:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Flag_of_Iraq.svg/1024px-Flag_of_Iraq.svg.png',
                onTap: () {
                  setState(() {
                    currentLanguageCode = 'ar';
                    currentLanguageDirection = 'rtl';
                  });
                },
              ),
              languageButton(
                title: 'English',
                languageCode: 'en',
                image:
                'https://images.creativemarket.com/0.1.0/ps/3707368/1820/1212/m1/fpnw/wm0/unitedkingdome-.jpg?1512759900&s=51694ba7e8fb5e7cf9615a14208d0fa9',
                onTap: () => setState(() {
                  currentLanguageCode = 'en';
                  currentLanguageDirection = 'ltr';
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget languageButton({
    Key key,
    @required String title,
    @required String image,
    @required String languageCode,
    @required Function onTap,
  }) {
    return ListTile(
      title: Text(title, style: AppTextStyle.boldTitle16),
      tileColor: currentLanguageCode == languageCode
          ? PaletteColors.mainAppColor.withOpacity(0.3)
          : Colors.white,
      leading: Image.network(
        image,
        width: 50,
        height: 50,
      ),
      onTap: onTap,
    );
  }
}