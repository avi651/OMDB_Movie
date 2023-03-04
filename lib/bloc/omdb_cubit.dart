import 'package:bloc/bloc.dart';
import '../exceptions/custom_error.dart';
import '../repository/omdb_repository.dart';
import 'omdb_state.dart';

class OMDBCubit extends Cubit<OMDBState> {
   final OMDBRepository omdbRepository;

   OMDBCubit({
     required this.omdbRepository
   }) : super(const OMDBState.initial());

   Future<void> fetchOMDBData(String omdbMovie) async {
     emit(const OMDBStateLoading());
     try {
       await omdbRepository.fetchOMDBData(omdbMovie).
       then((value) {
         emit(OMDBStateSuccess(value));
       });
     } on CustomError catch (e) {
       emit(OMDBState.error(e.toString()));
     }
   }
}