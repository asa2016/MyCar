import 'package:mycar/models/store.dart';
import '../settings.dart';
import 'api_services.dart';

class StoreServices {
  final Settings settings = Settings();
  final ApiServices _apiServices = ApiServices();
  final String _endPoint = '/stores';

  Future<List<Store>> getAllStores() async {
    String response =
        await _apiServices.get(settings.dokanUrl + _endPoint, true);
    return storeListFromJson(response);
  }
}
