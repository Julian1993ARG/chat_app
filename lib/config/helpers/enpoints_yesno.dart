import 'package:chat_app/Models/message.dart';
import 'package:chat_app/Models/yesno_api_response.dart';
import 'package:dio/dio.dart';

class YesNoApi {
  final _dio = Dio();

  Future<Message> getYesNoMessage() async {
    final response = await _dio.get('https://yesno.wtf/api');

    final responseModel = YesNoApiResponse.fromJson(response.data);

    return responseModel.toMessage();
  }
}
