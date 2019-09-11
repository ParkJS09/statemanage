import 'package:statemanage/src/models/User/UserInfo.dart';
import 'package:statemanage/src/resources/ApiProvider.dart';

//해당 클래스는 BLOC로 전달되는 중심
class Repository {
  final apiProvider = ApiProvider();
  Future<UserInfo> getUserInfo(String userName) => apiProvider.getUserInfo(userName);
}