import 'package:clothestore_flutter_app/pages/section_products_screen.dart';
import 'package:flutter/material.dart';


class SectionItem extends StatelessWidget {
  final String id;
  final String name;
  final String imageUrl;
  

  SectionItem(
    this.id,
    this.name,
    this.imageUrl,
  );

  void selectSection(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      SectionProductsScreen.ROUTE_NAME, 
      arguments: {
        'id': id,
        'name': name,
      }
    );
  }

  


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: () => selectSection(context),
          child: Container(
        padding: const EdgeInsets.all(15),
          child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 4,
              margin: EdgeInsets.all(0),
              child: Column(
                children: <Widget>[
                  Stack(
                    
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                        child: Image.network(
                          imageUrl,
                          height: 300,
                          width: double.infinity,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 10,
                        child: Container(
                          width: 150,
                          color: Colors.black54,
                          padding: EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 20,
                          ),
                          child: Text(
                            name,
                            style: TextStyle(
                              fontSize: 5,
                              color: Colors.white,
                            ),
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ))
      ),
    );
  }
}