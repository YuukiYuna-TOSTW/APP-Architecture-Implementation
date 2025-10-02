// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';

import '../../../../data/repositories/auth/auth_repository.dart';
import '../../../../utils/command.dart';
import '../../../../utils/result.dart';
import '../../../../../routing/routes.dart';

class LoginViewModel {
  LoginViewModel({required AuthRepository authRepository})
    : _authRepository = authRepository {
    login = Command1<void, (BuildContext context, String email, String password)>(_login);
  }

  final AuthRepository _authRepository;
  final _log = Logger('LoginViewModel');

  late Command1 login;

  Future<Result<void>> _login((BuildContext, String, String) args) async {
    final (context, email, password) = args;
    final result = await _authRepository.login(
      email: email,
      password: password,
    );
    if (result is Error<void>) {
      _log.warning('Login failed! ${result.error}');
    } else {
      // Navigate to home after successful login
      _log.info('Login successful! Navigating to home.');
      GoRouter.of(context).go(Routes.home);
    }
    return result;
  }
}
