// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';

import 'config/dependencies.dart';
import 'main.dart';

/// Development environment entry point.
/// Launch with: `flutter run --target lib/main_development.dart`
/// Configuration: Uses local data sources for development
void main() {
  // Enable all logging levels for development
  Logger.root.level = Level.ALL;

  runApp(
    MultiProvider(
      providers: providersLocal, 
      child: const MainApp(),
    ),
  );
}
