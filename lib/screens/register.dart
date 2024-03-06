import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/login.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:gap/gap.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool hidePassword = true;
  final formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();

  void toggleHidePassword() {
    setState(() {
      hidePassword = !hidePassword;
    });
  }

  void register() async {
    if (formKey.currentState!.validate()) {
      EasyLoading.show(status: 'Please wait...');
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email.text,
          password: password.text,
        );
        EasyLoading.dismiss();
        Navigator.of(context).push(
          CupertinoPageRoute(
            builder: (_) => const LoginScreen(),
          ),
        );
      } catch (error) {
        print('Registration Error: $error');
        String errorMessage =
            'An error occurred during registration. Please try again.';
        if (error is FirebaseAuthException) {
          errorMessage = error.message ?? errorMessage;
        }
        EasyLoading.showError(errorMessage);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Gap(26),
              const Gap(12),
              TextFormField(
                controller: email,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email address',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Required. Please enter your email';
                  }
                  if (!EmailValidator.validate(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
              ),
              const Gap(12),
              TextFormField(
                controller: password,
                obscureText: hidePassword,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    onPressed: toggleHidePassword,
                    icon: Icon(
                      hidePassword ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Required. Please enter your password';
                  }
                  return null;
                },
              ),
              const Gap(12),
              ElevatedButton(
                onPressed: register,
                child: const Text('Register'),
              ),
              const Gap(20),
              const Text('Already have an account?'),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (_) => const LoginScreen()),
                  );
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
