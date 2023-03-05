import 'package:freezed_annotation/freezed_annotation.dart';
import '../../models/omdb_detail_model.dart';
part 'omdb_detail_state.freezed.dart';

@freezed
class OMDBDetailState with _$OMDBDetailState {
  const factory OMDBDetailState.initial() = OMDBDetailStateInitial;
  const factory OMDBDetailState.loading() = OMDBDetailStateLoading;
  const factory OMDBDetailState.success(OMDBModelDetail omdbDetailModel) = OMDBDetailStateSuccess;
  const factory OMDBDetailState.error(String message) = OMDBDetailStateError;
}