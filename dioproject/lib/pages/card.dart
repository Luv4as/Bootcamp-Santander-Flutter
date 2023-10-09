import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          width: double.infinity,
          child: Card(
            elevation: 8,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/4/45/Notion_app_logo.png",
                        height: 20,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        "Card",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                    textAlign: TextAlign.justify,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Ler mais",
                        style: TextStyle(decoration: TextDecoration.underline),
                      ))
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
