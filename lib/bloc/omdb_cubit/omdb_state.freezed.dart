// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'omdb_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OMDBState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OMDBModel omdbModel) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OMDBModel omdbModel)? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OMDBModel omdbModel)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OMDBStateInitial value) initial,
    required TResult Function(OMDBStateLoading value) loading,
    required TResult Function(OMDBStateSuccess value) success,
    required TResult Function(OMDBStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OMDBStateInitial value)? initial,
    TResult? Function(OMDBStateLoading value)? loading,
    TResult? Function(OMDBStateSuccess value)? success,
    TResult? Function(OMDBStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OMDBStateInitial value)? initial,
    TResult Function(OMDBStateLoading value)? loading,
    TResult Function(OMDBStateSuccess value)? success,
    TResult Function(OMDBStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OMDBStateCopyWith<$Res> {
  factory $OMDBStateCopyWith(OMDBState value, $Res Function(OMDBState) then) =
      _$OMDBStateCopyWithImpl<$Res, OMDBState>;
}

/// @nodoc
class _$OMDBStateCopyWithImpl<$Res, $Val extends OMDBState>
    implements $OMDBStateCopyWith<$Res> {
  _$OMDBStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OMDBStateInitialCopyWith<$Res> {
  factory _$$OMDBStateInitialCopyWith(
          _$OMDBStateInitial value, $Res Function(_$OMDBStateInitial) then) =
      __$$OMDBStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OMDBStateInitialCopyWithImpl<$Res>
    extends _$OMDBStateCopyWithImpl<$Res, _$OMDBStateInitial>
    implements _$$OMDBStateInitialCopyWith<$Res> {
  __$$OMDBStateInitialCopyWithImpl(
      _$OMDBStateInitial _value, $Res Function(_$OMDBStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OMDBStateInitial implements OMDBStateInitial {
  const _$OMDBStateInitial();

  @override
  String toString() {
    return 'OMDBState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OMDBStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OMDBModel omdbModel) success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OMDBModel omdbModel)? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OMDBModel omdbModel)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OMDBStateInitial value) initial,
    required TResult Function(OMDBStateLoading value) loading,
    required TResult Function(OMDBStateSuccess value) success,
    required TResult Function(OMDBStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OMDBStateInitial value)? initial,
    TResult? Function(OMDBStateLoading value)? loading,
    TResult? Function(OMDBStateSuccess value)? success,
    TResult? Function(OMDBStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OMDBStateInitial value)? initial,
    TResult Function(OMDBStateLoading value)? loading,
    TResult Function(OMDBStateSuccess value)? success,
    TResult Function(OMDBStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class OMDBStateInitial implements OMDBState {
  const factory OMDBStateInitial() = _$OMDBStateInitial;
}

/// @nodoc
abstract class _$$OMDBStateLoadingCopyWith<$Res> {
  factory _$$OMDBStateLoadingCopyWith(
          _$OMDBStateLoading value, $Res Function(_$OMDBStateLoading) then) =
      __$$OMDBStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OMDBStateLoadingCopyWithImpl<$Res>
    extends _$OMDBStateCopyWithImpl<$Res, _$OMDBStateLoading>
    implements _$$OMDBStateLoadingCopyWith<$Res> {
  __$$OMDBStateLoadingCopyWithImpl(
      _$OMDBStateLoading _value, $Res Function(_$OMDBStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OMDBStateLoading implements OMDBStateLoading {
  const _$OMDBStateLoading();

  @override
  String toString() {
    return 'OMDBState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OMDBStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OMDBModel omdbModel) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OMDBModel omdbModel)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OMDBModel omdbModel)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OMDBStateInitial value) initial,
    required TResult Function(OMDBStateLoading value) loading,
    required TResult Function(OMDBStateSuccess value) success,
    required TResult Function(OMDBStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OMDBStateInitial value)? initial,
    TResult? Function(OMDBStateLoading value)? loading,
    TResult? Function(OMDBStateSuccess value)? success,
    TResult? Function(OMDBStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OMDBStateInitial value)? initial,
    TResult Function(OMDBStateLoading value)? loading,
    TResult Function(OMDBStateSuccess value)? success,
    TResult Function(OMDBStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class OMDBStateLoading implements OMDBState {
  const factory OMDBStateLoading() = _$OMDBStateLoading;
}

/// @nodoc
abstract class _$$OMDBStateSuccessCopyWith<$Res> {
  factory _$$OMDBStateSuccessCopyWith(
          _$OMDBStateSuccess value, $Res Function(_$OMDBStateSuccess) then) =
      __$$OMDBStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({OMDBModel omdbModel});
}

/// @nodoc
class __$$OMDBStateSuccessCopyWithImpl<$Res>
    extends _$OMDBStateCopyWithImpl<$Res, _$OMDBStateSuccess>
    implements _$$OMDBStateSuccessCopyWith<$Res> {
  __$$OMDBStateSuccessCopyWithImpl(
      _$OMDBStateSuccess _value, $Res Function(_$OMDBStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? omdbModel = null,
  }) {
    return _then(_$OMDBStateSuccess(
      null == omdbModel
          ? _value.omdbModel
          : omdbModel // ignore: cast_nullable_to_non_nullable
              as OMDBModel,
    ));
  }
}

/// @nodoc

class _$OMDBStateSuccess implements OMDBStateSuccess {
  const _$OMDBStateSuccess(this.omdbModel);

  @override
  final OMDBModel omdbModel;

  @override
  String toString() {
    return 'OMDBState.success(omdbModel: $omdbModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OMDBStateSuccess &&
            (identical(other.omdbModel, omdbModel) ||
                other.omdbModel == omdbModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, omdbModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OMDBStateSuccessCopyWith<_$OMDBStateSuccess> get copyWith =>
      __$$OMDBStateSuccessCopyWithImpl<_$OMDBStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OMDBModel omdbModel) success,
    required TResult Function(String message) error,
  }) {
    return success(omdbModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OMDBModel omdbModel)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(omdbModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OMDBModel omdbModel)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(omdbModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OMDBStateInitial value) initial,
    required TResult Function(OMDBStateLoading value) loading,
    required TResult Function(OMDBStateSuccess value) success,
    required TResult Function(OMDBStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OMDBStateInitial value)? initial,
    TResult? Function(OMDBStateLoading value)? loading,
    TResult? Function(OMDBStateSuccess value)? success,
    TResult? Function(OMDBStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OMDBStateInitial value)? initial,
    TResult Function(OMDBStateLoading value)? loading,
    TResult Function(OMDBStateSuccess value)? success,
    TResult Function(OMDBStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class OMDBStateSuccess implements OMDBState {
  const factory OMDBStateSuccess(final OMDBModel omdbModel) =
      _$OMDBStateSuccess;

  OMDBModel get omdbModel;
  @JsonKey(ignore: true)
  _$$OMDBStateSuccessCopyWith<_$OMDBStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OMDBStateErrorCopyWith<$Res> {
  factory _$$OMDBStateErrorCopyWith(
          _$OMDBStateError value, $Res Function(_$OMDBStateError) then) =
      __$$OMDBStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$OMDBStateErrorCopyWithImpl<$Res>
    extends _$OMDBStateCopyWithImpl<$Res, _$OMDBStateError>
    implements _$$OMDBStateErrorCopyWith<$Res> {
  __$$OMDBStateErrorCopyWithImpl(
      _$OMDBStateError _value, $Res Function(_$OMDBStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$OMDBStateError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OMDBStateError implements OMDBStateError {
  const _$OMDBStateError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'OMDBState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OMDBStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OMDBStateErrorCopyWith<_$OMDBStateError> get copyWith =>
      __$$OMDBStateErrorCopyWithImpl<_$OMDBStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OMDBModel omdbModel) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OMDBModel omdbModel)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OMDBModel omdbModel)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OMDBStateInitial value) initial,
    required TResult Function(OMDBStateLoading value) loading,
    required TResult Function(OMDBStateSuccess value) success,
    required TResult Function(OMDBStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OMDBStateInitial value)? initial,
    TResult? Function(OMDBStateLoading value)? loading,
    TResult? Function(OMDBStateSuccess value)? success,
    TResult? Function(OMDBStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OMDBStateInitial value)? initial,
    TResult Function(OMDBStateLoading value)? loading,
    TResult Function(OMDBStateSuccess value)? success,
    TResult Function(OMDBStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class OMDBStateError implements OMDBState {
  const factory OMDBStateError(final String message) = _$OMDBStateError;

  String get message;
  @JsonKey(ignore: true)
  _$$OMDBStateErrorCopyWith<_$OMDBStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
