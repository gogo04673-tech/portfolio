import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get welcome;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @total_balance.
  ///
  /// In en, this message translates to:
  /// **'Total Balance'**
  String get total_balance;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @currency.
  ///
  /// In en, this message translates to:
  /// **'Currency'**
  String get currency;

  /// No description provided for @security.
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get security;

  /// No description provided for @notification.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notification;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @me.
  ///
  /// In en, this message translates to:
  /// **'Me'**
  String get me;

  /// No description provided for @help.
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get help;

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// No description provided for @light.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get light;

  /// No description provided for @dark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get dark;

  /// No description provided for @system.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get system;

  /// No description provided for @creative.
  ///
  /// In en, this message translates to:
  /// **'Creative'**
  String get creative;

  /// Home page title
  ///
  /// In en, this message translates to:
  /// **'Designer &\nDeveloper'**
  String get designAndDeveloper;

  /// No description provided for @hiImName.
  ///
  /// In en, this message translates to:
  /// **'Hi, I\'m {name}'**
  String hiImName(String name);

  /// No description provided for @helloIm.
  ///
  /// In en, this message translates to:
  /// **'Hello, I\'m'**
  String get helloIm;

  /// No description provided for @basedOnCountry.
  ///
  /// In en, this message translates to:
  /// **'Based in {country}'**
  String basedOnCountry(String country);

  /// Main bio used in the app
  ///
  /// In en, this message translates to:
  /// **'I build solutions that solve real problems, develop impactful apps, and help people and businesses succeed.'**
  String get bio;

  /// No description provided for @contactMe.
  ///
  /// In en, this message translates to:
  /// **'Contact Me'**
  String get contactMe;

  /// No description provided for @portfolio.
  ///
  /// In en, this message translates to:
  /// **'Portfolio'**
  String get portfolio;

  /// No description provided for @portfolioShowcase.
  ///
  /// In en, this message translates to:
  /// **'Portfolio Showcase'**
  String get portfolioShowcase;

  /// No description provided for @portfolioBio.
  ///
  /// In en, this message translates to:
  /// **'If you\'re interested in working together, have projects in mind, or simply want to connect, feel free to reach out using the form on the right or through the provided contact information.'**
  String get portfolioBio;

  /// About me section
  ///
  /// In en, this message translates to:
  /// **'I build solutions that solve real problems and develop impactful applications for people and businesses. Flutter Developer with backend experience in Node.js and cloud platforms such as Firebase and Supabase, delivering end-to-end solutions with strong UI/UX design based on Figma. Focused on clean, scalable, and user-friendly apps that create real value and long-term impact.'**
  String get aboutBio;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @testimonials.
  ///
  /// In en, this message translates to:
  /// **'Testimonials'**
  String get testimonials;

  /// No description provided for @project.
  ///
  /// In en, this message translates to:
  /// **'Project'**
  String get project;

  /// No description provided for @projects.
  ///
  /// In en, this message translates to:
  /// **'Projects'**
  String get projects;

  /// No description provided for @techDev.
  ///
  /// In en, this message translates to:
  /// **'Tech Development'**
  String get techDev;

  /// No description provided for @uiUxDesign.
  ///
  /// In en, this message translates to:
  /// **'UI/UX Design'**
  String get uiUxDesign;

  /// No description provided for @langDev.
  ///
  /// In en, this message translates to:
  /// **'DART • FLUTTER • NODE • PYTHON • HTML • CSS • NPM • BLOC • CLEAN CODE • RESPONSIVE • PERFORMANCE • JAVASCRIPT • UI/UX • GRAPHIC DESIGN • PROBLEM SOLVING • GITHUB • TEAMWORK •'**
  String get langDev;

  /// No description provided for @totalProjects.
  ///
  /// In en, this message translates to:
  /// **'Total Projects'**
  String get totalProjects;

  /// No description provided for @totalProjectsBio.
  ///
  /// In en, this message translates to:
  /// **'Creating solutions that matter'**
  String get totalProjectsBio;

  /// No description provided for @certificates.
  ///
  /// In en, this message translates to:
  /// **'Certificates'**
  String get certificates;

  /// No description provided for @certificatesBio.
  ///
  /// In en, this message translates to:
  /// **'Mastering skills, earning recognition'**
  String get certificatesBio;

  /// No description provided for @yearsOfExperience.
  ///
  /// In en, this message translates to:
  /// **'Years of Experience'**
  String get yearsOfExperience;

  /// No description provided for @yearsBio.
  ///
  /// In en, this message translates to:
  /// **'Turning ideas into impact'**
  String get yearsBio;

  /// No description provided for @services.
  ///
  /// In en, this message translates to:
  /// **'Services'**
  String get services;

  /// No description provided for @service.
  ///
  /// In en, this message translates to:
  /// **'Service'**
  String get service;

  /// No description provided for @mobile_dev.
  ///
  /// In en, this message translates to:
  /// **'Mobile Development'**
  String get mobile_dev;

  /// No description provided for @mobile_dev_bio.
  ///
  /// In en, this message translates to:
  /// **'Mobile developer specializing in Flutter and cross-platform apps.Delivering clean UI and reliable performance.'**
  String get mobile_dev_bio;

  /// No description provided for @web_dev.
  ///
  /// In en, this message translates to:
  /// **'Web Development'**
  String get web_dev;

  /// No description provided for @web_dev_bio.
  ///
  /// In en, this message translates to:
  /// **'Web developer building modern, responsive web applications.Focused on performance, scalability, and clean code.'**
  String get web_dev_bio;

  /// No description provided for @fully_resp.
  ///
  /// In en, this message translates to:
  /// **'Fully Responsive Apps'**
  String get fully_resp;

  /// No description provided for @fully_resp_bio.
  ///
  /// In en, this message translates to:
  /// **'Creating responsive applications for all screen sizes.Focused on usability, flexibility, and scalability.'**
  String get fully_resp_bio;

  /// No description provided for @ui_ux.
  ///
  /// In en, this message translates to:
  /// **'UI/UX Design'**
  String get ui_ux;

  /// No description provided for @ui_ux_bio.
  ///
  /// In en, this message translates to:
  /// **'Shaping meaningful digital experiences through design.Focused on users, details, and flow.'**
  String get ui_ux_bio;

  /// No description provided for @resp_design.
  ///
  /// In en, this message translates to:
  /// **'Responsive Design'**
  String get resp_design;

  /// No description provided for @resp_design_bio.
  ///
  /// In en, this message translates to:
  /// **'Mobile and Web app designer focused on clean UI and smart UX. Building experiences users enjoy and understand instantly.'**
  String get resp_design_bio;

  /// No description provided for @brand_str.
  ///
  /// In en, this message translates to:
  /// **'Brand Strategy'**
  String get brand_str;

  /// No description provided for @brand_str_bio.
  ///
  /// In en, this message translates to:
  /// **'Developing clear brand strategies that align vision, values, and audience. Building consistent brands that communicate with purpose.'**
  String get brand_str_bio;

  /// No description provided for @spendly.
  ///
  /// In en, this message translates to:
  /// **'Spendly'**
  String get spendly;

  /// No description provided for @spendly_design.
  ///
  /// In en, this message translates to:
  /// **'spendly_design'**
  String get spendly_design;

  /// No description provided for @spendly_bio.
  ///
  /// In en, this message translates to:
  /// **''**
  String get spendly_bio;

  /// No description provided for @market_animals.
  ///
  /// In en, this message translates to:
  /// **'Market Animals'**
  String get market_animals;

  /// No description provided for @market_animals_design.
  ///
  /// In en, this message translates to:
  /// **'Market Animals Design'**
  String get market_animals_design;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
