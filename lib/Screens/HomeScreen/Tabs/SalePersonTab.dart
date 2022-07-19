import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nawras_manager/GlobalWidgets/Responsive.dart';
import 'package:nawras_manager/Screens/HomeScreen/Widgets/SalePersonCard.dart';

class SalePersonTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: Responsive.isTablet(context) ? 3 : 2,
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height / 1.8),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: 20,
      itemBuilder: (context, index) => SalePersonCard(
        onPressed: () => Navigator.pushNamed(context, '/schedule'),
      ),
    );
  }
}
