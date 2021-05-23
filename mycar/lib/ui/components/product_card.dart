import 'package:flutter/material.dart';
import 'package:mycar/models/product.dart';

class ProductCard extends StatelessWidget {
  final Function(Product) onTapProduct;
  final Product product;

  const ProductCard({Key key, this.product, this.onTapProduct}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        margin: EdgeInsets.only(right: 3.0, left: 3.0),
        child: Container(
          child: Row(
            children: [
              Container(
                child: Image.network(
                  product.images.first.src,
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
                        product.name,
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
                        product.price,
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
      onTap: () => onTapProduct(product),
    );
  }
}
