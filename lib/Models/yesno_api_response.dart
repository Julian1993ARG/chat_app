import 'dart:convert';

import 'package:chat_app/Models/message.dart';

YesNoApiResponse yesNoApiResponseFromJson(String str) => YesNoApiResponse.fromJson(json.decode(str));

String yesNoApiResponseToJson(YesNoApiResponse data) => json.encode(data.toJson());

class YesNoApiResponse {
    final String answer;
    final bool forced;
    final String image;

    YesNoApiResponse({
        required this.answer,
        required this.forced,
        required this.image,
    });

    factory YesNoApiResponse.fromJson(Map<String, dynamic> json) => YesNoApiResponse(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
    };

    Message toMessage() => Message(
      text: answer,
      imageUrl: image,
      fromWho: FromWho.other,
    );
}
