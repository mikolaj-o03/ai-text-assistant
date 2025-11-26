import 'package:flutter_riverpod/flutter_riverpod.dart';
import "package:ai_text_assistant/models/message.dart";
import 'package:ai_text_assistant/providers/messages_provider.dart';
import 'package:ai_text_assistant/services/ai_client.dart';

final chatControllerProvider = Provider((ref) {
  return ChatController(ref);
});

class ChatController {
  final Ref ref;
  ChatController(this.ref);

  final _client = AIClient();

  Future<void> sendUserMessage(String text) async {
    ref.read(messagesProvider.notifier).update((state) {
      return [
        ...state,
        Message(text: text, sender: Sender.user),
      ];
    });

    await Future.delayed(const Duration(milliseconds: 300));

    if (_client.isConfigured) {
      final aiReply = await _client.sendMessage(text);
      sendAiResponse(aiReply);
    } 
    else {
      sendAiResponse("Otrzymałem Twoją wiadomość: \"$text\" (mock AI)");
    }
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
