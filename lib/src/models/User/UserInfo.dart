
class UserInfo {

  int profileIconId;
  String name;
  String puuid;
  int summonerLevel;
  String accountId;
  String id;
  int revisionDate;

	UserInfo.fromJsonMap(Map<String, dynamic> map): 
		profileIconId = map["profileIconId"],
		name = map["name"],
		puuid = map["puuid"],
		summonerLevel = map["summonerLevel"],
		accountId = map["accountId"],
		id = map["id"],
		revisionDate = map["revisionDate"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['profileIconId'] = profileIconId;
		data['name'] = name;
		data['puuid'] = puuid;
		data['summonerLevel'] = summonerLevel;
		data['accountId'] = accountId;
		data['id'] = id;
		data['revisionDate'] = revisionDate;
		return data;
	}
}
