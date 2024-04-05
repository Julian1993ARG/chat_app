class YesNoApiResponse {
  String? answer;
  bool? forced;
  String? image;

  YesNoApiResponse({this.answer, this.forced, this.image});

  YesNoApiResponse.fromJson(Map<String, dynamic> json) {
    answer = json['answer'];
    forced = json['forced'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['answer'] = answer;
    data['forced'] = forced;
    data['image'] = image;
    return data;
  }
}