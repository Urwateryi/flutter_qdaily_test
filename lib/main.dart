import 'package:flutter/material.dart';
import 'constant/colors.dart';
import 'news/NewsPage.dart';
import 'labs/LabsPage.dart';
import 'utils/PageUtil.dart';
import 'menu/MenuPage.dart';
import 'news/NewsPage1.dart';

void main() => runApp(MyApp());

final ThemeData defaultTheme = ThemeData(
  primaryIconTheme: const IconThemeData(color: Colors.white),
  primaryColor: AppColors.colorPrimary,
  accentColor: AppColors.colorPrimary,
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: defaultTheme,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: TabBar(
            tabs: [
              Tab(text: "NEWS"),
              Tab(text: "LABS"),
            ],
            indicatorColor: AppColors.colorPrimary,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey[400],
            indicatorSize: TabBarIndicatorSize.label,
          ),
        ),
        body: TabBarView(
          children: [
            NewsPage1(),
            LabsPage(),
          ],
        ),
        floatingActionButton: floatButton(context),
      ),
    );
  }

  Widget floatButton(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      margin: EdgeInsets.only(left: 40.0, bottom: 10.0),
      child: SizedBox(
        width: 40.0,
        height: 40.0,
        child: FloatingActionButton(
          onPressed: () {
            PageUtil.pushTo(context, MenuPage());
          },
          child: Image(image: AssetImage("assets/images/ic_more.png")),
        ),
      ),
    );
  }
}
