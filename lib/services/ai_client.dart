import 'package:flutter_dotenv/flutter_dotenv.dart';

class AIClient {
  final String? apiKey = dotenv.env['API_KEY'];

  bool get isConfigured => apiKey != null && apiKey!.isNotEmpty;

  Future<String> sendMessage(String userMessage) async {
    if (!isConfigured) {
      return "[MOCK AI] Brak klucza API — zrób setup, aby użyć prawdziwego modelu.";
    }
    return "[PLACEHOLDER] API key wykryty — tutaj pojawiłaby się prawdziwa odpowiedź AI.";
  }
}
