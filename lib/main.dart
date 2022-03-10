import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moni_africa/provider/nav_provider.dart';
import 'package:provider/provider.dart';
import 'package:moni_africa/theme.dart';

import 'routes.dart';
import 'screens/cluster_screen/cluster.dart';

void main() => {
      WidgetsFlutterBinding.ensureInitialized(),
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]),
      runApp(const MyApp())
    };

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NavBarProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Moni_Africa',
        theme: themeData(),
        home: const ClusterScreen(),
        routes: routes,
      ),
    );
  }
}