import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ai_text_assistant/models/message.dart';

final messagesProvider = StateProvider<List<Message>>((ref) => []);
