import 'dart:developer';
import 'package:flutter/foundation.dart';
import '../exceptions/custom_error.dart';
import '../exceptions/data_exceptions.dart';
import '../models/omdb_model.dart';
import '../services/omdb_services.dart';

class OMDBRepository {
   final OMDBApiServices? omdbServices;
   OMDBRepository({required this.omdbServices});

   Future<OMDBModel> fetchOMDBData(String? obdbData) async {
     try {
       final OMDBModel? omdbModel = await omdbServices?.getOMDBApiServices(obdbData);
       if(kDebugMode) {
         log('OMDB Data : ${omdbModel}');
       }
       final omdbMap = OMDBModel.fromJson(omdbModel!.toJson());
       return omdbMap;
     } on DataExceptions catch(e) {
       throw CustomError(errMsg: e.message);
     } catch (e) {
       throw CustomError(errMsg: e.toString());
     }
   }
}