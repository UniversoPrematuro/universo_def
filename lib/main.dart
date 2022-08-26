import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:url_launcher/url_launcher.dart';

import 'app/app_module.dart';
import 'app/app_widget.dart';

void main() async {
  WidgetsFlutterBinding().ensureVisualUpdate();
  await Firebase.initializeApp();
  runApp(ModularApp(module: AppModule(), child:  const AppWidget()));
  }