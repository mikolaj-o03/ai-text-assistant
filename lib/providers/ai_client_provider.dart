import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ai_text_assistant/services/ai_client.dart';

final aiClientProvider = Provider((ref) => AIClient());

