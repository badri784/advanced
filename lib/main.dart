import 'package:flutter/material.dart';
import 'core/di/dependancy_injection.dart';
import 'core/routing/app_router.dart';
import 'docapp.dart';

void main() {
  setUpGetIt();
  runApp(Docapp(appRouter: AppRouter()));
}
