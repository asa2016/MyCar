
class Settings {

  String mainUrl = 'https://sadeemedia.com/syarati/wp-json';
  String wcUrl = '/wc/v3';
  String dokanUrl = '/dokan/v1';
  String consumerKey = 'ck_18ffa354eea27c87e76cd2e13e51d16d2ccf92c5';
  String consumerSecret = 'cs_abd4378671f108f97cde73851c7ce319d2dba8e4';

  static Settings _singleton = new Settings._internal();

  factory Settings() {
    return _singleton;
  }

  Settings._internal();

}
