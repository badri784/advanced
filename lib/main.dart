import 'package:flutter/material.dart';
import 'package:project/core/di/dependancy_injection.dart';
import 'package:project/core/routing/app_router.dart';
import 'package:project/docapp.dart';

void main() {
  setUpGetIt();
  runApp(Docapp(appRouter: AppRouter()));
}
