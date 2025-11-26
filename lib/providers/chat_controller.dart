import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/message.dart';
import 'messages_provider.dart';

final chatControllerProvider = Provider((ref) {
  return ChatController(ref);
});

class ChatController {
  final Ref ref;
  ChatController(this.ref);

  Future<void> sendUserMessage(String text) async {
    ref.read(messagesProvider.notifier).update((state) {
      return [
        ...state,
        Message(text: text, sender: Sender.user),
      ];
    });

    await Future.delayed(const Duration(milliseconds: 300));

    sendAiResponse("Otrzymałem Twoją wiadomość: \"$text\"");
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
