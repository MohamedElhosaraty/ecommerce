import 'package:dio/dio.dart';
import 'package:ecommerce/models/category_model.dart';

class CategoryRepository {

  final _dio =Dio();
  Future<Category> getCategory() async {
    final response = await _dio.get('https://student.valuxapps.com/api/categories');
    final  categoryData = Category.fromJson(response.data);
    return categoryData;
  }
}