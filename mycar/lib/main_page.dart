import 'package:flutter/material.dart';
import 'dart:math' as math;

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => math.max(maxHeight, minHeight);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  TabController _tabController;
  List<CarStation> _carStations = [
    CarStation('الناصر للسيارات', 'assets/alnasrCars.jpg', true),
    CarStation('الناصر للسيارات', 'assets/alnasrCars.jpg', true),
    CarStation('الناصر للسيارات', 'assets/alnasrCars.jpg', true),
    CarStation('الناصر للسيارات', 'assets/alnasrCars.jpg', true),
  ];

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<String> _tabs = ['Tab 1', 'Tab 2'];
    bool _pinned = true;
    bool _snap = true;
    bool _floating = true;

    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('سيارتي'),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              size: 32.0,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
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
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                      child: Text(
                        'أوقات الدوام من الساعة 08:00ص حتى 09:00م',
                      ),
                    ),
                  ),
                  Container(
                    width: 80.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60.0),
                        bottomRight: Radius.circular(40.0),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'مفتوح',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
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
                                borderRadius: BorderRadius.all(Radius.circular(15.0)),
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
                        labelColor: Colors.red,
                      ),
                    ),
                  ];
                },
                body: TabBarView(
                  children: [
                    ListView.separated(
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: Image(
                              image: AssetImage(
                                CarStation.carStations[index].imageURL,
                              ),
                              height: 65,
                              width: 65,
                              fit: BoxFit.contain,
                            ),
                            title:
                                Text(CarStation.carStations[index].stationName),
                          trailing: Container(
                            width: 80.0,
                            height: 32.0,
                            decoration: BoxDecoration(
                              color: CarStation.carStations[index].openState ? Colors.amber:Colors.red,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(17.0),
                                bottomLeft:  Radius.circular(17.0),
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              CarStation.carStations[index].openState ? 'مفتوح':'مغلق',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: CarStation.carStations[index].openState ? Colors.black:Colors.white),
                            ),
                          ),
                          );
                        },
                        separatorBuilder: (context, index) => Divider(),
                        itemCount: CarStation.carStations.length),
                    ListView.separated(
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: Image(
                              image: AssetImage(
                                CarStation.carStations[index].imageURL,
                              ),
                              height: 65,
                              width: 65,
                              fit: BoxFit.contain,
                            ),
                            title:
                            Text(CarStation.carStations[index].stationName),
                            trailing: Container(
                              width: 80.0,
                              height: 32.0,
                              decoration: BoxDecoration(
                                color: CarStation.carStations[index].openState ? Colors.amber:Colors.red,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(17.0),
                                  bottomLeft:  Radius.circular(17.0),
                                ),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                CarStation.carStations[index].openState ? 'مفتوح':'مغلق',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: CarStation.carStations[index].openState ? Colors.black:Colors.white),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => Divider(),
                        itemCount: CarStation.carStations.length),
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

class CarStation {
  String stationName;
  String imageURL;
  bool openState;

  CarStation(this.stationName, this.imageURL, this.openState);

  static List<CarStation> get carStations => [
        CarStation('معرض الناصر كارس', 'assets/alnasrCars.jpg', true),
        CarStation('معرض الأندلس للسيارات', 'assets/andalusCars.jpg', false),
        CarStation('معرض DRC للسيارات', 'assets/drcCars.jpg', true),
        CarStation('معرض OTO Show للسيارات', 'assets/otoshowCars.jpg', false),
        CarStation('معرض الناصر كارس', 'assets/alnasrCars.jpg', true),
        CarStation('معرض الأندلس للسيارات', 'assets/andalusCars.jpg', false),
        CarStation('معرض DRC للسيارات', 'assets/drcCars.jpg', true),
        CarStation('معرض OTO Show للسيارات', 'assets/otoshowCars.jpg', false),
        CarStation('معرض الناصر كارس', 'assets/alnasrCars.jpg', true),
        CarStation('معرض الأندلس للسيارات', 'assets/andalusCars.jpg', false),
        CarStation('معرض DRC للسيارات', 'assets/drcCars.jpg', true),
        CarStation('معرض OTO Show للسيارات', 'assets/otoshowCars.jpg', false),
        CarStation('معرض الناصر كارس', 'assets/alnasrCars.jpg', true),
        CarStation('معرض الأندلس للسيارات', 'assets/andalusCars.jpg', false),
        CarStation('معرض DRC للسيارات', 'assets/drcCars.jpg', true),
        CarStation('معرض OTO Show للسيارات', 'assets/otoshowCars.jpg', false),
        CarStation('معرض الناصر كارس', 'assets/alnasrCars.jpg', true),
        CarStation('معرض الأندلس للسيارات', 'assets/andalusCars.jpg', false),
        CarStation('معرض DRC للسيارات', 'assets/drcCars.jpg', true),
        CarStation('معرض OTO Show للسيارات', 'assets/otoshowCars.jpg', false),
        CarStation('معرض الناصر كارس', 'assets/alnasrCars.jpg', true),
        CarStation('معرض الأندلس للسيارات', 'assets/andalusCars.jpg', false),
        CarStation('معرض DRC للسيارات', 'assets/drcCars.jpg', true),
        CarStation('معرض OTO Show للسيارات', 'assets/otoshowCars.jpg', false),
      ];
}
