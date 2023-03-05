import 'package:freezed_annotation/freezed_annotation.dart';
import '../../models/omdb_model.dart';
part 'omdb_state.freezed.dart';

@freezed
class OMDBState with _$OMDBState {
  const factory OMDBState.initial() = OMDBStateInitial;
  const factory OMDBState.loading() = OMDBStateLoading;
  const factory OMDBState.success(OMDBModel omdbModel) = OMDBStateSuccess;
  const factory OMDBState.error(String message) = OMDBStateError;
}