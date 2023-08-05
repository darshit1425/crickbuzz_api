import 'package:crickbuzz_api/screen_getx/home_screen/model/home_model.dart';
import 'package:crickbuzz_api/utils/api_helper.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  RxList l1=[].obs;

  Future<CrickbuzzModel> getData() async {
    CrickbuzzModel c2 = await Apihelper.apihelper.CrickbuzzApi();
    return c2;
  }
}
