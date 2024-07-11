import 'dart:convert';


import 'package:http/http.dart';
import 'package:instegram/Repository/Modelclass/inste.dart';


import '../Modelclass/followers.dart';
import '../Modelclass/following.dart';
import 'api_client.dart';




class Followingapi {
  late Followingapi following;
  ApiClient apiClient = ApiClient();


  Future<Following> getfollowing(String following) async {
    String trendingpath ="https://instagram-scraper-api2.p.rapidapi.com/v1/following?username_or_id_or_url=$following";
    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return Following.fromJson(jsonDecode(response.body));
  }
}