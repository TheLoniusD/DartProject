import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class QuoteService {
  void getCit() async {
    final url = Uri.parse('https://the-one-api.dev/v2/quote');
    final res = await http.get(url, headers: {
      HttpHeaders.authorizationHeader: 'Bearer zD7XrcoHw480T6xGwdwH'
    });
    final data = jsonDecode(res.body) as Map<String, dynamic>;

    print(data['docs'][0]['dialog']);
  }
}
