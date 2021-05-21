import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.orange[200],
      appBar: AppBar(
        backgroundColor: Colors.orange[200],
        title: Text('سيارتي',style: TextStyle(fontWeight: FontWeight.w700),),
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
                                color: CarStation.carStations[index].openState
                                    ? Colors.amber
                                    : Colors.red,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(17.0),
                                  bottomLeft: Radius.circular(17.0),
                                ),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                CarStation.carStations[index].openState
                                    ? 'مفتوح'
                                    : 'مغلق',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color:
                                        CarStation.carStations[index].openState
                                            ? Colors.black
                                            : Colors.white),
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
                                color: CarStation.carStations[index].openState
                                    ? Colors.amber
                                    : Colors.red,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(17.0),
                                  bottomLeft: Radius.circular(17.0),
                                ),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                CarStation.carStations[index].openState
                                    ? 'مفتوح'
                                    : 'مغلق',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color:
                                        CarStation.carStations[index].openState
                                            ? Colors.black
                                            : Colors.white),
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

  CarStation({this.stationName, this.imageURL, this.openState});

  static List<CarStation> get carStations => [
    CarStation(
            stationName: 'معرض الناصر كارس',
            imageURL: 'assets/alnasrCars.jpg',
            openState: true),
    CarStation(
            stationName: 'معرض الأندلس للسيارات',
            imageURL: 'assets/andalusCars.jpg',
            openState: false),
    CarStation(
            stationName: 'معرض DRC للسيارات',
            imageURL: 'assets/drcCars.jpg',
            openState: true),
    CarStation(
            stationName: 'معرض OTO Show للسيارات',
            imageURL: 'assets/otoshowCars.jpg',
            openState: false),
    CarStation(
        stationName: 'معرض الناصر كارس',
        imageURL: 'assets/alnasrCars.jpg',
        openState: true),
    CarStation(
        stationName: 'معرض الأندلس للسيارات',
        imageURL: 'assets/andalusCars.jpg',
        openState: false),
    CarStation(
        stationName: 'معرض DRC للسيارات',
        imageURL: 'assets/drcCars.jpg',
        openState: true),
    CarStation(
        stationName: 'معرض OTO Show للسيارات',
        imageURL: 'assets/otoshowCars.jpg',
        openState: false),
    CarStation(
        stationName: 'معرض الناصر كارس',
        imageURL: 'assets/alnasrCars.jpg',
        openState: true),
    CarStation(
        stationName: 'معرض الأندلس للسيارات',
        imageURL: 'assets/andalusCars.jpg',
        openState: false),
    CarStation(
        stationName: 'معرض DRC للسيارات',
        imageURL: 'assets/drcCars.jpg',
        openState: true),
    CarStation(
        stationName: 'معرض OTO Show للسيارات',
        imageURL: 'assets/otoshowCars.jpg',
        openState: false),
      ];
}
