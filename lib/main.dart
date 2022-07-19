import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:nawras_manager/Constants/ColorConstants.dart';
import 'package:nawras_manager/Screens/ProfileScreen/ProfileScreen.dart';
import 'package:provider/provider.dart';
import 'Helper/Language.dart';
import 'Screens/FeedbackScreen/FeedbackScreen..dart';
import 'Screens/HomeScreen/HomeScreen.dart';
import 'Screens/LanguageScreen/LanguageScreen.dart';
import 'Screens/LoginScreen/LoginScreen.dart';
import 'Screens/ScheduleScreen/ScheduleScreen.dart';
import 'Screens/SubScheduleScreen/SubScheduleScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setEnabledSystemUIOverlays([
  //   SystemUiOverlay.bottom,
  // ]);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  String myToken;

  @override
  void initState() {
    _firebaseMessaging.subscribeToTopic("all");
    _firebaseMessaging.getToken().then((value) {
      print("firebase token: = $value");
      setState(() {
        myToken = value;
      });
    });
    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        print("onMessage3: $message");
      },
      onLaunch: (Map<String, dynamic> message) async {
        print("onLaunchee: $message");
      },
      onResume: (Map<String, dynamic> message) async {
        print("onResumee: $message");
      },
    );

    //Needed by iOS only
    _firebaseMessaging.requestNotificationPermissions(
        const IosNotificationSettings(sound: true, badge: true, alert: true));
    _firebaseMessaging.onIosSettingsRegistered
        .listen((IosNotificationSettings settings) {
      print("Settings registered: $settings");
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("Tokeeeen" + _firebaseMessaging.getToken().toString());
    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: Language())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Nawras',
        theme: ThemeData(
          primaryColor: PaletteColors.mainAppColor,
          primarySwatch: Colors.red,
          appBarTheme: AppBarTheme(elevation: 0),
        ),
        initialRoute: '/login',
        routes: {
          // '/': (context) => SplashScreen(),
          '/login': (context) => LoginScreen(),
          '/home': (context) => HomeScreen(),
          '/schedule': (context) => ScheduleScreen(),
          '/profile': (context) => ProfileScreen(),
          '/subSchedule': (context) => SubScheduleScreen(),
          '/language': (context) => LanguageScreen(),
          // '/mapScreen': (context) => MapScreen(),
          '/feedback': (context) => FeedbackScreen(),
        },
      ),
    );
  }
}

// $$$$$$$$$$$$$$$$$$$$$$$
//Here it is Code of Loading Indicator :
// >>>>>>>
// LoadingIndicator(
// indicatorType: Indicator.values[24],
// color: PaletteColors.mainAppColor.withOpacity(0.4),
// ),
