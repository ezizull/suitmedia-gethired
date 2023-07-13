class Support {
  final String url;
  final String text;

  Support({
    required this.url,
    required this.text,
  });

  factory Support.fromMap(Map<String, dynamic> json) {
    return Support(
      url: json["url"],
      text: json["text"],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "url": url,
      "text": text,
    };
  }
}
