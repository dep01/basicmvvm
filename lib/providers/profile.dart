import 'dart:convert';

import 'package:basicmvvm/models/ProfileModel.dart';
import 'package:basicmvvm/utils/api_client.dart';

class ProfileProvider {
  Future<List<ProfileModel>> getList() async {
    String endPoint = "c_profile/get_all";
    var response = await client.getData(endPoint: endPoint);
    print(response.body);
    var data = jsonDecode(response.body);
    print(data['data']);
    return profileModelFromMap(jsonEncode(data['data']));
  }

  Future add(Object body) async {
    String endPoint = "c_profile/add";
    bool status = false;
    var response = await client.postData(endPoint: endPoint, body: body);
    if (response['status'] == true) {
      status = true;
    }
    return status;
  }
}
