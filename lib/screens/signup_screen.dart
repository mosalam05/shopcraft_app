import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:shopcraft_app/l10n/app_localizations.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var t = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(t.signUp)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: t.fullName),
                validator: (value) {
                  if (value == null || value.isEmpty) return t.nameError;
                  if (value[0] != value[0].toUpperCase()) {
                    return t.nameUppercaseError;
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: t.email),
                validator: (value) {
                  if (value == null || !value.contains('@')) return t.emailError;
                  return null;
                },
              ),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(labelText: t.password),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.length < 6) return t.passwordError;
                  return null;
                },
              ),
              TextFormField(
                controller: _confirmPasswordController,
                decoration: InputDecoration(labelText: t.confirmPassword),
                obscureText: true,
                validator: (value) {
                  if (value != _passwordController.text) return t.passwordMismatch;
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                        content: Text(t.accountCreated),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (_, __, ___) => const HomeScreen(),
                                  transitionsBuilder: (_, animation, __, child) {
                                    return FadeTransition(opacity: animation, child: child);
                                  },
                                ),
                              );
                            },
                            child: Text(t.close),
                          ),
                        ],
                      ),
                    );
                  }
                },
                child: Text(t.signUp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
