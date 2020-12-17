import 'dart:convert';

subtopicurlGen welcomeFromJson(String str) => subtopicurlGen.fromJson(json.decode(str));

String welcomeToJson(subtopicurlGen data) => json.encode(data.toJson());

class subtopicurlGen {
  subtopicurlGen({
    this.subjectName,
    this.topicName,
    this.url,
    this.toIntent,
  });

  String subjectName;
  String topicName;
  String url;
  String toIntent;

  factory subtopicurlGen.fromJson(Map<String, dynamic> json) => subtopicurlGen(
    subjectName: json["subjectName"],
    topicName: json["topicName"],
    url: json["url"],
    toIntent: json["to_intent"],
  );

  Map<String, dynamic> toJson() => {
    "subjectName": subjectName,
    "topicName": topicName,
    "url": url,
    "to_intent": toIntent,
  };
}
