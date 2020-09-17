import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:file_manager/constants.dart';
import 'package:file_manager/finals.dart';
import 'package:file_manager/providers/UserProvider.dart';
import 'package:file_manager/view/components/AnalyzeButton.dart';
import 'package:file_manager/view/components/AppBarUserAvatar.dart';
import 'package:file_manager/view/components/CandleStick.dart';
import 'package:file_manager/view/components/CustomChipListItem.dart';
import 'package:file_manager/view/components/DrawerToggle.dart';
import 'package:file_manager/view/components/RoundedBottomRightContainer.dart';
import 'package:file_manager/view/components/RoundedTopLeftContainer.dart';
import 'package:file_manager/view/components/StoragUsageChart.dart';
import 'package:file_manager/view/screens/AppDrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              RoundedBottomRightContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(kEdgePadding),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "File",
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .headline2,
                              ),
                              Text(
                                "Manager",
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .headline2,
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
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                "Internal storage",
                                style:
                                    Theme.of(context).accentTextTheme.bodyText2,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: kEdgePadding,
                                bottom: kEdgePadding,
                                right: Theme.of(context)
                                        .primaryTextTheme
                                        .bodyText2
                                        .fontSize *
                                    0.5,
                              ),
                              child: RotatedBox(
                                quarterTurns: 3,
                                child: CandleStick(
                                  color: Theme.of(context).backgroundColor,
                                  height: 30.0,
                                  thickness: .9,
                                ),
                              ),
                            ),
                            RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                "External storage",
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .bodyText2,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Container(
                            child: Stack(
                              overflow: Overflow.visible,
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: IntrinsicHeight(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: kSecondaryAccentColor,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      kCardRadius),
                                            ),
                                            padding:
                                                EdgeInsets.all(kEdgePadding),
                                            child: IntrinsicWidth(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Your storage",
                                                        style: Theme.of(context)
                                                            .primaryTextTheme
                                                            .headline4,
                                                      ),
                                                      IconTheme(
                                                        data: Theme.of(context)
                                                            .primaryIconTheme,
                                                        child: IconButton(
                                                          icon: Icon(
                                                            EvaIcons
                                                                .optionsOutline,
                                                            size: Theme.of(
                                                                    context)
                                                                .primaryTextTheme
                                                                .headline4
                                                                .fontSize,
                                                          ),
                                                          onPressed: () {},
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Container(
                                                    height: 171,
                                                    width: 171,
                                                    child: StorageUsageChart(),
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      CustomChipListItem(
                                                        color: Theme.of(context)
                                                            .backgroundColor,
                                                        text: "Used",
                                                        textStyle: Theme.of(
                                                                context)
                                                            .primaryTextTheme
                                                            .bodyText2,
                                                      ),
                                                      SizedBox(
                                                        width: 20.0,
                                                      ),
                                                      CustomChipListItem(
                                                        color: Theme.of(context)
                                                            .accentTextTheme
                                                            .bodyText2
                                                            .color,
                                                        text: "Free",
                                                        textStyle:
                                                            Theme.of(context)
                                                                .accentTextTheme
                                                                .bodyText2,
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      top: kEdgePadding * 1.2,
                                                      bottom: kEdgePadding * .2,
                                                    ),
                                                    child: AnalyzeButton(),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: kCardRadius,
                                            padding: EdgeInsets.symmetric(
                                              vertical: 1.4 * kCardRadius,
                                            ),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: kSecondaryAccentColor
                                                    .withOpacity(.47),
                                                borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(
                                                      kCardRadius),
                                                  bottomRight: Radius.circular(
                                                      kCardRadius),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
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
      ),
    );
  }
}
