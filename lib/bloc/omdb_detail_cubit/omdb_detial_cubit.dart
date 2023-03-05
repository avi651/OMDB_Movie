import 'package:bloc/bloc.dart';
import '../../exceptions/custom_error.dart';
import '../../repository/omdb_repository.dart';
import 'omdb_detail_state.dart';

class OMDBDetailCubit extends Cubit<OMDBDetailState> {
  final OMDBRepository omdbRepository;

  OMDBDetailCubit({
    required this.omdbRepository
  }) : super(const OMDBDetailState.initial());

  Future<void> fetchOMDBDetailData(String movieID) async {
    emit(const OMDBDetailStateLoading());
    try {
      await omdbRepository.fetchOMDBDetailData(movieID).
      then((value) {
        emit(OMDBDetailStateSuccess(value));
      });
    } on CustomError catch (e) {
      emit(OMDBDetailState.error(e.toString()));
    }
  }
}