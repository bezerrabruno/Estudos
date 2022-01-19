import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_e/app/app_widget.dart';
import 'app/models/counter.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
      ],
      child: const AppWidget(),
    ),
  );
}
