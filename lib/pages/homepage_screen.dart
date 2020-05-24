
import 'package:clothestore_flutter_app/widgets/tabs_bar.dart';
import 'package:flutter/material.dart';

import 'package:clothestore_flutter_app/constants/constants.dart';

import '../widgets/section_item.dart';

class HomePageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('STORE'),
      ),
          body: GridView(
        children: SECTIONS
            .map((sectionData) => SectionItem(
                sectionData.id, sectionData.name, sectionData.imageUrl))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 350,
          childAspectRatio: 5 / 6,
          crossAxisSpacing: 25,
          mainAxisSpacing: 25,
        ),
      ),
      bottomNavigationBar: TabsBar()
    );
  }
}
