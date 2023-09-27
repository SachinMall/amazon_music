import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class ApiServices {
  static var client = http.Client();
  Future getData() async {
    log("into getData");
    try {
      final response = await client.get(Uri.parse(
          'https://mocki.io/v1/62c92541-2db4-4708-b1bf-bddac0b2ee21'));
      log("respose ::=> ${response.body}");

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        return null;
      }
    } catch (e, stackTrace) {
      log('message $e $stackTrace');
    }
  }
}
