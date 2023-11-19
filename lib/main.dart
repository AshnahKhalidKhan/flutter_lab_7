import 'package:flutter/material.dart';
import 'package:flutter_lab_7/APIPage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// class Logger extends ProviderObserver {
//   @override
//   void didUpdateProvider(ProviderBase provider, Object newValue) {
//     print('''{"provider": "${provider.name ?? provider.runtimeType}", "newValue": "$newValue"}''');
//   }

//   @override
//   void didDisposeProvider(ProviderBase provider) {
//     print("disposed ${provider.name}");
//     super.didDisposeProvider(provider);
//   }
// }


void main() {
  runApp
  (
    ProviderScope
    (
      // observers: [Logger()],
      child: MyApp()
    )
  );
}
class MyApp extends StatelessWidget 
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp
    (
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: APIPage()
    );
  }
}