import 'dart:convert';


import 'package:http/http.dart';
import 'package:instegram/Repository/Modelclass/inste.dart';


import 'api_client.dart';




class Insteapi {
  late Inste insteModel;
  ApiClient apiClient = ApiClient();


  Future<Inste> getinste() async {
    String trendingpath ="https://instagram-scraper-api2.p.rapidapi.com/v1/info?username_or_id_or_url=mrbeast";
    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return Inste.fromJson(jsonDecode(response.body));
  }
}