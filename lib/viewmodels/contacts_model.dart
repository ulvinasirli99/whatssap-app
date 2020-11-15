import 'package:firebase_auth/firebase_auth.dart';
import 'package:whatssapappflutter/core/locator.dart';
import 'package:whatssapappflutter/core/services/chat_service.dart';
import 'package:whatssapappflutter/models/profile.dart';
import 'package:whatssapappflutter/screens/conversation_page.dart';

import 'base_model.dart';

class ContactsModel extends BaseModel {
  final ChatService _chatService = getIt<ChatService>();

  Future<List<Profile>> getContacts(String query) async {
    var contacts = await _chatService.getContacs();

    var filteredContacts = contacts
        .where(
          (profile) => profile.userName.startsWith(query ?? ""),
    )
        .toList();

    return filteredContacts;
  }

  Future<void> startConversation(FirebaseUser user, Profile profile) async {
    var conversation = await _chatService.startConversation(user, profile);

    return navigatorService.navigateTo(
      ConversationPage(
        conversation: conversation,
        userId: user.uid,
      ),
    );
  }
}