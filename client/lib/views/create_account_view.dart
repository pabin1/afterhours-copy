import 'package:flutter/material.dart';
import 'package:praxis_afterhours/constants/colors.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({super.key});
  final margins = const EdgeInsets.only(
    top: 32,
    bottom: 32,
    left: 32,
    right: 32,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: margins,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {},
              )
            ),
            Container(
              alignment: Alignment.bottomCenter,
              // margin: margins,
              child: const FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "Create an Account",
                  style: TextStyle(fontSize: 36)
                ),
              ),
            ), Container(
              alignment: Alignment.center,
              // padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(12.0),
              child: const TextField(
                decoration: InputDecoration(
                  labelText: "Username",
                )
              )
            ), Container(
              alignment: Alignment.center,
              // padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(12.0),
              child: const TextField(
                decoration: InputDecoration(
                  labelText: "Full Name",
                )
              )
            ), Container(
              alignment: Alignment.center,
              // padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(12.0),
              child: const TextField(
                decoration: InputDecoration(
                  labelText: "Email Address",
                )
              )
            ), Container(
              alignment: Alignment.center,
              // padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(12.0),
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                )
              )
            ), Container(
              alignment: Alignment.centerLeft,
              // padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(12.0),
              child: const Text(
                "Your password must have\n • More than 8 characters\n • At least one number\n • At least one special character"
              ),
            ), Container(
              margin: const EdgeInsets.all(12.0),
              decoration: const BoxDecoration(
                color: praxisRed,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ), child: TextButton(
                onPressed: () {},
                child: const Text (
                  "Sign Up",
                  style: TextStyle(
                    color: praxisWhite,
                  )
                ),
              ),
            )
          ],
        )
      )
    );
  }
}
