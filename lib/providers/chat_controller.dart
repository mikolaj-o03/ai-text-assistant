import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ai_text_assistant/models/message.dart';
import 'package:ai_text_assistant/providers/messages_provider.dart';
import 'package:ai_text_assistant/providers/ai_client_provider.dart';
import 'package:ai_text_assistant/services/ai_client.dart';

final chatControllerProvider = Provider((ref) {
  return ChatController(ref);
});

class ChatController {
  final Ref ref;
  late final AIClient _client;

  ChatController(this.ref) {
    _client = ref.read(aiClientProvider);
  }

  Future<void> sendUserMessage(String text) async {
    ref.read(messagesProvider.notifier).update((state) {
      return [
        ...state,
        Message(text: text, sender: Sender.user),
      ];
    });

    final reply = await _client.sendMessage(text);
    sendAiResponse(reply);
  }

  void sendAiResponse(String text) {
    ref.read(messagesProvider.notifier).update((state) {
      return [
        ...state,
        Message(text: text, sender: Sender.ai),
      ];
    });
  }
}
