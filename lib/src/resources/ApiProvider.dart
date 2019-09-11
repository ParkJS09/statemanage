import 'dart:convert';
import 'package:http/http.dart' show Client;
import 'package:statemanage/src/models/User/UserInfo.dart';


class ApiProvider {
  Client client = Client();
  final String _apiKey = 'RGAPI-a5d37096-a15f-4486-8f91-00ff87a4a348';
  final url = '';

  Future<UserInfo> getUserInfo(String userName) async{
    print('Entered getUserInfo');
    final response = await client.get("https://kr.api.riotgames.com/lol/summoner/v4/summoners/by-name/" + '영원한백두인',
    headers: { "X-Riot-Token": "RGAPI-a4bb3867-8df1-4f8a-a793-85a4a9c184c8"});
    print(response.body.toString());
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return UserInfo.fromJsonMap(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }
}