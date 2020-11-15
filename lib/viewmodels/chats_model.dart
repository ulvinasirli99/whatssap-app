import 'package:get_it/get_it.dart';
import 'package:whatssapappflutter/core/services/chat_service.dart';
import 'package:whatssapappflutter/models/conversation.dart';
import 'base_model.dart';

class ChatsModel extends BaseModel {
  final ChatService _db = GetIt.instance<ChatService>();

  Stream<List<Conversation>> conversations(String userId) {
    return _db.getConversations(userId);
  }
}