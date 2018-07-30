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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
      ),
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
        margin: EdgeInsets.only(left: 40.0,bottom: 10.0),
        child: FloatingActionButton(
          onPressed: (){},
          child: Image(image: AssetImage("assets/images/ic_more.png")),
        ),
      ),
    );
  }

  showMenuSheet(){

  }
}
