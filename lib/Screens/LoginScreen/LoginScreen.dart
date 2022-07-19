import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nawras_manager/Constants/AppTextStyle.dart';
import 'package:nawras_manager/Constants/ColorConstants.dart';
import 'package:nawras_manager/GlobalWidgets/Responsive.dart';
import 'package:nawras_manager/GlobalWidgets/RoundedButton.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String current = "Manager";

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      backgroundColor: PaletteColors.whiteBg,
      body: Container(
        alignment:
            Responsive.isTablet(context) ? Alignment.center : Alignment.topLeft,
        margin: EdgeInsets.symmetric(
            horizontal: Responsive.isTablet(context) ? 150 : 0),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 100,
                ),
                Text(
                  "LOGIN",
                  style: AppTextStyle.boldTitle18.copyWith(
                      color: PaletteColors.blackAppColor.withAlpha(900)),
                ),
                SizedBox(height: 15),
                Text(
                  "NAWRAS",
                  style: TextStyle(
                      fontSize: 34,
                      color: PaletteColors.mainAppColor,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Welcome !",
                  style: AppTextStyle.regularTitle18.copyWith(
                      color: PaletteColors.blackAppColor.withAlpha(900)),
                ),
                SizedBox(height: Responsive.isTablet(context) ? 60 : 30),
                Row(
                  children: [
                    Spacer(),
                    SideContainer(
                      mContext: context,
                      iconData: Icons.person_outline,
                      isActivited: current == "Manager",
                      title: "Manager",
                      value: current,
                      onPressed: () {
                        setState(() {
                          current = 'Manager';
                        });
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Spacer(),
                    SideContainer(
                      mContext: context,
                      iconData: Icons.person,
                      isActivited: current == "Supervisor",
                      title: "Supervisor",
                      value: current,
                      onPressed: () {
                        setState(() {
                          current = 'Supervisor';
                        });
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                    ),
                    onChanged: (text) {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                    onChanged: (text) {},
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RoundedButton(
                      title: "Login",
                      onPressed: () => Navigator.pushNamed(context, "/home")),
                ),
                SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          backgroundColor: PaletteColors.whiteBg,
                          elevation: 4,
                          title: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "NOTE:",
                                style: AppTextStyle.boldTitle24.copyWith(
                                    color: PaletteColors.darkRedColorApp),
                              )),
                          content: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Do you Have any Issues During Logging in ?! \n To get and Reset Password just Contact Our Company...  ",
                                  style: AppTextStyle.regularTitle16.copyWith(
                                      color: PaletteColors.blackAppColor),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                RoundedButton(
                                  title: "Cancel",
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  isThikHeight: true,
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    child: Text(
                      "Forget Something ?!",
                      style: AppTextStyle.regularTitle18.copyWith(
                          color: PaletteColors.blackAppColor.withAlpha(900)),
                    ),
                  ),
                ),
                SizedBox(height: 100)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SideContainer extends StatelessWidget {
  final BuildContext mContext;
  final IconData iconData;
  final bool isActivited;
  final String value;
  final String title;
  final Function onPressed;

  const SideContainer({
    Key key,
    @required this.mContext,
    @required this.iconData,
    @required this.isActivited,
    @required this.value,
    this.title,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: isActivited ? 110 : 50,
        height: 50,
        decoration: BoxDecoration(
          color: isActivited
              ? PaletteColors.mainAppColor
              : PaletteColors.blackAppColor,
          borderRadius: Responsive.isTablet(context)
              ? BorderRadius.circular(10)
              : BorderRadius.horizontal(left: Radius.circular(10)),
        ),
        child: isActivited
            ? Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  children: [
                    Icon(
                      iconData,
                      color: PaletteColors.whiteBg,
                    ),
                    SizedBox(width: 5),
                    Text(
                      title,
                      style: TextStyle(color: PaletteColors.whiteBg),
                    ),
                  ],
                ),
              )
            : Icon(
                iconData,
                color: PaletteColors.whiteBg,
              ),
      ),
    );
  }
}
