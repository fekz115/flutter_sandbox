import 'package:NewSandbox/navigation.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {

  final String title;

  InitialPage({Key key, this.title = "Flutter Sandbox"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Opacity(
          opacity: 0.5,
          child: Text(
            'This is sandbox Flutter project',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22.0,
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.add),
              title: Text('Counter Page'),
              onTap: navigateToCounterPage,
            ),
            ListTile(
              leading: Icon(Icons.format_paint),
              title: Text('Themes Page'),
              onTap: navigateToThemePage,
            ),
          ],
        ),
      ),
    );
  }

  void navigateToCounterPage() {
    ExtendedNavigator.ofRouter<Router>().pushNamed(Routes.counterPage);
  }

  void navigateToThemePage() {
    ExtendedNavigator.ofRouter<Router>().pushNamed(Routes.themePage);
  }

}
