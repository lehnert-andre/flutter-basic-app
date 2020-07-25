
import 'package:flutter_basic_app/modules/shared/data-provider/data-provider.package.dart';
import 'package:flutter_basic_app/modules/user/types/types.package.dart';

class UserDataProvider extends DataProvider{

  final String _userEndpoint = 'http://localhost:9000/v1/user';

  Future<UserDO> sendSignInRequest(CredentialsTO credentialsDO) async {
    var url = _userEndpoint + '/signin';

    var response = await POST(url, credentialsDO);

    if (response.isSuccessful) {
      return UserDO.fromJson(response.json);
    } else {
      throw Exception(response.rawBody);
    }

  }
}