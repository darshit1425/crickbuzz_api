import 'package:crickbuzz_api/screen_getx/home_screen/provider/home_contoller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model/home_model.dart' hide State;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: FutureBuilder(
        future: controller.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text("${snapshot.error}");
          } else if (snapshot.hasData) {
            CrickbuzzModel? crickbuzzModel = snapshot.data;
            print(crickbuzzModel!.typeMatches);
            return ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('${crickbuzzModel.filters!.matchType}'),
                );
              },
              itemCount: crickbuzzModel!.typeMatches!.length,
            );
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    ));
  }
}
