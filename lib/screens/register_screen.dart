import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:username_validator/username_validator.dart';
import 'package:quran_app/screens/login_screen.dart';
import 'package:quran_app/widgets/text_form_field.dart';
import 'package:quran_app/widgets/button.dart';
import 'package:quran_app/controller/auth_handler.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController usernameCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passCtrl = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AuthHandler authHandler = AuthHandler();
  bool _obscureText = true;
  bool isLoading = false;

  String? registrationError;

  registerUser() async {
    setState(() {
      isLoading = true;
    });

    // Create a map containing user registration data
    final Map<String, dynamic> registrationData = {
      'username': usernameCtrl.text,
      'email': emailCtrl.text,
      'password': passCtrl.text,
    };

    // Make the API request
    bool result = await authHandler.register(emailCtrl.text, passCtrl.text);


    setState(() {
      isLoading = false;
    });

    if (result) {
      // Registration succeeded
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("User registered successfully")),
      );
    } else {
      // Registration failed
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(registrationError ?? "Registration failed")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        padding: const EdgeInsets.all(18),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Image.asset('assets/familyPraying.png'),
                const Text(
                  'Register',
                  style: TextStyle(
                      fontSize: 43,
                      color: Colors.black,
                      fontWeight: FontWeight.w300),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Create your account',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                const SizedBox(height: 30),
                EnhancedTextFormField(
                  hintText: "Username",
                  controller: usernameCtrl,
                  validator: (value) {
                    if (!UValidator.validateThis(
                        pattern: RegPattern.strict, username: value!)) {
                      return 'Invalid username';
                    }
                    return null;
                  },
                  prefixIcon: const Icon(
                    Icons.person_2_outlined,
                  ),
                ),
                const SizedBox(height: 16),
                EnhancedTextFormField(
                  hintText: "Email",
                  controller: emailCtrl,
                  validator: MultiValidator([
                    RequiredValidator(errorText: 'Required*'),
                    EmailValidator(errorText: "Enter a valid email*")
                  ]),
                  prefixIcon: const Icon(
                    Icons.email_outlined,
                  ),
                ),
                const SizedBox(height: 16),
                EnhancedTextFormField(
                  hintText: "Password",
                  controller: passCtrl,
                  obscureText: _obscureText,
                  validator: MultiValidator([
                    RequiredValidator(errorText: 'Required*'),
                    LengthRangeValidator(
                        min: 2,
                        max: 20,
                        errorText: "Password length must be 2-20"),
                  ]),
                  prefixIcon: const Icon(
                    Icons.password_outlined,
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    child: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                isLoading
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : Center(
                        child: EnhancedButton(
                          text: "Register",
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              registerUser();
                            }
                          },
                        ),
                      ),
                const SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account?",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Sign in?",
                        style: TextStyle(
                          fontSize: 18,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
