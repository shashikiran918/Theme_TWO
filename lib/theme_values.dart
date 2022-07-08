import 'package:flutter/material.dart';

/// ----  Blue Theme  ----
const bluePrimary         = Color(0xFF3F51B5);
const blueAccent          = Color(0xFFFF9800);
const blueBackground      = Color(0xFFFFFFFF);
final blueTheme = ThemeData(
    primaryColor: bluePrimary,
    // ignore: deprecated_member_use
    accentColor: blueAccent,
    backgroundColor: blueBackground
);

/// ----  Spooky Theme  ----
const spookyPrimary       = Color(0xFF000000);
const spookyAccent        = Color(0xFFBB86FC);
const spookyBackground    = Color(0xFF4A4A4A);
final spookyTheme = ThemeData(
  primaryColor: spookyPrimary,
  // ignore: deprecated_member_use
  accentColor: spookyAccent,
  backgroundColor: spookyBackground,
);

/// ----  Green Theme  ----
const greenPrimary        = Color(0xFF4CAF50);
const greenAccent         = Color(0xFF631739);
const greenBackground      = Color(0xFFFFFFFF);
final greenTheme = ThemeData(
    primaryColor: greenPrimary,
    // ignore: deprecated_member_use
    accentColor: greenAccent,
    backgroundColor: greenBackground
);

/// ----  Pink Theme  ----
const pinkPrimary         = Color(0xFFE91E63);
const pinkAccent          = Color(0xFF0C7D9C);
const pinkBackground      = Color(0xFFFFFFFF);
final pinkTheme = ThemeData(
    primaryColor: pinkPrimary,
    backgroundColor: pinkBackground, colorScheme: ColorScheme.fromSwatch().copyWith(secondary: pinkAccent)
);