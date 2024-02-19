import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:praxis_afterhours/constants/colors.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //Setting the margins of the content of the view.
        margin: const EdgeInsets.only(
          left: 24.0,
          right: 24.0,
          top: 100,
          bottom: 50,
        ),
        //Column holding the content of the view
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // "Sign In" and "Welcome back."
            Container(
              alignment: Alignment.centerLeft,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.normal,
                      color: praxisBlack,
                    ),
                  ),
                  Text(
                    "Welcome back.",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                      color: praxisBlack,
                    ),
                  ),
                ],
              ),
            ),
            //Email Address
            const TextField(
              decoration: InputDecoration(
                hintText: "Email Address",
              ),
            ),
            //Password
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
              ),
            ),
            //Forgot Password
            Container(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: praxisBlack,
                    fontSize: 12,
                    fontWeight: FontWeight.w100,
                    decoration: TextDecoration.underline,
                    decorationColor: praxisBlack,
                  ),
                ),
              ),
            ),
            //Log In
            Container(
              decoration: const BoxDecoration(
                color: praxisRed,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: TextButton(
                onPressed: () async {},
                child: const Text(
                  "Log In",
                  style: TextStyle(
                    color: praxisWhite,
                  ),
                ),
              ),
            ),
            //Divider (----or-----)
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: const Divider(color: praxisBlack),
                  ),
                ),
                const Text("or",
                    style: TextStyle(
                      color: praxisBlack,
                      fontWeight: FontWeight.bold,
                    )),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Divider(color: praxisBlack),
                  ),
                ),
              ],
            ),
            //Sign In with Facebook
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 12, 135, 239),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Row(
                children: [
                  const Icon(
                    FontAwesomeIcons.facebook,
                  ),
                  TextButton(
                    onPressed: () async {},
                    child: const Text(
                      "Sign In With Facebook",
                      style: TextStyle(color: praxisWhite),
                    ),
                  ),
                ],
              ),
            ),
            //Sign In with Google
            Container(
              decoration: BoxDecoration(
                  color: praxisWhite,
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                    ),
                  ]),
              child: TextButton(
                onPressed: () async {},
                child: const Text("Sign In With Google",
                    style: TextStyle(color: praxisBlack)),
              ),
            ),
            //Sign In with Apple
            Container(
              decoration: const BoxDecoration(
                color: praxisBlack,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: TextButton(
                onPressed: () async {},
                child: const Text(
                  "Sign In With Apple",
                  style: TextStyle(color: praxisWhite),
                ),
              ),
            ),
            //Divider (----or-----)
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: const Divider(color: praxisBlack),
                  ),
                ),
                const Text("or",
                    style: TextStyle(
                      color: praxisBlack,
                      fontWeight: FontWeight.bold,
                    )),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Divider(color: praxisBlack),
                  ),
                ),
              ],
            ),
            //Sign Up
            Container(
              decoration: const BoxDecoration(
                color: praxisRed,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: TextButton(
                onPressed: () async {},
                child: const Text(
                  "Sign Up",
                  style: TextStyle(color: praxisWhite),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
