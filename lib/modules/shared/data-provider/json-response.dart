class JsonResponse {
  final int statusCode;
  final Map<String, dynamic> json;
  final String rawBody;

  JsonResponse({
    this.statusCode,
    this.json,
    this.rawBody
  });

  bool get isSuccessful => statusCode < 300;
}