import 'package:file_manager/constants.dart';
import 'package:file_manager/view/components/CustomFloatingActionButton.dart';
import 'package:file_manager/view/components/CustomWelcomSplashPolygon.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static const String route = "welcome screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(kEdgePadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
              ),
              CustomWelcomSplashPolygon(),
              Text(
                "MANAGE YOUR FILE",
                style: Theme.of(context).accentTextTheme.headline5,
              ),
              Text(
                "It's a simple option that doesn't have a whole lot of flair. That is extremely preferable",
                style: Theme.of(context).primaryTextTheme.bodyText2,
                textAlign: TextAlign.center,
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 24.0,
                  bottom: 10.0,
                ),
                child: CustomFloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.arrow_forward),
                ),
              ),
              RichText(
                text: TextSpan(
                  text: "Let's make the ",
                  style: Theme.of(context).primaryTextTheme.bodyText1,
                  children: [
                    TextSpan(
                      text: "magic happen",
                      style: Theme.of(context).accentTextTheme.bodyText1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
