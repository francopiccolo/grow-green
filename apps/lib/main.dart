import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grow_green/src/root.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
      ),
      home: const HomePage(),
      // getPages: [
      //   GetPage(name: '/', page: () => const LennsHome()),
      //   GetPage(name: '/song', page: () => const SongScreen()),
      //   GetPage(name: '/playlist', page: () => const PlayListScreen())
      // ],
    );
  }
}
