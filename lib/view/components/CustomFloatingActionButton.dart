import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final Widget child;
  final void Function() onPressed;
  const CustomFloatingActionButton({
    Key key,
    this.child,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(48.0),
        color: Theme.of(context).floatingActionButtonTheme.backgroundColor,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context)
                .floatingActionButtonTheme
                .backgroundColor
                .withOpacity(0.18),
            spreadRadius: 5.0,
          ),
        ],
      ),
      child: FloatingActionButton(
        onPressed: onPressed,
        child: child,
        elevation: 0,
        hoverElevation: 0,
        highlightElevation: 0,
      ),
    );
  }
}
