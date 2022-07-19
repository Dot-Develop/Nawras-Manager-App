import 'package:flutter/material.dart';
import 'package:nawras_manager/Constants/AppTextStyle.dart';
import 'package:nawras_manager/Constants/ColorConstants.dart';
import 'package:nawras_manager/Helper/Language.dart';

class SalePersonCard extends StatelessWidget {
  final Function onPressed;

  SalePersonCard({@required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 0,horizontal: 3),
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
                Align(
                  alignment:Alignment.topCenter,
                  child: Text(
                    "Dot Dev",
                    style: AppTextStyle.boldTitle20
                        .copyWith(color: PaletteColors.blackAppColor),
                  ),
                ),
                getARow("Phone Number", '07504443322'),
                getARow("ID", '443322'),
                getARow("Zone", 'Erbil'),
              ],
            ),
          ),
          Align(
            alignment: Language().languageDirection == "ltr"
                ? Alignment(-1.03, -1.03)
                : Alignment(1.03, -1.03),
            child: Container(
              alignment: Alignment.center,
              width: 38,
              height: 38,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              decoration: BoxDecoration(
                  color: PaletteColors.mainAppColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Icon(
                Icons.person,
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
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(title, style: AppTextStyle.boldTitle14),
          Text(value, style: AppTextStyle.regularTitle14),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:nawras_manger/Constants/AppTextStyle.dart';
// import 'package:nawras_manger/Constants/ColorConstants.dart';
//
// class SalePersonCard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.pushNamed(context, '/schedule');
//       },
//       child: Container(
//         padding: EdgeInsets.all(20),
//         decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(10),
//             boxShadow: [
//               BoxShadow(
//                   color: PaletteColors.cardColorApp,
//                   spreadRadius: 2,
//                   blurRadius: 4,
//                   offset: Offset(0.9, 0.9))
//             ]),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text('Nzar Ahmad', style: AppTextStyle.regularTitle18),
//             SizedBox(height: 10),
//             Text(
//               'ID: 443322',
//               style: AppTextStyle.regularTitle12,
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Zone: Erbil',
//               style: AppTextStyle.regularTitle12,
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Phone No.: 07504443322',
//               style: AppTextStyle.regularTitle12,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
