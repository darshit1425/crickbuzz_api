import 'dart:convert';

import 'package:crickbuzz_api/screen_getx/home_screen/model/home_model.dart';
import 'package:http/http.dart' as http;

class Apihelper {
  static final apihelper = Apihelper._();

  Apihelper._();

  Future<CrickbuzzModel> CrickbuzzApi() async {
    String ApiLink =
        "https://cricbuzz-cricket.p.rapidapi.com/matches/v1/recent";

    Uri uri = Uri.parse(ApiLink);
    var response = await http.get(uri, headers: {
      'X-RapidAPI-Key': 'ee60643964msh4622b22a5b81716p1fc2e2jsn3ed0bcf1ef08',
      'X-RapidAPI-Host': 'cricbuzz-cricket.p.rapidapi.com',
    });
    var json = jsonDecode(response.body);
    print(json);
    CrickbuzzModel crickbuzzModel = CrickbuzzModel.fromJson(json);
    return crickbuzzModel;
  }
}
