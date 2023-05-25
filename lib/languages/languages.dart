

import 'package:get/get_navigation/src/root/internacionalization.dart';
import 'package:getx/languages/eng_lang.dart';
import 'package:getx/languages/tr_lang.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys =>
      {
        'en_US': ENGLang.engLangMessages, 
        'tr_TR': TRLang.trLangMessages
      };
}

// languageCode_Region/CountryCode
// en_US
//tr_TR