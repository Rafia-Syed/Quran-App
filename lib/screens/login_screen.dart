import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:quran_app/screens/list.dart';
import 'package:quran_app/screens/register_screen.dart';
import 'package:username_validator/username_validator.dart';
import 'package:quran_app/widgets/text_form_field.dart';
import 'package:quran_app/widgets/button.dart';
import 'package:quran_app/controller/auth_handler.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passCtrl = TextEditingController();
  AuthHandler authHandler = AuthHandler();
  bool _obscureText = true;
  bool isLoading = false;
  loginUser() async {
    setState(() {
      isLoading = true;
    });
    // API hit
    bool result = await authHandler.register(emailCtrl.text, passCtrl.text);
    setState(() {
      isLoading = false;
    });
    if (result) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => ListQuran()));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Invalid credentials")));
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          color: Colors.white,
          padding: const EdgeInsets.all(18),
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Center(
              child: Form(
                key: formKey,
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/handDrawn.png'),
                    const Text(
                      'Welcome back',
                      style: TextStyle(
                          fontSize: 43,
                          color: Colors.black,
                          fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Login to your account',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    const SizedBox(height: 50),
                    EnhancedTextFormField(
                      hintText: "Email",
                      controller: emailCtrl,
                      validator: MultiValidator([
                        RequiredValidator(errorText: 'Required*'),
                    EmailValidator(errorText: "Enter a valid email*"),
                      ]),
                      prefixIcon: const Icon(
                        Icons.person_2_outlined,
                      ),
                    ),
                    const SizedBox(height: 10),
                    EnhancedTextFormField(
                      hintText: "Password",
                      controller: passCtrl,
                      obscureText: true,
                      validator: MultiValidator([
                        RequiredValidator(errorText: 'Required*'),
                        LengthRangeValidator(
                            min: 2,
                            max: 20,
                            errorText: "Password length must be 2-20")
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
                    const SizedBox(height: 80),
                    isLoading
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : EnhancedButton(
                            text: "Log in",
                            onPressed: () {
                              if (formKey.currentState!.validate() == true) {
                              loginUser();
                              }
                              print("login successfully");
                            }),
                    const SizedBox(height: 18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          "Don't have an account?",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const RegisterScreen()));
                            }
                          },
                          child: Text(
                            "Sign up?",
                            style: TextStyle(
                                fontSize: 18,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold),
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
      ),
    );
  }
}
