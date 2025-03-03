import 'dart:convert';

// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;
import 'package:inventory/api_services/api_config.dart';

class UpdateBox {
  Future<bool> boxUpdate(String name, String qty, String token) async {
    try {
      var response = await http.post(
        Uri.parse("${ApiConfig.baseUrl}${ApiConfig.boxUpdate}"),
        body: jsonEncode({
          'token': token,
          'name': name,
          'qty': qty,
        }),
        headers: {'Content-Type': 'application/json'},
      );
      if (response.statusCode == 200) {
        jsonDecode(response.body);
        print('update box: ${response.body}');
        return true;
      } else {
        print('Failed to update box. Status code: ${response.statusCode}');
        return false; // Return false if not a successful status code
      }
    } catch (e) {
      print("Error in boxUpdate: $e");
      return false;
    }
  }
}
