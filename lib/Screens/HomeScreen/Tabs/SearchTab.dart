import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nawras_manager/Constants/AppTextStyle.dart';
import 'package:nawras_manager/Constants/ColorConstants.dart';
import 'package:nawras_manager/GlobalWidgets/Responsive.dart';
import 'package:nawras_manager/Screens/HomeScreen/Widgets/SalePersonCard.dart';

enum WhyFarther { all, seller, order }

class SearchTab extends StatefulWidget {
  @override
  _SearchTabState createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  WhyFarther _selection = WhyFarther.all;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    "Search",
                    style: AppTextStyle.boldTitle24
                        .copyWith(color: PaletteColors.blackAppColor),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: TextField(
                        obscureText: false,
                        decoration:
                            InputDecoration(hintText: "Search For Something"),
                        onChanged: (text) {},
                      ),
                    ),
                    PopupMenuButton<WhyFarther>(
                      icon: Icon(Icons.filter_list),
                      onSelected: (WhyFarther result) {
                        setState(() {
                          _selection = result;
                          print(_selection);
                        });
                      },
                      itemBuilder: (BuildContext context) =>
                          <PopupMenuEntry<WhyFarther>>[
                        const PopupMenuItem<WhyFarther>(
                          value: WhyFarther.all,
                          child: Text('All'),
                        ),
                        const PopupMenuItem<WhyFarther>(
                          value: WhyFarther.seller,
                          child: Text('Best Seller'),
                        ),
                        const PopupMenuItem<WhyFarther>(
                          value: WhyFarther.order,
                          child: Text('Best Orders'),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(12),
          sliver: SliverGrid.count(
            crossAxisCount: Responsive.isTablet(context) ? 3 : 2,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height / 1.8),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: <Widget>[
              SalePersonCard(onPressed: () {}),
              SalePersonCard(onPressed: () {}),
              SalePersonCard(onPressed: () {}),
              SalePersonCard(onPressed: () {}),
              SalePersonCard(onPressed: () {}),
              SalePersonCard(onPressed: () {}),
              SalePersonCard(onPressed: () {}),
              SalePersonCard(onPressed: () {}),
              SalePersonCard(onPressed: () {}),
              SalePersonCard(onPressed: () {}),
            ],
          ),
        ),
      ],
    );
  }
}
