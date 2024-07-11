import 'dart:convert';


import 'package:http/http.dart';
import 'package:instegram/Repository/Modelclass/highlight.dart';
import 'package:instegram/Repository/Modelclass/inste.dart';


import 'api_client.dart';




class Highapi {
  late Highlight highlight;
  ApiClient apiClient = ApiClient();


  Future<Highlight> getlight(String highlight) async {
    String trendingpath ="https://instagram-scraper-api2.p.rapidapi.com/v1/highlights?username_or_id_or_url=$highlight";
    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return Highlight.fromJson(jsonDecode(response.body));
  }
}