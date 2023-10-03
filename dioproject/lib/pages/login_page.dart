import 'package:dioproject/pages/main_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController(text: "");
  var senhaController = TextEditingController(text: "");
  bool esconde = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors
            .blueGrey[100], // usando hexadecimal ->const  Color(0xff000000)
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
            ),
            child: SizedBox(
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
                    child: TextField(
                      controller: emailController,
                      onChanged: (value) {
                        debugPrint(value);
                      },
                      decoration: const InputDecoration(
                          //contentPadding: EdgeInsets.only(top: 0),
                          hintText: "E-mail",
                          hintStyle: TextStyle(fontSize: 12),
                          prefixIcon: Icon(
                            Icons.mail,
                            color: Colors.lightGreen,
                          )),
                    ),
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
                    child: TextField(
                        obscureText: esconde,
                        controller: senhaController,
                        onChanged: (value) {
                          debugPrint(value);
                        },
                        decoration: InputDecoration(
                            hintText: "Senha",
                            hintStyle: const TextStyle(fontSize: 12),
                            prefixIcon: const Icon(
                              Icons.lock,
                              color: Colors.lightGreen,
                            ),
                            suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  esconde = !esconde;
                                });
                              },
                              child: Icon(
                                esconde
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                            ))),
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
                          onPressed: () {
                            if (emailController.text.trim() ==
                                    "email@email.com" &&
                                senhaController.text.trim() == "123") {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const MainPage()));
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text("Erro no login")));
                            }
                          },
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
        ),
      ),
    );
  }
}
