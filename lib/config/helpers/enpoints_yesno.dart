import 'package:chat_app/Models/message.dart';
import 'package:dio/dio.dart';

class YesNoApi {
  final _dio = Dio();

  Future<Message> getYesNoMessage() async {
    final response = await _dio.get('https://yesno.wtf/api');
    return Message(
        text: response.data['answer'],
        fromWho: FromWho.other,
        imageUrl: response.data['image']);
  }
}
