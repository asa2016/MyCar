import 'package:mycar/models/product.dart';
import 'package:mycar/settings.dart';
import 'api_services.dart';

class ProductServices {
  final Settings settings = Settings();
  final ApiServices _apiServices = ApiServices();
  final String _endPoint = '/products';

  Future<List<Product>> getAllProducts() async {
    String response = await _apiServices.get(settings.wcUrl+_endPoint, true);
    return productListFromJson(response);
  }

}
