import 'package:dio/dio.dart';

// final dio = Dio();

// void request() async {
//   Response response;
//   response = await dio.get('https://api.thecatapi.com/v1/images/search?limit=10');
//   print(response.data.toString());
//   // The below request is the same as above.
//   response = await dio.get(
//     '/test',
//     queryParameters: {'id': 12, 'name': 'dio'},
//   );
// }

class CatAPI {
  final url = 'https://api.thecatapi.com/v1/images/search?limit=10';
  final dio = Dio();

  getCats() async {
    Response response;
    try {
      response = await dio.get(url);
      return response.data;
    }
    catch (e) {
      print("ERROR: $e");
    }
  }
}