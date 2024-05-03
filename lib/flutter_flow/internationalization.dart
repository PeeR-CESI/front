import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['fr', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? frText = '',
    String? enText = '',
  }) =>
      [frText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // home
  {
    'h1vp3gh0': {
      'fr': 'Label here...',
      'en': '',
    },
    'p9nv9pq0': {
      'fr': 'Peerers',
      'en': '',
    },
    'jzqs561i': {
      'fr': 'Administrative',
      'en': '',
    },
    '65fjj6le': {
      'fr': 'Administrative',
      'en': '',
    },
    'hjo1zsq2': {
      'fr': 'Administrative',
      'en': '',
    },
    'cw4y556t': {
      'fr': 'Administrative',
      'en': '',
    },
    'qmv4yw8d': {
      'fr': 'Administrative',
      'en': '',
    },
    'fjvvlkaq': {
      'fr': 'Administrative',
      'en': '',
    },
    'mp1plzr0': {
      'fr': 'Administrative',
      'en': '',
    },
    '1pi203n9': {
      'fr': 'Administrative',
      'en': '',
    },
    'qg0mscwd': {
      'fr': 'Administrative',
      'en': '',
    },
    'yi6jchuj': {
      'fr': 'Welcome Sitia,',
      'en': '',
    },
    'nhjfbby4': {
      'fr': 'Explore popular job on Peer',
      'en': '',
    },
    'vdz0mrxx': {
      'fr': 'Hello World',
      'en': '',
    },
    'zft30mxf': {
      'fr': 'Hello World',
      'en': '',
    },
    '4zoap8z7': {
      'fr': 'Hello World',
      'en': '',
    },
    'e3s4b3fs': {
      'fr': 'Hello World',
      'en': '',
    },
    'cyeuayet': {
      'fr': 'Get inspired by community on Peer',
      'en': '',
    },
    'wdoc5yei': {
      'fr': 'PhotoMix',
      'en': '',
    },
    'qkcjta5e': {
      'fr': 'Website',
      'en': '',
    },
    'cev8tr06': {
      'fr': 'Home',
      'en': '',
    },
  },
  // auth_2_Create
  {
    'snmjl83s': {
      'fr': 'Get Started',
      'en': '',
    },
    '5m61ypgw': {
      'fr': 'Create an account by using the form below.',
      'en': '',
    },
    '61ywjyr9': {
      'fr': 'Email',
      'en': '',
    },
    'fayputrs': {
      'fr': 'Password',
      'en': '',
    },
    'qsw8am0a': {
      'fr': 'Nom',
      'en': '',
    },
    'l6srst13': {
      'fr': 'Prénom',
      'en': '',
    },
    'jwr3oiec': {
      'fr': 'role',
      'en': '',
    },
    'i777a0r0': {
      'fr': 'Nom utilisateur',
      'en': '',
    },
    'clbbashg': {
      'fr': 'adresse',
      'en': '',
    },
    'w7v1h3z8': {
      'fr': 'Create Account',
      'en': '',
    },
    'zcoscmaz': {
      'fr': 'Already have an account? ',
      'en': '',
    },
    'j5pi0xuf': {
      'fr': 'Sign in here',
      'en': '',
    },
    't67id54f': {
      'fr': 'Home',
      'en': '',
    },
  },
  // auth_2_Login
  {
    '4vr4k13d': {
      'fr': 'Welcome Back',
      'en': '',
    },
    'opcbyw1x': {
      'fr': 'Fill out the information below in order to access your account.',
      'en': '',
    },
    '15vddr4m': {
      'fr': 'PEER',
      'en': '',
    },
    '1v1zlo71': {
      'fr': 'PEER PRO',
      'en': '',
    },
    'rx7xo9r2': {
      'fr': 'Email',
      'en': '',
    },
    '9cs16blb': {
      'fr': 'Password',
      'en': '',
    },
    '091ec2yy': {
      'fr': 'Sign In',
      'en': '',
    },
    'ctvefmmr': {
      'fr': 'Don\'t have an account?  ',
      'en': '',
    },
    'me7m05ba': {
      'fr': 'Create Account',
      'en': '',
    },
    'f7fuuuq5': {
      'fr': 'Forgot password?',
      'en': '',
    },
    'hxu8r0xp': {
      'fr': 'Home',
      'en': '',
    },
  },
  // auth_2_ForgotPassword
  {
    'avhf3433': {
      'fr': 'Forgot Password',
      'en': '',
    },
    '77d4plzd': {
      'fr':
          'Please fill out your email belo in order to recieve a reset password link.',
      'en': '',
    },
    '7wj0p41i': {
      'fr': 'Email',
      'en': '',
    },
    'wxc4sco5': {
      'fr': 'Send Reset Link',
      'en': '',
    },
    'h8j4tyzs': {
      'fr': 'Home',
      'en': '',
    },
  },
  // HomeUnconnectDesktop
  {
    '8jqb4fci': {
      'fr': 'Peer Pro',
      'en': '',
    },
    '7lu644w8': {
      'fr': 'Explore',
      'en': '',
    },
    '9wj9k9au': {
      'fr': 'English',
      'en': '',
    },
    'nbos8fvo': {
      'fr': 'Seller',
      'en': '',
    },
    'oys8hjlu': {
      'fr': 'Sign In',
      'en': '',
    },
    'g99e0ouv': {
      'fr': 'Join',
      'en': '',
    },
    'yewvw46m': {
      'fr': 'Elise: web designer',
      'en': '',
    },
    '85wkds91': {
      'fr': 'FInd the good slogan You will love it',
      'en': '',
    },
    'g1bkvzt1': {
      'fr': 'Label here...',
      'en': '',
    },
    '3qheg9ox': {
      'fr': 'Idea :',
      'en': '',
    },
    'q6e9egpe': {
      'fr': 'Website design',
      'en': '',
    },
    'g1qax2ql': {
      'fr': 'Website design',
      'en': '',
    },
    'y39quhux': {
      'fr': 'Website design',
      'en': '',
    },
    'pklboz1x': {
      'fr': 'Login',
      'en': '',
    },
    'cs12mdmw': {
      'fr': 'Sign In',
      'en': '',
    },
    'hmw3l999': {
      'fr': 'Home',
      'en': '',
    },
  },
  // Recherche
  {
    'z7puacrb': {
      'fr': 'Label here...',
      'en': '',
    },
    'vh96lt0p': {
      'fr': 'Peerers',
      'en': '',
    },
    '1blx34r6': {
      'fr': 'Administrative',
      'en': '',
    },
    '4zk3f1zs': {
      'fr': 'Administrative',
      'en': '',
    },
    '1z67oqu1': {
      'fr': 'Administrative',
      'en': '',
    },
    'b3otfr7j': {
      'fr': 'Administrative',
      'en': '',
    },
    '6aktpkpt': {
      'fr': 'Administrative',
      'en': '',
    },
    '1q6xmdo6': {
      'fr': 'Administrative',
      'en': '',
    },
    'sendxlls': {
      'fr': 'Administrative',
      'en': '',
    },
    'obh8ho4p': {
      'fr': 'Administrative',
      'en': '',
    },
    'eozsumtw': {
      'fr': 'Administrative',
      'en': '',
    },
    'kspcedvt': {
      'fr': 'Resultats For',
      'en': '',
    },
    'safeph6i': {
      'fr': ' Services ',
      'en': '',
    },
    'cino7qkw': {
      'fr': 'Home',
      'en': '',
    },
  },
  // Service
  {
    'wyqvncgn': {
      'fr': 'Label here...',
      'en': '',
    },
    'ddj6mps6': {
      'fr': 'Peerers',
      'en': '',
    },
    '3vda3g56': {
      'fr': 'Administrative',
      'en': '',
    },
    'enewblt9': {
      'fr': 'Administrative',
      'en': '',
    },
    'ufkzky8d': {
      'fr': 'Administrative',
      'en': '',
    },
    'fnkcqesx': {
      'fr': 'Administrative',
      'en': '',
    },
    'n70tk8t8': {
      'fr': 'Administrative',
      'en': '',
    },
    'x8q5mdmo': {
      'fr': 'Administrative',
      'en': '',
    },
    'yw65cwa7': {
      'fr': 'Administrative',
      'en': '',
    },
    'opekvsdd': {
      'fr': 'Administrative',
      'en': '',
    },
    'cv1bpah1': {
      'fr': 'Administrative',
      'en': '',
    },
    't38vab1e': {
      'fr': 'Hello World',
      'en': '',
    },
    '74v1am1i': {
      'fr': 'Hello World',
      'en': '',
    },
    'dln1gnui': {
      'fr': 'M.lirs',
      'en': '',
    },
    'kny0myve': {
      'fr': '5.0',
      'en': '',
    },
    'pea0n7lb': {
      'fr': '(244)',
      'en': '',
    },
    'd96y3t5k': {
      'fr': 'JE REPARE VOTRE PLOMBERIE',
      'en': '',
    },
    'ymmot791': {
      'fr': 'Paris, île-de-france',
      'en': '',
    },
    'p78a9vlb': {
      'fr':
          'Devis sur place\nRéparation rapide\nRéparation ultérieure si nécésaire.',
      'en': '',
    },
    'vwginrxh': {
      'fr': 'Price to define (€)',
      'en': '',
    },
    'qp0j4fsl': {
      'fr': 'Estimate',
      'en': '',
    },
    '7fffoz7j': {
      'fr': 'Description :',
      'en': '',
    },
    'skoc8673': {
      'fr':
          'Hello World sdssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss',
      'en': '',
    },
    '6u7dl708': {
      'fr': 'Suggested',
      'en': '',
    },
    'm506zqvz': {
      'fr': 'M.lirs',
      'en': '',
    },
    'wvcbt461': {
      'fr': 'Top P',
      'en': '',
    },
    '8yhws9w0': {
      'fr': 'Je répare votre chaudière dans la journée',
      'en': '',
    },
    'tcppk2km': {
      'fr': '5.0',
      'en': '',
    },
    'r86m05k6': {
      'fr': '(244)',
      'en': '',
    },
    '8l3zn7q8': {
      'fr': 'Home',
      'en': '',
    },
  },
  // Account
  {
    'u3mee5rl': {
      'fr': 'Label here...',
      'en': '',
    },
    'ybk11pms': {
      'fr': 'Peerers',
      'en': '',
    },
    '1pytwvim': {
      'fr': 'Administrative',
      'en': '',
    },
    'ukjb5q3m': {
      'fr': 'Administrative',
      'en': '',
    },
    'dianuqe5': {
      'fr': 'Administrative',
      'en': '',
    },
    '0lmmnhhh': {
      'fr': 'Administrative',
      'en': '',
    },
    '6dx6k5bq': {
      'fr': 'Administrative',
      'en': '',
    },
    'loijjeup': {
      'fr': 'Administrative',
      'en': '',
    },
    'eefwbl9x': {
      'fr': 'Administrative',
      'en': '',
    },
    '946lmpqz': {
      'fr': 'Administrative',
      'en': '',
    },
    'c0of6ebe': {
      'fr': 'Administrative',
      'en': '',
    },
    '1gmy0fiw': {
      'fr': 'Account',
      'en': '',
    },
    '5cgez8bd': {
      'fr': 'Nom utilisateur',
      'en': '',
    },
    'df1v0gbo': {
      'fr': 'Email',
      'en': '',
    },
    'fixm5box': {
      'fr': 'Nom',
      'en': '',
    },
    'zx9bulai': {
      'fr': 'Email',
      'en': '',
    },
    'rg7xehwj': {
      'fr': 'Email',
      'en': '',
    },
    'oys01yjw': {
      'fr': 'Email',
      'en': '',
    },
    '02ume1m4': {
      'fr': 'Prenom',
      'en': '',
    },
    'u3zla0v9': {
      'fr': 'Email',
      'en': '',
    },
    'qvkxunbv': {
      'fr': 'Mots de passe',
      'en': '',
    },
    'u1llz1da': {
      'fr': 'Email',
      'en': '',
    },
    '3i6ggsj9': {
      'fr': 'Role',
      'en': '',
    },
    'evqbplsc': {
      'fr': 'Email',
      'en': '',
    },
    'zn88qmqy': {
      'fr': 'Adresse',
      'en': '',
    },
    'rbfoutpv': {
      'fr': 'Email',
      'en': '',
    },
    'oyif8mdr': {
      'fr': 'Modifier',
      'en': '',
    },
    'qnh05ns0': {
      'fr': 'Suprimer',
      'en': '',
    },
    'rg1vrk0s': {
      'fr': 'Home',
      'en': '',
    },
  },
  // Message
  {
    '5rj0o28b': {
      'fr': 'Label here...',
      'en': '',
    },
    'ftglb6yy': {
      'fr': 'Peerers',
      'en': '',
    },
    'p4isk4v4': {
      'fr': 'Administrative',
      'en': '',
    },
    '6zkbb75j': {
      'fr': 'Administrative',
      'en': '',
    },
    '0w2fhto1': {
      'fr': 'Administrative',
      'en': '',
    },
    'jt4ryaf8': {
      'fr': 'Administrative',
      'en': '',
    },
    '9ii7svy0': {
      'fr': 'Administrative',
      'en': '',
    },
    '3raqkl9z': {
      'fr': 'Administrative',
      'en': '',
    },
    'rw8d6lfj': {
      'fr': 'Administrative',
      'en': '',
    },
    'o5ysbapx': {
      'fr': 'Administrative',
      'en': '',
    },
    '7ytq6a87': {
      'fr': 'Administrative',
      'en': '',
    },
    'l95pt07q': {
      'fr': 'Emily',
      'en': '',
    },
    'nu0rrdip': {
      'fr': 'Quand voulez-vous venir...',
      'en': '',
    },
    'p2sx85fk': {
      'fr': 'JE REPARE VOTRE PLOMBERIE 1',
      'en': '',
    },
    'i172r2es': {
      'fr': 'M.lirs',
      'en': '',
    },
    '06cd1fot': {
      'fr': 'Home',
      'en': '',
    },
  },
  // ServiceCopy
  {
    'ohal6rrp': {
      'fr': 'Label here...',
      'en': '',
    },
    'k8toxjlv': {
      'fr': 'Peerers',
      'en': '',
    },
    'quuuuo95': {
      'fr': 'Administrative',
      'en': '',
    },
    'ejdj8kp9': {
      'fr': 'Administrative',
      'en': '',
    },
    '7bbjg6rs': {
      'fr': 'Administrative',
      'en': '',
    },
    '10uqharo': {
      'fr': 'Administrative',
      'en': '',
    },
    'k7n9fp8z': {
      'fr': 'Administrative',
      'en': '',
    },
    't1jhvwwk': {
      'fr': 'Administrative',
      'en': '',
    },
    '1uxmles1': {
      'fr': 'Administrative',
      'en': '',
    },
    's5juab9m': {
      'fr': 'Administrative',
      'en': '',
    },
    'w9exo7q8': {
      'fr': 'Administrative',
      'en': '',
    },
    'acaned3k': {
      'fr': 'JE REPARE VOTRE PLOMBERIE',
      'en': '',
    },
    'dt173xko': {
      'fr': '#Order complete ',
      'en': '',
    },
    'o10788bl': {
      'fr': 'Home',
      'en': '',
    },
  },
  // HeaderDesktop
  {
    'e0woq6dp': {
      'fr': 'Label here...',
      'en': '',
    },
    '8svxub2v': {
      'fr': 'Peerers',
      'en': '',
    },
    '3hdpim59': {
      'fr': 'Digital',
      'en': '',
    },
    '8vuoyo7z': {
      'fr': 'Digital',
      'en': '',
    },
    'xgkdtqg4': {
      'fr': 'Digital',
      'en': '',
    },
    'tq83t55d': {
      'fr': 'Digital',
      'en': '',
    },
    '05cm8whq': {
      'fr': 'Digital',
      'en': '',
    },
    'tv6kd5gz': {
      'fr': 'Digital',
      'en': '',
    },
    '08qyauxl': {
      'fr': 'Digital',
      'en': '',
    },
  },
  // fiche_article
  {
    'n9jsy7vu': {
      'fr': 'M.lirs',
      'en': '',
    },
    '3p2plzny': {
      'fr': 'Top P',
      'en': '',
    },
    'axlzxvw6': {
      'fr': 'Je répare votre chaudière dans la journée',
      'en': '',
    },
    'u199q9u2': {
      'fr': '5.0',
      'en': '',
    },
    '38zvx75z': {
      'fr': '(244)',
      'en': '',
    },
  },
  // Header
  {
    'u927yzv3': {
      'fr': 'Label here...',
      'en': '',
    },
    'wp9yheji': {
      'fr': 'Peerers',
      'en': '',
    },
    'jj9pgjly': {
      'fr': 'Administrative',
      'en': '',
    },
    '6bz8bo1p': {
      'fr': 'Administrative',
      'en': '',
    },
    'gfcy2sbb': {
      'fr': 'Administrative',
      'en': '',
    },
    'hb8p8qg5': {
      'fr': 'Administrative',
      'en': '',
    },
    '7ko29b30': {
      'fr': 'Administrative',
      'en': '',
    },
    'z196l5w9': {
      'fr': 'Administrative',
      'en': '',
    },
    '231ecpco': {
      'fr': 'Administrative',
      'en': '',
    },
    'p5ghunlk': {
      'fr': 'Administrative',
      'en': '',
    },
    'izih5au9': {
      'fr': 'Administrative',
      'en': '',
    },
  },
  // dropmenu
  {
    '2dsq82w2': {
      'fr': 'Account Options',
      'en': '',
    },
    'ua0xd50l': {
      'fr': 'Randy Peterson',
      'en': '',
    },
    'krsp1y8q': {
      'fr': 'randy.p@domainname.com',
      'en': '',
    },
    '0z15kr0v': {
      'fr': 'My Account',
      'en': '',
    },
    'ltamc01n': {
      'fr': 'Billing Details',
      'en': '',
    },
    'tfud7dc7': {
      'fr': 'Log out',
      'en': '',
    },
  },
  // MessagBox
  {
    '58d2jj3k': {
      'fr': 'Type here to respond...',
      'en': '',
    },
  },
  // Dropdown03Account
  {
    '3e7r687n': {
      'fr': 'Account Options',
      'en': '',
    },
    'aa0uc45o': {
      'fr': 'Randy Peterson',
      'en': '',
    },
    '5bmhff6c': {
      'fr': 'randy.p@domainname.com',
      'en': '',
    },
    'eekhhh94': {
      'fr': 'My Account',
      'en': '',
    },
    'f1neqt0r': {
      'fr': 'Settings',
      'en': '',
    },
    'vopwoby1': {
      'fr': 'Billing Details',
      'en': '',
    },
    'nu0qbvks': {
      'fr': 'Log out',
      'en': '',
    },
  },
  // SideNav04
  {
    'hbeltopw': {
      'fr': 'check.io',
      'en': '',
    },
    'vgp1cods': {
      'fr': 'Search',
      'en': '',
    },
    'pzcb23gg': {
      'fr': 'Dashboard',
      'en': '',
    },
    'g5yusjc1': {
      'fr': 'Customers',
      'en': '',
    },
    'v91b2bfi': {
      'fr': 'Contracts',
      'en': '',
    },
    'syrav98u': {
      'fr': 'My Team',
      'en': '',
    },
    'y9cpd3nv': {
      'fr': 'Profile',
      'en': '',
    },
    'h09bdpv5': {
      'fr': 'Andrew D.',
      'en': '',
    },
    '54sre12d': {
      'fr': 'admin@gmail.com',
      'en': '',
    },
    '83d493sm': {
      'fr': 'View Profile',
      'en': '',
    },
  },
  // Miscellaneous
  {
    '3ff7kgsm': {
      'fr': '',
      'en': '',
    },
    'pq5i0762': {
      'fr': '',
      'en': '',
    },
    'oxc7gg79': {
      'fr': '',
      'en': '',
    },
    'lltaakm2': {
      'fr': '',
      'en': '',
    },
    'gtedw7an': {
      'fr': '',
      'en': '',
    },
    'u2b5yfid': {
      'fr': '',
      'en': '',
    },
    'v3f2e8hd': {
      'fr': '',
      'en': '',
    },
    'tqib3if0': {
      'fr': '',
      'en': '',
    },
    'sxmb48mz': {
      'fr': '',
      'en': '',
    },
    'q2yysb6t': {
      'fr': '',
      'en': '',
    },
    '4gg710si': {
      'fr': '',
      'en': '',
    },
    'mopx7kdw': {
      'fr': '',
      'en': '',
    },
    '52qh6vvc': {
      'fr': '',
      'en': '',
    },
    'op0byxha': {
      'fr': '',
      'en': '',
    },
    's70szb2h': {
      'fr': '',
      'en': '',
    },
    'gf2yxenb': {
      'fr': '',
      'en': '',
    },
    '8ncbuimo': {
      'fr': '',
      'en': '',
    },
    '3h1w3f94': {
      'fr': '',
      'en': '',
    },
    'jf7kipay': {
      'fr': '',
      'en': '',
    },
    '471rwj1d': {
      'fr': '',
      'en': '',
    },
    'cdxtx9wj': {
      'fr': '',
      'en': '',
    },
    'uteb4tnq': {
      'fr': '',
      'en': '',
    },
    'kc3fxr3y': {
      'fr': '',
      'en': '',
    },
    '4k1ien7w': {
      'fr': '',
      'en': '',
    },
    'inveiqaa': {
      'fr': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
