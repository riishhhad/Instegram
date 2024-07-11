import 'dart:convert';


import 'package:http/http.dart';
import 'package:instegram/Repository/Modelclass/inste.dart';


import '../Modelclass/followers.dart';
import 'api_client.dart';




class Followersapi {
  late Followersapi followers;
  ApiClient apiClient = ApiClient();


  Future<Followers> getfollow(String name) async {
    String trendingpath ="https://instagram-scraper-api2.p.rapidapi.com/v1/followers?username_or_id_or_url=$name";
    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return Followers.fromJson(jsonDecode(response.body));
  }
}