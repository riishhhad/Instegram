import 'dart:convert';


import 'package:http/http.dart';
import 'package:instegram/Repository/Modelclass/inste.dart';


import '../Modelclass/post.dart';
import 'api_client.dart';




class Postapi {
  late Post post;
  ApiClient apiClient = ApiClient();


  Future<Post> getpost(String post) async {
    String trendingpath ="https://instagram-scraper-api2.p.rapidapi.com/v1.2/posts?username_or_id_or_url=$post";
    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return Post.fromJson(jsonDecode(response.body));
  }
}