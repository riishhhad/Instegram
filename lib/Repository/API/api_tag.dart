import 'dart:convert';


import 'package:http/http.dart';
import 'package:instegram/Repository/Modelclass/inste.dart';


import '../Modelclass/post.dart';
import '../Modelclass/tag.dart';
import 'api_client.dart';




class Tagapi {

  ApiClient apiClient = ApiClient();


  Future<Tag> gettag(String tag) async {
    String trendingpath ="https://instagram-scraper-api2.p.rapidapi.com/v1/tagged?username_or_id_or_url=$tag";
    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return Tag.fromJson(jsonDecode(response.body));
  }
}