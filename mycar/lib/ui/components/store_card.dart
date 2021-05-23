import 'package:flutter/material.dart';

import 'package:mycar/models/store.dart';

class StoreCard extends StatelessWidget {
  final Function(Store) onTapStore;
  final Store store;

  const StoreCard({Key key, this.store, this.onTapStore}) : super(key: key);

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
      onTap: () => onTapStore(store)
      ,
    );
  }
}
