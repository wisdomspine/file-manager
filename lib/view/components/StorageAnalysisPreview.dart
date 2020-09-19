import 'dart:async';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:file_manager/constants.dart';
import 'package:file_manager/finals.dart';
import 'package:file_manager/view/components/AnalyzeButton.dart';
import 'package:file_manager/view/components/CustomChipListItem.dart';
import 'package:file_manager/view/components/StoragUsageChart.dart';
import 'package:file_manager/view/providers/DrawerProvider.dart';
import 'package:flutter/material.dart';

class StorageAnalysisPreview extends StatefulWidget {
  const StorageAnalysisPreview({
    Key key,
  }) : super(key: key);

  @override
  _StorageAnalysisPreviewState createState() => _StorageAnalysisPreviewState();
}

class _StorageAnalysisPreviewState extends State<StorageAnalysisPreview>
    with RouteAware {
  final LayerLink link = LayerLink();
  OverlayEntry overlayEntry;
  RouteObserver<PageRoute> routeObserver;
  StreamSubscription drawerSubscription;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      showOverlay();
    });
    drawerSubscription = kGetIt.get<DrawerProvider>().subscribe((state) {
      if (state) {
        overlayEntry?.remove();
      } else {
        Overlay.of(context).insert(overlayEntry);
      }
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver = kGetIt.get<RouteObserver<PageRoute>>();

    routeObserver.subscribe(this, ModalRoute.of(context));
  }

  @override
  void didPushNext() {
    print("new route");
    overlayEntry?.remove();
    super.didPushNext();
  }

  @override
  void dispose() {
    overlayEntry?.remove();
    drawerSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("yeah");
      },
      child: CompositedTransformTarget(
        link: link,
        child: Container(),
      ),
    );
  }

  void showOverlay() {
    // Over
    RenderBox renderBox = context.findRenderObject();
    Offset offset = renderBox.localToGlobal(Offset.zero);
    overlayEntry = OverlayEntry(builder: (context) {
      return Positioned(
        top: 0,
        left: 0,
        right: offset.dx,
        child: CompositedTransformFollower(
          link: link,
          child: Container(
            alignment: Alignment.center,
            child: IntrinsicHeight(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: kSecondaryAccentColor,
                      borderRadius: BorderRadius.circular(kCardRadius),
                    ),
                    padding: EdgeInsets.all(kEdgePadding),
                    child: IntrinsicWidth(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Your storage",
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .headline4
                                    .copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              Spacer(),
                              GestureDetector(
                                child: IconTheme(
                                  data: Theme.of(context).primaryIconTheme,
                                  child: Icon(
                                    EvaIcons.optionsOutline,
                                    size: Theme.of(context)
                                        .primaryTextTheme
                                        .headline4
                                        .fontSize,
                                  ),
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomChipListItem(
                                color: Theme.of(context).backgroundColor,
                                text: "Used",
                                textStyle: Theme.of(context)
                                    .primaryTextTheme
                                    .bodyText2
                                    .copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
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
                                textStyle: Theme.of(context)
                                    .accentTextTheme
                                    .bodyText2
                                    .copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: kEdgePadding * 1.2,
                              bottom: kEdgePadding * .2,
                            ),
                            child: AnalyzeButton(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: kCardRadius * 1.4),
                    child: Container(
                      width: kCardRadius,
                      decoration: BoxDecoration(
                        color: kSecondaryAccentColor.withOpacity(.47),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(kCardRadius),
                          bottomRight: Radius.circular(kCardRadius),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
    Overlay.of(context).insert(overlayEntry);
  }
}
