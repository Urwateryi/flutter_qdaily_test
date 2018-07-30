import 'package:flutter/material.dart';
import 'constant/colors.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: TabBar(tabs: [
        Text("NEWS"),
        Text("LABS"),
      ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'test',
            )
          ],
        ),
      ),
      floatingActionButton: Container(
        alignment: Alignment.bottomLeft,
        margin: EdgeInsets.only(left: 40.0, bottom: 10.0),
        child: FloatingActionButton(
          onPressed: () {
            showMenuSheet(context);
          },
          child: Image(image: AssetImage("assets/images/ic_more.png")),
        ),
      ),
    );
  }

  showMenuSheet(BuildContext context) {
    _scaffoldKey.currentState.showBottomSheet(
      (context) {
        return Container(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.monetization_on),
                  title: Text("赞赏"),
                ),
                ListTile(
                  leading: Icon(Icons.comment),
                  title: Text("评论"),
                ),
                ListTile(
                  leading: Icon(Icons.favorite_border),
                  title: Text("喜欢"),
                ),
                ListTile(
                  leading: Icon(Icons.share),
                  title: Text("分享"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
