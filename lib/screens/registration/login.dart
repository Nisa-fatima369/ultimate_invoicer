import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ultimate_invoicer/config/routes.dart';
import 'package:ultimate_invoicer/constants.dart';
import 'package:ultimate_invoicer/theme/colors.dart';
import 'package:ultimate_invoicer/widgets/reusable_textfields.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isObscure = true;
  bool isLoading = false;

  bool isValidEmail(String email) {
    return RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Image.asset(
                    "assets/images/logo.png",
                    height: 200,
                  ),
                  y20,
                  Text('Manage your invoices easily',
                      style: Theme.of(context).textTheme.displayLarge),
                  y40,
                  Reusable(
                    hintText: 'Email',
                    icon: const Icon(Icons.email),
                    keyboardType: TextInputType.emailAddress,
                    inputFormatters: const [],
                    controller: emailController,
                    validattor: (value) {
                      if (value!.isEmpty) {
                        return 'Email is required';
                      } else if (!isValidEmail(value)) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                  ),
                  y20,
                  Reusable(
                    hintText: 'Password',
                    keyboardType: TextInputType.visiblePassword,
                    icon: const Icon(Icons.lock),
                    obscureText: isObscure,
                    inputFormatters: const [],
                    controller: passwordController,
                    suffixIcon: InkWell(
                      child: Icon(
                        isObscure ? Icons.visibility_off : Icons.visibility,
                        color: AppColor.secondary,
                      ),
                      onTap: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                    ),
                    validattor: (value) {
                      if (value!.isEmpty) {
                        return 'Password is required';
                      } else if (value.length < 6) {
                        return 'Password must be at least 6 characters';
                      }
                      return null;
                    },
                  ),
                  y40,
                  SizedBox(
                    height: 45,
                    width: double.infinity,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(AppColor.primary),
                      ),
                      onPressed: isLoading
                          ? null
                          : () async {
                              if (formKey.currentState!.validate()) {
                                setState(() {
                                  isLoading = true;
                                });
                                try {
                                  await FirebaseAuth.instance
                                      .signInWithEmailAndPassword(
                                    email: emailController.text,
                                    password: passwordController.text,
                                  );
                                  Navigator.pushReplacementNamed(
                                      context, Routes.pageView);
                                } on FirebaseAuthException catch (e) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text('Login failed: ${e.message}'),
                                  ));
                                } catch (e) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content:
                                        Text('An unexpected error occurred.'),
                                  ));
                                } finally {
                                  setState(() {
                                    isLoading = false;
                                  });
                                }
                              }
                            },
                      child: isLoading
                          ? const Center(child: CircularProgressIndicator())
                          : Text(
                              'LOGIN',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(color: AppColor.border),
                            ),
                    ),
                  ),
                  y40,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account yet?',
                          style: Theme.of(context).textTheme.bodyLarge),
                      // SizedBox(width: 10),
                      InkWell(
                        onTap: () =>
                            Navigator.pushNamed(context, Routes.signupScreen),
                        child: Text(
                          'Create Here',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: AppColor.primary),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
