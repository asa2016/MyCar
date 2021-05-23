import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:mycar/main.dart';
import 'package:mycar/models/product.dart';

class ProductPage extends StatelessWidget {
  final Product product;

  const ProductPage({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('MainBuild');
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MyApp.getRoot(
        _getProductPage(ctx: context, height: height, width: width), context);
  }

  Widget _getProductPage({BuildContext ctx, double height, double width}) {
    return Scaffold(
      backgroundColor: Colors.orange[200],
      appBar: AppBar(
        backgroundColor: Colors.orange[200],
        title: Text(
          product.name,
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        elevation: 0,
      ),
      body: _getProductPageBody(ctx: ctx, height: height, width: width),
    );
  }

  Widget _getProductPageBody({BuildContext ctx, double height, double width}) {
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
          _getBodyHeader(ctx: ctx, height: height, width: width),
          _getBody(ctx: ctx, height: height, width: width),
        ],
      ),
    );
  }

  Widget _getBodyHeader({BuildContext ctx, double height, double width}) {
    final List<Widget> imageSliders = product.images.map((item) => Container(
      child: Container(
        margin: EdgeInsets.all(5.0),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                Image.network(item.src, fit: BoxFit.cover, width: 1000.0),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(200, 0, 0, 0),
                          Color.fromARGB(0, 0, 0, 0)
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: Text(
                      'No. ${product.images.indexOf(item)} image',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            )
        ),
      ),
    )).toList();
    int _current = 0;
    return StatefulBuilder(builder: (ctx, StateSetter setter){
      return Container(
        width: width,
        child: Column(
            children: [
              CarouselSlider(
                items: imageSliders,
                options: CarouselOptions(
                    autoPlay: false,
                    enlargeCenterPage: true,
                    aspectRatio: 2.0,
                    onPageChanged: (index, reason) {
                      setter(() {
                        _current = index;
                      });
                    }
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: product.images.map((url) {
                  int index = product.images.indexOf(url);
                  return Container(
                    width: 8.0,
                    height: 8.0,
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == index
                          ? Color.fromRGBO(0, 0, 0, 0.9)
                          : Color.fromRGBO(0, 0, 0, 0.4),
                    ),
                  );
                }).toList(),
              ),
            ]
        ),
        /*Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
              ),
              child: Image.network(
                product.images.first.src,
                width: width,
                height: height * 0.3,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      )*/
      );
    });
  }
  Widget _getBody({BuildContext ctx, double height, double width}) {
    return Container(
      margin: EdgeInsets.only(top: 5.0),
      child: Column(
        children: [
          Card(
            child: Row(
              children: [
                Text('سنة الصنع'),
                Text('2012'),
              ],
            ),
          ),
          Card(
            child: Row(
              children: [
                Text('السعر'),
                Text('${product.price}'),
              ],
            ),
          ),
          Card(
            child: Row(
              children: [
                Text('المصنع'),
                Text('KIA'),
              ],
            ),
          ),
          Card(
            child: Row(
              children: [
                Text('الموديل'),
                Text('SOUL'),
              ],
            ),
          ),
          Card(
            child: Row(
              children: [
                Text('الموديل'),
                Text('SOUL!'),
              ],
            ),
          ),
        ],
      )
    );
  }
}
