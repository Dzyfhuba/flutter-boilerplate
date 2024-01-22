import 'package:flutter/material.dart';

// LIGHT THEME
// primary: #0043FF
// secondary: #3C00FF
// tertiary: #00C3FF

// accent-1: #FF3D00
// accent-2: #FF9100
// accent-3: #FFEA00

// base-1: #FFFFFF
// base-2: #F5F5F5
// base-3: #E0E0E0

// DARK THEME
// base-1: #242424
// base-2: #1C1C1C
// base-3: #121212

ColorScheme lightColorScheme = const ColorScheme(
  primary: Color(0xFF0043FF),
  // primaryVariant: Color(0xFF3C00FF),
  secondary: Color(0xFF3C00FF),
  // secondaryVariant: Color(0xFF00C3FF),
  tertiary: Color(0xFF00C3FF),
  // tertiaryVariant: Color(0xFF00C3FF),
  surface: Color(0xFFFFFFFF),
  background: Color(0xFFEAEAEA),
  error: Color(0xFFB00020),
  onPrimary: Color(0xFFFFFFFF),
  onSecondary: Color(0xFFFFFFFF),
  onSurface: Color(0xFF000000),
  onBackground: Color(0xFF000000),
  onError: Color(0xFFFFFFFF),
  brightness: Brightness.light,
);

const ColorScheme darkColorScheme = ColorScheme(
  primary: Color(0xFF0043FF),
  // primaryVariant: Color(0xFF3C00FF),
  secondary: Color(0xFF3C00FF),
  // secondaryVariant: Color(0xFF00C3FF),
  tertiary: Color(0xFF00C3FF),
  // tertiaryVariant: Color(0xFF00C3FF),
  surface: Color(0xFF242424),
  background: Color(0xFF242424),
  error: Color(0xFFCF6679),
  onPrimary: Color(0xFFFFFFFF),
  onSecondary: Color(0xFFFFFFFF),
  onSurface: Color(0xFFFFFFFF),
  onBackground: Color(0xFFFFFFFF),
  onError: Color(0xFF000000),
  brightness: Brightness.dark,
);
