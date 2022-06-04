import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for BaseApi
void main() {
  final instance = Openapi().getBaseApi();

  group(BaseApi, () {
    // Retrieve CSRF protection token
    //
    //Future<DefaultCrumbIssuer> getCrumb() async
    test('test getCrumb', () async {
      // TODO
    });

  });
}
