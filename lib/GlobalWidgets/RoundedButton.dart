import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nawras_manager/Constants/ColorConstants.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  final Color color;
  final bool isThikHeight;

  const RoundedButton({
    Key key,
    @required this.title,
    @required this.onPressed,
    this.color = Colors.red,
    this.isThikHeight = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: isThikHeight ? height / 25 : 50,
      child: MaterialButton(
        elevation: 10,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side: BorderSide(color: color)),
        onPressed: onPressed,
        color: PaletteColors.mainAppColor,
        textColor: Colors.white,
        child: Text(title, style: TextStyle(fontSize: 14)),
      ),
    );
  }
}
