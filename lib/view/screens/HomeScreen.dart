import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:file_manager/finals.dart';
import 'package:file_manager/providers/UserProvider.dart';
import 'package:file_manager/view/components/AppBarUserAvatar.dart';
import 'package:file_manager/view/components/DrawerToggle.dart';
import 'package:file_manager/view/components/RoundedBottomRightContainer.dart';
import 'package:file_manager/view/components/RoundedTopLeftContainer.dart';
import 'package:file_manager/view/screens/AppDrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomeScreen extends StatelessWidget {
  static const String route = "Home Screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: DrawerToggle(),
        actions: [
          AppBarUserAvatar(
            image: kGetIt.get<UserProvider>().userAvatar,
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            RoundedBottomRightContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "File",
                            style: Theme.of(context).primaryTextTheme.headline5,
                          ),
                          Text(
                            "Manager",
                            style: Theme.of(context).primaryTextTheme.headline5,
                          ),
                          RichText(
                            text: TextSpan(
                                text: "Let's clean and ",
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .bodyText2,
                                children: [
                                  TextSpan(
                                    text: "manage your file's.",
                                    style: Theme.of(context)
                                        .accentTextTheme
                                        .bodyText2,
                                  ),
                                ]),
                          )
                        ],
                      ),
                      IconTheme(
                        data: Theme.of(context).primaryIconTheme,
                        child: Icon(Icons.more_horiz),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        children: [
                          RotatedBox(
                            quarterTurns: 3,
                            child: Text(
                              "Internal storage",
                              style:
                                  Theme.of(context).accentTextTheme.bodyText2,
                            ),
                          ),
                          RotatedBox(
                            quarterTurns: 3,
                            child: Text(
                              "External storage",
                              style:
                                  Theme.of(context).primaryTextTheme.bodyText2,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Your storage",
                                        style: Theme.of(context)
                                            .primaryTextTheme
                                            .headline4,
                                      ),
                                      IconTheme(
                                        data:
                                            Theme.of(context).primaryIconTheme,
                                        child: IconButton(
                                          icon: Icon(
                                            EvaIcons.optionsOutline,
                                            size: Theme.of(context)
                                                .primaryTextTheme
                                                .headline4
                                                .fontSize,
                                          ),
                                          onPressed: () {},
                                        ),
                                      ),
                                    ],
                                  ),
                                  SfCircularChart(),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: RoundedTopLeftContainer(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
