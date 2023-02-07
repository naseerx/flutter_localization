import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_language.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      title: 'Flutter localization',
      translations: Languages(),
      // this were you will give your local, like if its hindi, urdu, spanish
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "name".tr,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'title'.tr,
              style: const TextStyle(fontSize: 30, color: Colors.teal),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'contact'.tr,
              style: const TextStyle(fontSize: 25, color: Colors.teal),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'message'.tr,
              style: const TextStyle(fontSize: 20, color: Colors.teal),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => Get.updateLocale(const Locale('en', 'US')),
                  child: const Text('English'),
                ),
                const SizedBox(
                  width: 40,
                ),
                ElevatedButton(
                  onPressed: () => Get.updateLocale(const Locale('ur', 'PK')),
                  child: const Text('Urdu'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
