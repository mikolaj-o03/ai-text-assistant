import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/message.dart';

final messagesProvider = StateProvider<List<Message>>((ref) => []);
