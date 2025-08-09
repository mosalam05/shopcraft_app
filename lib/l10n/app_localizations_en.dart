// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'ShopCraft';

  @override
  String get tagline => 'Your Premium Shopping Experience';

  @override
  String get signUp => 'Sign Up';

  @override
  String get signIn => 'Sign In';

  @override
  String get fullName => 'Full Name';

  @override
  String get email => 'Email';

  @override
  String get password => 'Password';

  @override
  String get confirmPassword => 'Confirm Password';

  @override
  String get nameError => 'Enter your name';

  @override
  String get nameUppercaseError => 'First letter must be uppercase';

  @override
  String get emailError => 'Enter valid email';

  @override
  String get passwordError => 'Password must be at least 6 characters';

  @override
  String get passwordMismatch => 'Passwords do not match';

  @override
  String get accountCreated => 'Account created successfully';

  @override
  String get accountSignedIn => 'Account sign-in successfully';

  @override
  String get close => 'Close';

  @override
  String get ourProducts => 'Our Products';

  @override
  String get hotOffers => 'Hot Offers';

  @override
  String get addToCart => 'added to the cart';
}
