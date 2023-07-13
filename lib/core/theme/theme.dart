import 'package:flutter/material.dart';
import 'package:rescan/core/gen/fonts.gen.dart';
import 'package:rescan/core/theme/colors_light.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

//! Remember to hot restart after changing this file, hot reload will not work.

final ThemeData theme = _theme.copyWith(
  appBarTheme: _theme.appBarTheme.copyWith(
    scrolledUnderElevation: 0,
  ),
  bottomSheetTheme: _theme.bottomSheetTheme.copyWith(elevation: 0),
);

final _theme = FlexThemeData.light(
  colors: FlexSchemeColor(
    primary: AppColors.primary,
    primaryContainer: AppColors.primaryContainer,
    secondaryContainer: AppColors.secondaryContainer,
    secondary: AppColors.secondary,
    tertiary: AppColors.tertiary,
    tertiaryContainer: AppColors.tertiaryContainer,
    error: AppColors.error,
    errorContainer: AppColors.errorContainer,
    appBarColor: AppColors.background,
    swapOnMaterial3: true,
  ),
  surfaceMode: FlexSurfaceMode.highSurfaceLowScaffold,
  // blendLevel: 12,
  subThemesData: const FlexSubThemesData(
    appBarCenterTitle: true,
    appBarBackgroundSchemeColor: null,
    sliderBaseSchemeColor: null,
    blendTextTheme: true,
    blendOnColors: true,

    // Bottom bar
    bottomNavigationBarElevation: 16.0,
    bottomNavigationBarSelectedLabelSchemeColor: SchemeColor.onBackground,
    bottomNavigationBarSelectedIconSchemeColor: SchemeColor.onBackground,
    bottomNavigationBarUnselectedIconSchemeColor:
        SchemeColor.onSecondaryContainer,
    bottomNavigationBarUnselectedLabelSchemeColor:
        SchemeColor.onSecondaryContainer,
    bottomNavigationBarSelectedLabelSize: 14,

    // Bottom sheet
    bottomSheetBackgroundColor: SchemeColor.surface,
    bottomSheetRadius: 16,
    //Buttons
    buttonPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
    elevatedButtonElevation: 2,
    outlinedButtonBorderWidth: 1,
    outlinedButtonPressedBorderWidth: 3,
    textButtonSchemeColor: SchemeColor.primary,

    //Card
    cardElevation: 1,
    cardRadius: 12,

    //Checkbox
    checkboxSchemeColor: SchemeColor.primary,

    //Chip
    chipRadius: 8.0,

    //Dialog
    dialogBackgroundSchemeColor: SchemeColor.surfaceVariant,
    dialogRadius: 28.0,
    //dialogElevation: 2,

    //FAB
    fabSchemeColor: SchemeColor.secondaryContainer,
    fabRadius: 12,

    //Input
    inputDecoratorRadius: 4.0,
    inputDecoratorIsFilled: false,

    inputDecoratorFocusedBorderWidth: 2,
    inputDecoratorBorderWidth: 1,
    inputDecoratorUnfocusedBorderIsColored: false,

    // Navigation bar
    navigationBarSelectedIconSchemeColor: SchemeColor.onSecondaryContainer,
    navigationBarSelectedLabelSchemeColor: SchemeColor.onSecondaryContainer,
    navigationBarUnselectedIconSchemeColor: SchemeColor.onSurfaceVariant,
    navigationBarUnselectedLabelSchemeColor: SchemeColor.onSurfaceVariant,
    navigationBarIndicatorSchemeColor: SchemeColor.secondaryContainer,
    navigationBarIndicatorOpacity: 1,
    navigationBarBackgroundSchemeColor: SchemeColor.surface,
    navigationBarHeight: 80.0,
    navigationBarElevation: 2,

    //Time picker
    timePickerDialogRadius: 28,

    //Radio
    radioSchemeColor: SchemeColor.primary,

    //SnackBars
    snackBarBackgroundSchemeColor: SchemeColor.inverseSurface,

    useTextTheme: true,
  ),

  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 57.0,
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.roboto,
    ),
    displayMedium: TextStyle(
      fontSize: 45.0,
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.roboto,
    ),
    displaySmall: TextStyle(
      fontSize: 36.0,
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.roboto,
    ),
    headlineLarge: TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.roboto,
    ),
    headlineMedium: TextStyle(
      fontSize: 28.0,
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.roboto,
    ),
    headlineSmall: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.roboto,
    ),
    titleLarge: TextStyle(
      fontSize: 22.0,
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.roboto,
    ),
    titleMedium: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      fontFamily: FontFamily.roboto,
      letterSpacing: 0.15,
    ),
    titleSmall: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      fontFamily: FontFamily.roboto,
      letterSpacing: 0.1,
    ),
    labelLarge: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      fontFamily: FontFamily.roboto,
      letterSpacing: 0.1,
    ),
    labelMedium: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      fontFamily: FontFamily.roboto,
      letterSpacing: 0.5,
    ),
    labelSmall: TextStyle(
      fontSize: 11.0,
      fontWeight: FontWeight.w500,
      fontFamily: FontFamily.roboto,
      letterSpacing: 0.5,
    ),
    bodyLarge: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.roboto,
      letterSpacing: 0.15,
    ),
    bodyMedium: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.roboto,
      letterSpacing: 0.25,
    ),
    bodySmall: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.roboto,
      letterSpacing: 0.4,
    ),
  ),
  keyColors: const FlexKeyColors(
    useSecondary: true,
    useTertiary: true,
    useKeyColors: true,
    keepPrimary: true,
    keepPrimaryContainer: true,
    keepSecondary: true,
    keepSecondaryContainer: true,
    keepTertiary: true,
    keepTertiaryContainer: true,
  ),
  useMaterial3: true,
);

extension ColorSchemeExtension on ColorScheme {
  Color get warningContainer => AppColors.warningContainer;
  Color get onWarningContainer => AppColors.onWarningContainer;
  Color get warning => AppColors.warning;
  Color get onWarning => AppColors.onWarning;
  MaterialColor get neutral => const MaterialColor(
        40,
        <int, Color>{
          0: Color(0xff000000),
          10: Color(0xff191C19),
          20: Color(0xff2E312E),
          30: Color(0xff454744),
          40: Color(0xff5C5F5B),
          50: Color(0xff757873),
          60: Color(0xff8F918D),
          70: Color(0xffAAACA7),
          80: Color(0xffC5C7C2),
          90: Color(0xffE2E3DE),
          95: Color(0xffF0F1EC),
          99: Color(0xffFCFDF7),
          100: Color(0xffffffff),
        },
      );
  MaterialColor get neutralVariant => const MaterialColor(
        40,
        <int, Color>{
          0: Color(0xff000000),
          10: Color(0xff161D17),
          20: Color(0xff2B322B),
          30: Color(0xff414941),
          40: Color(0xff596058),
          50: Color(0xff717970),
          60: Color(0xff8B938A),
          70: Color(0xffA6ADA4),
          80: Color(0xffC1C9BF),
          90: Color(0xffDDE5DA),
          95: Color(0xffEBF3E8),
          99: Color(0xffF7FEF4),
          100: Color(0xffffffff),
        },
      );
}
