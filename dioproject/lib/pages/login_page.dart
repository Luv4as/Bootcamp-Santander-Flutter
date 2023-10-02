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
                height: 70,
              ),
              Row(
                children: [
                  Expanded(child: Container()),
                  Expanded(
                    flex: 8,
                    child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/4/45/Notion_app_logo.png",
                      height: 125,
                    ),
                  ),
                  Expanded(child: Container()),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Já tem cadastro?",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Faça seu login e use a plataforma",
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 32),
                //color: Colors.lightGreen,
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                child: const Row(
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
                child: const Row(
                  children: [
                    Expanded(flex: 2, child: Text("Informe seu nome: ")),
                    Expanded(flex: 1, child: Text("Nome"))
                  ],
                ),
              ),
              const SizedBox(
                height: 48,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 32),
                //color: Colors.lightGreen,
                width: double.infinity,
                //height: 50,
                alignment: Alignment.center,
                child: SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16))),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.lightGreen)),
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      )),
                ),
              ),
              Expanded(child: Container()),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 32),
                //color: Colors.lightGreen,
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                child: const Text("Esqueci minha senha"),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 32),
                //color: Colors.lightGreen,
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                child: const Text(
                  "Criar conta",
                  style: TextStyle(color: Colors.green),
                ),
              ),
              Expanded(child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}
