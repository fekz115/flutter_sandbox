import 'package:NewSandbox/l10n.dart';
import 'package:NewSandbox/navigation.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {

  InitialPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(SandboxLocalizations.of(context).title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage("assets/images/flutter_logo.png"),
            ),
            Opacity(
              opacity: 0.5,
              child: Text(
                SandboxLocalizations.of(context).initalPageDescription,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 22.0,
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    SandboxLocalizations.of(context).avaliablePages,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/header.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text(SandboxLocalizations.of(context).counterPage),
              onTap: navigateToCounterPage,
            ),
            ListTile(
              leading: Icon(Icons.format_paint),
              title: Text(SandboxLocalizations.of(context).themePage),
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
