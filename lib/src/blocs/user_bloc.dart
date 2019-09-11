import 'package:rxdart/rxdart.dart';
import 'package:statemanage/src/models/User/UserInfo.dart';
import 'package:statemanage/src/resources/repository.dart';

class UserBloc{

  final _repository = Repository();
  final _userFetcher = PublishSubject<UserInfo>();

  Observable<UserInfo> get userInfos => _userFetcher.stream;

  getUserInfo(String userName) async {
    UserInfo userInfoModel = await _repository.getUserInfo(userName);
    _userFetcher.sink.add(userInfoModel);
  }

  dispose(){
    _userFetcher.close();
  }
}

final bloc = UserBloc();