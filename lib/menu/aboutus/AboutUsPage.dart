import 'package:flutter/material.dart';
import 'AboutPage.dart';
import 'ContactPage.dart';
import 'JoinUsPage.dart';

class AboutUsPage extends StatefulWidget {
  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  int _currentIndex = 0;
  List<StatelessWidget> _pageList;
  StatelessWidget _currentPage;
  var titles = ['关于好奇心', '联系我们', '加入我们'];
  List<BottomNavigationBarItem> _navigationViews;

  @override
  void initState() {
    super.initState();

    _navigationViews = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          title: Text(titles[0]), icon: Icon(Icons.question_answer)),
      BottomNavigationBarItem(title: Text(titles[1]), icon: Icon(Icons.contacts)),
      BottomNavigationBarItem(title: Text(titles[2]), icon: Icon(Icons.add_box)),
    ];

    _pageList = <StatelessWidget>[AboutPage(), ContactPage(), JoinUsPage()];
    _currentPage = _pageList[_currentIndex];
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: _navigationViews,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
              _currentPage = _pageList[_currentIndex];
            });
          },
        ),
        appBar: AppBar(
          title: new Text(
            titles[_currentIndex],
          ),
        ),
        body: Center(child: _currentPage),
      ),
    );
  }
}
