import 'dart:convert';

import 'package:bengal_islami_life_insurance/constants/urls_assets.dart';
import 'package:bengal_islami_life_insurance/models/all_plans.dart';
import 'package:http/http.dart' as http;

class AllPlanApiServices {
  Future<List<Plans>> getPlans() async {
    List<Plans> plansData = [];

    try {
      var request = http.Request("POST", Uri.parse(UrlsAssets.plan_lists));
      http.StreamedResponse response = await request.send();
      if (response.statusCode == 200) {
        var rawDate = await response.stream.bytesToString();
        List<dynamic> data = jsonDecode(rawDate);
        data.forEach((element) {
          Plans plans = Plans.fromJson(element);
          plansData.add(plans);
        });
        return plansData;
      } else {
        return [];
      }
    } catch (e) {
      throw e;
    }
  }
}
