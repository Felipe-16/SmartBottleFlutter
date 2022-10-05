import 'package:flutter_application_1/app/modules/home/model/home_model.dart';

abstract class IHomeRepository {
  Future<List<HomeModel>> getMesas();
}
