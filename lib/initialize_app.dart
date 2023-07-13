import 'package:rescan/core/firebase/firebase_initializer.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

Future<void> initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  await FirebaseInitializer.initialize();

  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
}
