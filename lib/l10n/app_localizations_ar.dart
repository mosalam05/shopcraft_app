// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'شوب كرافت';

  @override
  String get tagline => 'تجربة تسوق مميزة';

  @override
  String get signUp => 'إنشاء حساب';

  @override
  String get signIn => 'تسجيل الدخول';

  @override
  String get fullName => 'الاسم الكامل';

  @override
  String get email => 'البريد الإلكتروني';

  @override
  String get password => 'كلمة المرور';

  @override
  String get confirmPassword => 'تأكيد كلمة المرور';

  @override
  String get nameError => 'أدخل اسمك';

  @override
  String get nameUppercaseError => 'يجب أن يبدأ الاسم بحرف كبير';

  @override
  String get emailError => 'أدخل بريد إلكتروني صحيح';

  @override
  String get passwordError => 'كلمة المرور يجب أن تكون على الأقل 6 أحرف';

  @override
  String get passwordMismatch => 'كلمات المرور غير متطابقة';

  @override
  String get accountCreated => 'تم إنشاء الحساب بنجاح';

  @override
  String get accountSignedIn => 'تم تسجيل الدخول بنجاح';

  @override
  String get close => 'إغلاق';

  @override
  String get ourProducts => 'منتجاتنا';

  @override
  String get hotOffers => 'العروض الساخنة';

  @override
  String get addToCart => 'تمت إضافته إلى عربة التسوق';
}
