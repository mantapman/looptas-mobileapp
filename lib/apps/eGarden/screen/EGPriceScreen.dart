import 'package:flutter/material.dart';
import 'package:mighty_ui_kit/apps/eGarden/model/EGModel.dart';
import 'package:mighty_ui_kit/apps/eGarden/utils/EGColors.dart';
import 'package:mighty_ui_kit/apps/eGarden/utils/EGDataProvider.dart';
import 'package:mighty_ui_kit/apps/eGarden/utils/EGWidgets.dart';
import 'package:mighty_ui_kit/main.dart';
import 'package:mighty_ui_kit/main/utils/AppColors.dart';
import 'package:nb_utils/nb_utils.dart';

class EGPriceScreen extends StatefulWidget {
  static String tag = '/EGPriceScreen';
  final String title;

  const EGPriceScreen({Key key, this.title}) : super(key: key);

  @override
  EGPriceScreenState createState() => EGPriceScreenState();
}

class EGPriceScreenState extends State<EGPriceScreen> {
  List<EGModel> _plantPriceList = getPlants();

  List<EGModel> getFernsPlants() {
    List<EGModel> list = [];
    getPlants().forEach((element) {
      if (element.type == "Ferns") {
        list.add(element);
      }
    });
    return list;
  }

  List<EGModel> getSucculentsPlants() {
    List<EGModel> list = [];
    getPlants().forEach((element) {
      if (element.type == "Succulents") {
        list.add(element);
      }
    });
    return list;
  }

  List<EGModel> getHerbsPlants() {
    List<EGModel> list = [];
    getPlants().forEach((element) {
      if (element.type == "Herbs") {
        list.add(element);
      }
    });
    return list;
  }

  List<EGModel> getTreePlants() {
    List<EGModel> list = [];
    getPlants().forEach((element) {
      if (element.type == "Tree") {
        list.add(element);
      }
    });
    return list;
  }

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {}

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DefaultTabController(
          length: 5,
          child: NestedScrollView(
            floatHeaderSlivers: true,
            physics: NeverScrollableScrollPhysics(),
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  elevation: 0,
                  iconTheme: IconThemeData(color: appStore.isDarkModeOn ? appBarBackgroundColor : scaffoldColorDark),
                  backgroundColor: appStore.isDarkModeOn ? scaffoldColorDark : appBarBackgroundColor,
                  actions: [
                    IconButton(icon: Icon(Icons.local_grocery_store_outlined), color: appStore.isDarkModeOn ? appBarBackgroundColor : scaffoldColorDark, onPressed: () {}),
                  ],
                  title: Text(widget.title, style: boldTextStyle(size: 20)),
                  centerTitle: true,
                ),
                SliverPersistentHeader(
                  delegate: SliverAppBarDelegateDemo(
                    TabBar(
                      labelStyle: primaryTextStyle(size: 16),
                      labelColor: egPrimaryColor1,
                      isScrollable: true,
                      indicator: BoxDecoration(border: Border.symmetric()),
                      unselectedLabelColor: Colors.grey[350],
                      tabs: [Tab(text: "All"), Tab(text: "Ferns"), Tab(text: "Succulents"), Tab(text: "Herbs"), Tab(text: "Tree")],
                    ),
                  ),
                  pinned: true,
                ),
              ];
            },
            body: TabBarView(children: [
              SingleChildScrollView(
                child: Container(margin: EdgeInsets.symmetric(vertical: 16), child: displayPlantPriceInGridView(plantList: _plantPriceList)),
              ),
              SingleChildScrollView(
                child: Container(margin: EdgeInsets.symmetric(vertical: 16), child: displayPlantPriceInGridView(plantList: getFernsPlants())),
              ),
              SingleChildScrollView(
                child: Container(margin: EdgeInsets.symmetric(vertical: 16), child: displayPlantPriceInGridView(plantList: getSucculentsPlants())),
              ),
              SingleChildScrollView(
                child: Container(margin: EdgeInsets.symmetric(vertical: 16), child: displayPlantPriceInGridView(plantList: getHerbsPlants())),
              ),
              SingleChildScrollView(
                child: Container(margin: EdgeInsets.symmetric(vertical: 16), child: displayPlantPriceInGridView(plantList: getTreePlants())),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
