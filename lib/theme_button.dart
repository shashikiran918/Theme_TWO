
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_data_two/theme_notifier.dart';

class ThemeButton extends StatelessWidget {
  final ThemeData buttonThemeData;

  // ignore: use_key_in_widget_constructors
  const ThemeButton({required this.buttonThemeData});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return RawMaterialButton(
      onPressed: () {
        themeNotifier.setTheme(buttonThemeData);
      },
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 400),
        transitionBuilder: (Widget child, Animation<double> animation) =>
            ScaleTransition(
              child: child,
              scale: animation,
            ),
        child: _getIcon(themeNotifier),
      ),
      shape: const CircleBorder(),
      elevation: 2.0,
      fillColor: buttonThemeData.primaryColor,
      padding: const EdgeInsets.all(15.0),
    );
  }

  Widget _getIcon(ThemeNotifier themeNotifier) {
    bool selected = (themeNotifier.getTheme() == buttonThemeData);

    return Container(
      key: Key((selected) ? "ON" : "OFF"),
      child: Icon(
        (selected) ? Icons.done : Icons.close,
        // ignore: deprecated_member_use
        color: buttonThemeData.accentColor,
        size: 20.0,
      ),
    );
  }
}