import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors
            .blueGrey[100], // usando hexadecimal ->const  Color(0xff000000)
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              Icon(Icons.account_circle_rounded,
                  size: 125, color: Colors.cyan[600]),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 32),
                //color: Colors.lightGreen,
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Expanded(flex: 2, child: Text("Informe seu e-mail: ")),
                    Expanded(flex: 1, child: Text("e-mail"))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 32),
                //color: Colors.lightGreen,
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Expanded(flex: 2, child: Text("Informe seu nome: ")),
                    Expanded(flex: 1, child: Text("Nome"))
                  ],
                ),
              ),
              Expanded(child: Container()),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 32),
                color: Colors.lightGreen,
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                child: const Text("Login"),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 32),
                //color: Colors.lightGreen,
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                child: const Text("Cadastro"),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
