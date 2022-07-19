import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nawras_manager/Constants/AppTextStyle.dart';
import 'package:nawras_manager/Constants/ColorConstants.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PaletteColors.darkRedColorApp,
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                height: 220,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/images/bg.png",
                        ),
                        fit: BoxFit.cover,
                        scale: 1)),
              )),
          Positioned(
            top: 190,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.fromLTRB(8, 90, 8, 0),
              decoration: BoxDecoration(
                  color: PaletteColors.whiteBg,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(40))),
              margin: EdgeInsets.only(top: 10),
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Karokh Dot Dev",
                          style: AppTextStyle.boldTitle24
                              .copyWith(color: PaletteColors.blackAppColor),
                        )),
                    DetailRow("Full Name", "Karokh Dev"),
                    DetailRow("Number Phone", "07702222222"),
                    DetailRow("User Type", "Sale Person"),
                    DetailRow("Location", "Erbil"),
                    DetailRow("Zone", "Anikawa"),
                    DetailRow("Area", "Anikawa"),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 130,
            right: MediaQuery.of(context).size.width / 3,
            child: CircleAvatar(
              radius: MediaQuery.of(context).size.width / 6,
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.width / 6.5,
                backgroundColor: PaletteColors.darkRedColorApp,
                backgroundImage: NetworkImage(
                    "https://media-exp1.licdn.com/dms/image/C4E1BAQEchOQUJC1jYw/company-background_10000/0?e=2159024400&v=beta&t=032AKdwx4cUvd8kkgse2AnEihic0LnJp0NdCoS1zkZs"),
              ),
              backgroundColor: PaletteColors.whiteBg,
            ),
          )
        ],
      ),
    );
  }

  DetailRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: AppTextStyle.boldTitle18
                .copyWith(color: PaletteColors.blackAppColor),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            value,
            style: AppTextStyle.regularTitle16
                .copyWith(color: PaletteColors.blackAppColor.withOpacity(0.8)),
          ),
          Divider(
            thickness: 1,
            color: PaletteColors.blackAppColor.withOpacity(0.4),
          ),
        ],
      ),
    );
  }
}
