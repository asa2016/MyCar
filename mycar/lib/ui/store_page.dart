import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:mycar/main.dart';
import 'package:mycar/models/store.dart';
import 'package:mycar/models/product.dart';
import 'package:mycar/services/product_srv.dart';
import 'package:mycar/ui/components/product_card.dart';
import 'package:mycar/ui/product_page.dart';

class StorePage extends StatelessWidget {
  final ProductServices _productService = ProductServices();

  final Store store;

  StorePage({Key key, this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //print('MainBuild');
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MyApp.getRoot(
        _getStorePage(ctx: context, height: height, width: width), context);
  }

  Widget _getStorePage({BuildContext ctx, double height, double width}) {
    return Scaffold(
      backgroundColor: Colors.orange[200],
      appBar: AppBar(
        backgroundColor: Colors.orange[200],
        title: Text(
          store.storeName,
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        elevation: 0,
      ),
      body: _getStorePageBody(ctx: ctx, height: height, width: width),
    );
  }

  Widget _getStorePageBody({BuildContext ctx, double height, double width}) {
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.only(top: 2.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _getBodyHeader(height: height, width: width),
          _getListProducts(ctx: ctx, height: height, width: width),
        ],
      ),
    );
  }

  Widget _getBodyHeader({double height, double width}) {
    return Container(
      width: width,
      height: height * 0.3,
      child: Stack(
        alignment: Alignment.bottomCenter,
        textDirection: TextDirection.rtl,
        fit: StackFit.loose,
        overflow: Overflow.visible,
        clipBehavior: Clip.hardEdge,
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
              ),
              child: Image.network(
                store.banner,
                width: width,
                height: height * 0.3,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new ExactAssetImage('assets/white.png'),
                fit: BoxFit.cover,
              ),
            ),
            width: width,
            height: (height * 0.3) * 0.35,
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 100.0),
                child: Row(
                  children: [
                    Container(
                      child: Image.network(
                        store.gravatar,
                        height: 65,
                        width: 65,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(right: 5.0),
                            alignment: Alignment.bottomRight,
                            child: Text(
                              store.storeName,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 21,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 5.0),
                            alignment: Alignment.bottomRight,
                            child: Text(
                              store.phone,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getListProducts({BuildContext ctx, double height, double width}) {
    List<Product> productsList = [];
    return StatefulBuilder(builder: (ctx, StateSetter setter) {
      if (productsList.isEmpty) {
        _productService.getAllStoreProducts(store.id).then((value) {
          //print('value.length=>' + value.length.toString());
          setter(() {
            productsList = value;
          });
        });
      }
      return Container(
        width: width,
        height: height * 0.58,
        child: ListView.separated(
            itemBuilder: (context, index) {
              return ProductCard(
                product: productsList[index],
                onTapProduct: (product) {
                  Navigator.of(ctx).push(MaterialPageRoute(
                      builder: (context) => ProductPage(product: product)));
                },
              );
            },
            separatorBuilder: (context, index) => Divider(),
            itemCount: productsList.length),
      );
    });
  }
}
