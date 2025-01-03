import 'package:flutter/material.dart';
import 'package:todo_c13_sun/screens/auth/login.dart';

import '../home/home.dart';
import '../lets_go_screen.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName = "registerScreen";
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repasswordController = TextEditingController();

  RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 50,
            ),
            Image.asset(
              'assets/images/login_image.png',
              height: 150,
            ),
            SizedBox(
              height: 24,
            ),
            TextField(
              controller: nameController,
              style: Theme.of(context).textTheme.bodyMedium,
              decoration: InputDecoration(
                hintText: "Name",
                prefixIcon: Icon(Icons.person),

              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              controller: emailController,
              style: Theme.of(context).textTheme.bodyMedium,
              decoration: InputDecoration(
                hintText: "Email",
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              controller: passwordController,
              style: Theme.of(context).textTheme.bodyMedium,
              decoration: InputDecoration(
                hintText: "Password",
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              controller: repasswordController,
              style: Theme.of(context).textTheme.bodyMedium,
              decoration: InputDecoration(
                hintText: "rePassword",
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility_off_outlined),
             
              ),
            ),
            SizedBox(
              height: 24,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, HomeScreen.routeName);
                },
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    backgroundColor: Color(0xFF5669FF)),
                child: Text(
                  "Create Account",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.white),
                )),
            SizedBox(
              height: 24,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, LoginScreen.routeName);
              },
              child: Text.rich(

                textAlign: TextAlign.center,
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Already Have Account? ",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                    ),
                    TextSpan(
                        text: "Login",
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              decoration: TextDecoration.underline,
                            )!),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
