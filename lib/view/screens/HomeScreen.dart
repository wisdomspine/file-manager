import 'package:file_manager/constants.dart';
import 'package:file_manager/finals.dart';
import 'package:file_manager/providers/UserProvider.dart';
import 'package:file_manager/view/components/AppBarUserAvatar.dart';
import 'package:file_manager/view/components/CandleStick.dart';
import 'package:file_manager/view/components/DrawerToggle.dart';
import 'package:file_manager/view/components/RoundedBottomRightContainer.dart';
import 'package:file_manager/view/components/RoundedTopLeftContainer.dart';
import 'package:file_manager/view/components/StorageAnalysisPreview.dart';
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
            verticalDirection: VerticalDirection.up,
            children: [
              Expanded(
                child: RoundedTopLeftContainer(),
              ),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: kEdgePadding,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              RotatedBox(
                                quarterTurns: 3,
                                child: Text(
                                  "Internal storage",
                                  style: Theme.of(context)
                                      .accentTextTheme
                                      .bodyText2,
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
                        ),
                        Expanded(
                          child: StorageAnalysisPreview(),
                        ),
                      ],
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
