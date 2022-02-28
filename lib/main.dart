import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/mood.dart';
import 'view/app.dart';

void main() {
  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the providers
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Mood()),
      ],
      child: const App(),
    ),
  );
}
