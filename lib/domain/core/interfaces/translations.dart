import 'package:get/get.dart';

class MainTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello World',
          'language': 'Language',
          'back': 'Back',
          'languageEnglish': 'English',
        },
        'id_ID ': {
          'hello': 'Hai Dunia',
          'language': 'Bahasa',
          'back': 'Kembali',
          'languageEnglish': 'Inggris',
        }
      };
}
