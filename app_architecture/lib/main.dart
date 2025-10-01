// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'main_development.dart' as development;
import 'routing/router.dart';
import 'ui/core/localization/applocalization.dart';
import 'ui/core/themes/theme.dart';
import 'ui/core/ui/scroll_behavior.dart';

/// Application entry point - defaults to development configuration
void main() {
  // Initialize with development configuration
  development.main();
}

/// Root widget of the Compass application
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // Localization configuration
      localizationsDelegates: [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        AppLocalizationDelegate(),
      ],
      
      // UI behavior and theming
      scrollBehavior: AppCustomScrollBehavior(),
      theme: AppTheme.lightTheme,
      // darkTheme: AppTheme.darkTheme, // TODO: Enable dark theme
      themeMode: ThemeMode.system,
      
      // Navigation configuration
      routerConfig: router(context.read()),
    );
  }
}
