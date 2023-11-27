import 'package:dio/dio.dart';

   getDio () async {
     final dio = Dio();
     final response = await dio.get(
         'https://student.valuxapps.com/api/products?category_id=40');
     print(response.data);
     print(response.statusCode);

   }
void main() {
  getDio();
}