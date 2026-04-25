import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff4e5b92),
      surfaceTint: Color(0xff4e5b92),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffdde1ff),
      onPrimaryContainer: Color(0xff364479),
      secondary: Color(0xffdd5612),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffdbcc),
      onSecondaryContainer: Color(0xff703718),
      tertiary: Color(0xff37693d),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffb8f1b9),
      onTertiaryContainer: Color(0xff1e5027),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfff5fafc),
      onSurface: Color(0xff171c1e),
      onSurfaceVariant: Color(0xff45464f),
      outline: Color(0xff767680),
      outlineVariant: Color(0xffc6c5d0),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c3133),
      inversePrimary: Color(0xffb7c4ff),
      primaryFixed: Color(0xffdde1ff),
      onPrimaryFixed: Color(0xff05164b),
      primaryFixedDim: Color(0xffb7c4ff),
      onPrimaryFixedVariant: Color(0xff364479),
      secondaryFixed: Color(0xffffdbcc),
      onSecondaryFixed: Color(0xff351000),
      secondaryFixedDim: Color(0xffffb693),
      onSecondaryFixedVariant: Color(0xff703718),
      tertiaryFixed: Color(0xffb8f1b9),
      onTertiaryFixed: Color(0xff002108),
      tertiaryFixedDim: Color(0xff9dd49e),
      onTertiaryFixedVariant: Color(0xff1e5027),
      surfaceDim: Color(0xffd6dbdd),
      surfaceBright: Color(0xfff5fafc),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff4f7),
      surfaceContainer: Color(0xffe9eff1),
      surfaceContainerHigh: Color(0xffe4e9eb),
      surfaceContainerHighest: Color(0xffdee3e6),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff253367),
      surfaceTint: Color(0xff4e5b92),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff5d6aa2),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xffd15208),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff9f5c3a),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff093f18),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff45784b),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff5fafc),
      onSurface: Color(0xff0c1214),
      onSurfaceVariant: Color(0xff35363e),
      outline: Color(0xff51525b),
      outlineVariant: Color(0xff6c6c76),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c3133),
      inversePrimary: Color(0xffb7c4ff),
      primaryFixed: Color(0xff5d6aa2),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff445288),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff9f5c3a),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff824424),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff45784b),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff2d5f34),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc2c7ca),
      surfaceBright: Color(0xfff5fafc),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff4f7),
      surfaceContainer: Color(0xffe4e9eb),
      surfaceContainerHigh: Color(0xffd8dee0),
      surfaceContainerHighest: Color(0xffcdd2d5),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff1a285c),
      surfaceTint: Color(0xff4e5b92),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff38467b),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff4e1d01),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff73391a),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff003410),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff21532a),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff5fafc),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff2a2c34),
      outlineVariant: Color(0xff484951),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c3133),
      inversePrimary: Color(0xffb7c4ff),
      primaryFixed: Color(0xff38467b),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff212f63),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff73391a),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff572306),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff21532a),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff043b15),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffb4babc),
      surfaceBright: Color(0xfff5fafc),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffecf1f4),
      surfaceContainer: Color(0xffdee3e6),
      surfaceContainerHigh: Color(0xffd0d5d8),
      surfaceContainerHighest: Color(0xffc2c7ca),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffb7c4ff),
      surfaceTint: Color(0xffb7c4ff),
      onPrimary: Color(0xff1e2d61),
      primaryContainer: Color(0xff364479),
      onPrimaryContainer: Color(0xffdde1ff),
      secondary: Color(0xffffb693),
      onSecondary: Color(0xff542104),
      secondaryContainer: Color(0xff703718),
      onSecondaryContainer: Color(0xffffdbcc),
      tertiary: Color(0xff9dd49e),
      onTertiary: Color(0xff023913),
      tertiaryContainer: Color(0xff1e5027),
      onTertiaryContainer: Color(0xffb8f1b9),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff0f1416),
      onSurface: Color(0xffdee3e6),
      onSurfaceVariant: Color(0xffc6c5d0),
      outline: Color(0xff90909a),
      outlineVariant: Color(0xff45464f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee3e6),
      inversePrimary: Color(0xff4e5b92),
      primaryFixed: Color(0xffdde1ff),
      onPrimaryFixed: Color(0xff05164b),
      primaryFixedDim: Color(0xffb7c4ff),
      onPrimaryFixedVariant: Color(0xff364479),
      secondaryFixed: Color(0xffffdbcc),
      onSecondaryFixed: Color(0xff351000),
      secondaryFixedDim: Color(0xffffb693),
      onSecondaryFixedVariant: Color(0xff703718),
      tertiaryFixed: Color(0xffb8f1b9),
      onTertiaryFixed: Color(0xff002108),
      tertiaryFixedDim: Color(0xff9dd49e),
      onTertiaryFixedVariant: Color(0xff1e5027),
      surfaceDim: Color(0xff0f1416),
      surfaceBright: Color(0xff343a3c),
      surfaceContainerLowest: Color(0xff090f11),
      surfaceContainerLow: Color(0xff171c1e),
      surfaceContainer: Color(0xff1b2022),
      surfaceContainerHigh: Color(0xff252b2d),
      surfaceContainerHighest: Color(0xff303638),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffd4dbff),
      surfaceTint: Color(0xffb7c4ff),
      onPrimary: Color(0xff122155),
      primaryContainer: Color(0xff808ec8),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffffd3c0),
      onSecondary: Color(0xff451800),
      secondaryContainer: Color(0xffc97e5a),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffb2eab3),
      onTertiary: Color(0xff002d0d),
      tertiaryContainer: Color(0xff689d6c),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff0f1416),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffdcdbe6),
      outline: Color(0xffb1b1bb),
      outlineVariant: Color(0xff8f8f99),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee3e6),
      inversePrimary: Color(0xff37457a),
      primaryFixed: Color(0xffdde1ff),
      onPrimaryFixed: Color(0xff000c3a),
      primaryFixedDim: Color(0xffb7c4ff),
      onPrimaryFixedVariant: Color(0xff253367),
      secondaryFixed: Color(0xffffdbcc),
      onSecondaryFixed: Color(0xff240900),
      secondaryFixedDim: Color(0xffffb693),
      onSecondaryFixedVariant: Color(0xff5b2709),
      tertiaryFixed: Color(0xffb8f1b9),
      onTertiaryFixed: Color(0xff001504),
      tertiaryFixedDim: Color(0xff9dd49e),
      onTertiaryFixedVariant: Color(0xff093f18),
      surfaceDim: Color(0xff0f1416),
      surfaceBright: Color(0xff404547),
      surfaceContainerLowest: Color(0xff04080a),
      surfaceContainerLow: Color(0xff191e20),
      surfaceContainer: Color(0xff23292b),
      surfaceContainerHigh: Color(0xff2e3335),
      surfaceContainerHighest: Color(0xff393f41),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffeeefff),
      surfaceTint: Color(0xffb7c4ff),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffb2c0fd),
      onPrimaryContainer: Color(0xff00072c),
      secondary: Color(0xffffece5),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffffb08b),
      onSecondaryContainer: Color(0xff1a0500),
      tertiary: Color(0xffc5fec5),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xff99d09a),
      onTertiaryContainer: Color(0xff000f02),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff0f1416),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xfff0effa),
      outlineVariant: Color(0xffc2c2cc),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee3e6),
      inversePrimary: Color(0xff37457a),
      primaryFixed: Color(0xffdde1ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffb7c4ff),
      onPrimaryFixedVariant: Color(0xff000c3a),
      secondaryFixed: Color(0xffffdbcc),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffffb693),
      onSecondaryFixedVariant: Color(0xff240900),
      tertiaryFixed: Color(0xffb8f1b9),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xff9dd49e),
      onTertiaryFixedVariant: Color(0xff001504),
      surfaceDim: Color(0xff0f1416),
      surfaceBright: Color(0xff4b5153),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff1b2022),
      surfaceContainer: Color(0xff2c3133),
      surfaceContainerHigh: Color(0xff373c3e),
      surfaceContainerHighest: Color(0xff42484a),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
