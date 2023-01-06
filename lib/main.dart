import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChangeNotifier()),
      ],
      child: MaterialApp.router(
        builder: (context, child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: child!,
          );
        },
        routeInformationParser: Routes.router.routeInformationParser,
        routerDelegate: Routes.router.routerDelegate,
        routeInformationProvider: Routes.router.routeInformationProvider,
        theme: ThemeData(
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          fontFamily: 'Inter',
          primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}
