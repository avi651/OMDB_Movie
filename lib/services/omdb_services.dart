import 'dart:convert';
import 'package:http/http.dart' as http;
import '../constants/host_constants.dart';
import '../exceptions/http_error_handler.dart';
import '../models/omdb_model.dart';

class OMDBApiServices {
   Future<OMDBModel?> getOMDBApiServices(String? movieName) async {
     final Uri uri = Uri(
       scheme: 'http',
       host: kHostApi,
       queryParameters: {
         'apikey' : kAPIKey,
         's': movieName ?? "Batman",
       }
     );

     try {
       final response = await http.get(uri);
       if(response.statusCode != 200) {
         throw Exception(httpErrorHandler(response));
       } else {
         final responseBody = json.decode(response.body);
         if(responseBody.isEmpty) {
           throw Exception('Data not found');
         }
         return OMDBModel.fromJson(responseBody);
       }
     } catch (e) {
       throw Exception(e.toString());
     }
   }
}