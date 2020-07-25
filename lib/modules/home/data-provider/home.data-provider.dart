
import 'package:flutter_basic_app/modules/shared/data-provider/data-provider-with-session.dart';
import 'package:flutter_basic_app/modules/user/types/types.package.dart';

class HomeDataProvider extends DataProviderWithSession {

  final String _userEndpoint = 'http://localhost:9000/v1/user';

  Future<UserDO> sendWhoAmIRequest() async {
    var url = _userEndpoint + '/me';

    var response = await GET(url);

    if (response.isSuccessful) {
      return UserDO.fromJson(response.json);
    } else {
      throw Exception(response.rawBody);
    }

  }
}