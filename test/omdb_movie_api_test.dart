import 'package:flutter_test/flutter_test.dart';
import 'package:nock/nock.dart';
import 'package:http/http.dart' as http;

void main() {
  setUpAll(() {
    nock.init();
  });

  setUp(() {
    nock.cleanAll();
  });

  test('OMDB API Test', () async {
    final interceptor =
        nock('http://www.omdbapi.com/?apikey=50770fd4').get('&s=Batman')
          ..reply(
            200,
            'id',
          );

    final response = await http
        .get(Uri.parse('http://www.omdbapi.com/?apikey=50770fd4&s=Batman'));
    expect(interceptor.isDone, true);
    expect(response.statusCode, 200);
    expect(response.body, 'id');
  });
}
