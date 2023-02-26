import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<StatefulWidget> createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    var paddingValue = const EdgeInsets.all(10);
    return Scaffold(
      body: Center(
        child: ListView(
          padding: const EdgeInsets.only(left: 16, top: 64, right: 16),
          children: [
            Padding(
              padding: paddingValue,
              child: const Text(
                "Crea account",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: paddingValue,
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Nome",
                  hintText: "Nome",
                ),
              ),
            ),
            Padding(
              padding: paddingValue,
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "E-mail",
                  hintText: "E-mail",
                ),
              ),
            ),
            Padding(
              padding: paddingValue,
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  hintText: "Password",
                ),
              ),
            ),
            Padding(
              padding: paddingValue,
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Conferma password",
                  hintText: "Conferma password",
                ),
              ),
            ),
            Padding(
              padding: paddingValue,
              child: ElevatedButton(
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)))),
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Crea account",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
