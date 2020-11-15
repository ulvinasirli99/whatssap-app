import 'package:get_it/get_it.dart';
import 'package:whatssapappflutter/core/services/auth_service.dart';
import 'package:whatssapappflutter/core/services/chat_service.dart';
import 'package:whatssapappflutter/core/services/navigator_service.dart';
import 'package:whatssapappflutter/core/services/storage_service.dart';
import 'package:whatssapappflutter/viewmodels/chats_model.dart';
import 'package:whatssapappflutter/viewmodels/contacts_model.dart';
import 'package:whatssapappflutter/viewmodels/conversation_model.dart';
import 'package:whatssapappflutter/viewmodels/main_model.dart';
import 'package:whatssapappflutter/viewmodels/sign_in_model.dart';

GetIt getIt = GetIt.instance;

setupLocators() {
  getIt.registerLazySingleton(() => NavigatorService());
  getIt.registerLazySingleton(() => ChatService());
  getIt.registerLazySingleton(() => AuthService());
  getIt.registerLazySingleton(() => StorageService());

  getIt.registerFactory(() => MainModel());
  getIt.registerFactory(() => ChatsModel());
  getIt.registerFactory(() => SignInModel());
  getIt.registerFactory(() => ContactsModel());
  getIt.registerFactory(() => ConversationModel());
}