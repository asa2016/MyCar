import 'package:flutter/material.dart';
import 'package:mycar/models/store.dart';
import 'package:mycar/services/store_srv.dart';
import 'package:mycar/ui/style_res.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  TabController _tabController;
  final StoreServices _storeServices = StoreServices();

  List<Store> _stores = [];
  List<Store> _newStores = [];

  @override
  void initState() {
    var now = DateTime.now();
    var earlier = now.subtract(Duration(days: 15));

    _tabController = TabController(length: 2, vsync: this);
    super.initState();
    _storeServices.getAllStores().then((value) {
      //value.map((e) => print(e.toString())).toList();
      setState(() {
        _stores = value;
        _newStores = value
            .where((store) => DateTime.parse(store.registered).isAfter(earlier))
            .toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[200],
      appBar: AppBar(
        backgroundColor: Colors.orange[200],
        title: Text(
          'سيارتي',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              size: 32.0,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.person_rounded,
              size: 32.0,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 5.0),
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
            Expanded(
              child: NestedScrollView(
                floatHeaderSlivers: true,
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverToBoxAdapter(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.3,
                        margin: EdgeInsets.fromLTRB(7.0, 10.0, 7.0, 10.0),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              margin: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                              ),
                              width: 350,
                            ),
                            Container(
                              margin: EdgeInsets.all(10.0),
                              width: 350,
                              color: Colors.amber,
                            ),
                            Container(
                              margin: EdgeInsets.all(10.0),
                              width: 350,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SliverAppBar(
                      backgroundColor: Colors.white,
                      floating: true,
                      pinned: true,
                      expandedHeight: 0.0,
                      forceElevated: innerBoxIsScrolled,
                      bottom: TabBar(
                        //indicatorColor: Colors.white,
                        tabs: [
                          Tab(
                            text: 'جميع المعارض',
                          ),
                          Tab(
                            text: 'المعارض الجديدة',
                          ),
                        ],
                        controller: _tabController,
                        labelColor: Colors.blue[400],
                      ),
                    ),
                  ];
                },
                body: TabBarView(
                  children: [
                    ListView.separated(
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: Image.network(
                              _stores[index].gravatar,
                              height: 65,
                              width: 65,
                              fit: BoxFit.contain,
                            ),
                            title: Text(_stores[index].storeName),
                            trailing: Container(
                              width: 100.0,
                              height: 32.0,
                              decoration: BoxDecoration(
                                color: StyleRso.secondaryLightColor,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(17.0),
                                  bottomLeft: Radius.circular(17.0),
                                ),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                _stores[index].phone,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => Divider(),
                        itemCount: _stores.length),
                    ListView.separated(
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: Image.network(
                              _newStores[index].gravatar,
                              height: 65,
                              width: 65,
                              fit: BoxFit.contain,
                            ),
                            title: Text(_newStores[index].storeName),
                            trailing: Container(
                              width: 100.0,
                              height: 32.0,
                              decoration: BoxDecoration(
                                color: StyleRso.secondaryLightColor,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(17.0),
                                  bottomLeft: Radius.circular(17.0),
                                ),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                _newStores[index].phone,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => Divider(),
                        itemCount: _newStores.length),
                  ],
                  controller: _tabController,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
