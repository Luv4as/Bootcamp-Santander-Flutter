import 'package:dioproject/model/card_detail.dart';

class CardDetailRepository {
  Future<CardDetail> get() async {
    await Future.delayed(Duration(seconds: 2));
    return CardDetail(
        1,
        "Meu card",
        "https://upload.wikimedia.org/wikipedia/commons/4/45/Notion_app_logo.png",
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.");
  }
}
