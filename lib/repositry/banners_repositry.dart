import 'package:dio/dio.dart';
import 'package:ecommerce/models/banners_model.dart';

class Banners_Repositry {

  final _dio = Dio();

  Future<BannersHome> getBanners () async {
    final res = await _dio.get('https://student.valuxapps.com/api/home');
    final bannersData = BannersHome.fromJson(res.data);
    return bannersData;
  }
}

