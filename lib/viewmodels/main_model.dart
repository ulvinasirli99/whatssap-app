

import 'package:whatssapappflutter/screens/contacts_page.dart';

import 'base_model.dart';

class MainModel extends BaseModel {
  Future<void> navigateToContacts() {
    return navigatorService.navigateTo(ContactsPage());
  }
}