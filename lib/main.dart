import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ai_text_assistant/my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Load .env 
  await dotenv.load(fileName: '.env');

  runApp(const ProviderScope(child: MyApp()));
}

