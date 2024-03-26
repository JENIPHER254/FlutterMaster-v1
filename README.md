# flutter-master
flutter course and fundermental concepts

## flutter rirebase connection
### firebase cli installation

- DOWNLOAD AND INSTALL CLI FROM BELOW LINK

[https://firebase.flutter.dev/docs/cli]

- ADD TO PATH (ENVIRONMENT VARIABLES)

C:\Users\jenip\AppData\Local\Pub\Cache\bin

- LOGIN TO FIREBASE

firebase -V
firebase logout
flutter login
firebase login

VS CODE SECTION

- Configure Flutter fire

flutterfire configure

- Install firebase core

flutter pub install firebase_core

-  Initialize app

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

