class AIClient {
  bool get isConfigured => false;

  Future<String> sendMessage(String userMessage) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return '[MOCK AI] Otrzymałem Twoją wiadomość: "$userMessage"';
  }
}

