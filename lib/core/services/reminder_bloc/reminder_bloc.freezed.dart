// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reminder_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReminderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Create value) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Create value)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Create value)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReminderEventCopyWith<$Res> {
  factory $ReminderEventCopyWith(
          ReminderEvent value, $Res Function(ReminderEvent) then) =
      _$ReminderEventCopyWithImpl<$Res, ReminderEvent>;
}

/// @nodoc
class _$ReminderEventCopyWithImpl<$Res, $Val extends ReminderEvent>
    implements $ReminderEventCopyWith<$Res> {
  _$ReminderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReminderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadImplCopyWith<$Res> {
  factory _$$LoadImplCopyWith(
          _$LoadImpl value, $Res Function(_$LoadImpl) then) =
      __$$LoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadImplCopyWithImpl<$Res>
    extends _$ReminderEventCopyWithImpl<$Res, _$LoadImpl>
    implements _$$LoadImplCopyWith<$Res> {
  __$$LoadImplCopyWithImpl(_$LoadImpl _value, $Res Function(_$LoadImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReminderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadImpl implements _Load {
  const _$LoadImpl();

  @override
  String toString() {
    return 'ReminderEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() create,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? create,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? create,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Create value) create,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Create value)? create,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Create value)? create,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements ReminderEvent {
  const factory _Load() = _$LoadImpl;
}

/// @nodoc
abstract class _$$CreateImplCopyWith<$Res> {
  factory _$$CreateImplCopyWith(
          _$CreateImpl value, $Res Function(_$CreateImpl) then) =
      __$$CreateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateImplCopyWithImpl<$Res>
    extends _$ReminderEventCopyWithImpl<$Res, _$CreateImpl>
    implements _$$CreateImplCopyWith<$Res> {
  __$$CreateImplCopyWithImpl(
      _$CreateImpl _value, $Res Function(_$CreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReminderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CreateImpl implements _Create {
  const _$CreateImpl();

  @override
  String toString() {
    return 'ReminderEvent.create()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() create,
  }) {
    return create();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? create,
  }) {
    return create?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Create value) create,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Create value)? create,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Create value)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _Create implements ReminderEvent {
  const factory _Create() = _$CreateImpl;
}

/// @nodoc
mixin _$ReminderState {
  ReminderCategory get selectedCategory => throw _privateConstructorUsedError;
  ReminderProcessingState get processingState =>
      throw _privateConstructorUsedError;

  /// Create a copy of ReminderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReminderStateCopyWith<ReminderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReminderStateCopyWith<$Res> {
  factory $ReminderStateCopyWith(
          ReminderState value, $Res Function(ReminderState) then) =
      _$ReminderStateCopyWithImpl<$Res, ReminderState>;
  @useResult
  $Res call(
      {ReminderCategory selectedCategory,
      ReminderProcessingState processingState});

  $ReminderProcessingStateCopyWith<$Res> get processingState;
}

/// @nodoc
class _$ReminderStateCopyWithImpl<$Res, $Val extends ReminderState>
    implements $ReminderStateCopyWith<$Res> {
  _$ReminderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReminderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCategory = null,
    Object? processingState = null,
  }) {
    return _then(_value.copyWith(
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as ReminderCategory,
      processingState: null == processingState
          ? _value.processingState
          : processingState // ignore: cast_nullable_to_non_nullable
              as ReminderProcessingState,
    ) as $Val);
  }

  /// Create a copy of ReminderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReminderProcessingStateCopyWith<$Res> get processingState {
    return $ReminderProcessingStateCopyWith<$Res>(_value.processingState,
        (value) {
      return _then(_value.copyWith(processingState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReminderStateImplCopyWith<$Res>
    implements $ReminderStateCopyWith<$Res> {
  factory _$$ReminderStateImplCopyWith(
          _$ReminderStateImpl value, $Res Function(_$ReminderStateImpl) then) =
      __$$ReminderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ReminderCategory selectedCategory,
      ReminderProcessingState processingState});

  @override
  $ReminderProcessingStateCopyWith<$Res> get processingState;
}

/// @nodoc
class __$$ReminderStateImplCopyWithImpl<$Res>
    extends _$ReminderStateCopyWithImpl<$Res, _$ReminderStateImpl>
    implements _$$ReminderStateImplCopyWith<$Res> {
  __$$ReminderStateImplCopyWithImpl(
      _$ReminderStateImpl _value, $Res Function(_$ReminderStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReminderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCategory = null,
    Object? processingState = null,
  }) {
    return _then(_$ReminderStateImpl(
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as ReminderCategory,
      processingState: null == processingState
          ? _value.processingState
          : processingState // ignore: cast_nullable_to_non_nullable
              as ReminderProcessingState,
    ));
  }
}

/// @nodoc

class _$ReminderStateImpl implements _ReminderState {
  const _$ReminderStateImpl(
      {this.selectedCategory = ReminderCategory.today,
      this.processingState = const ReminderProcessingState.processing()});

  @override
  @JsonKey()
  final ReminderCategory selectedCategory;
  @override
  @JsonKey()
  final ReminderProcessingState processingState;

  @override
  String toString() {
    return 'ReminderState(selectedCategory: $selectedCategory, processingState: $processingState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReminderStateImpl &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory) &&
            (identical(other.processingState, processingState) ||
                other.processingState == processingState));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, selectedCategory, processingState);

  /// Create a copy of ReminderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReminderStateImplCopyWith<_$ReminderStateImpl> get copyWith =>
      __$$ReminderStateImplCopyWithImpl<_$ReminderStateImpl>(this, _$identity);
}

abstract class _ReminderState implements ReminderState {
  const factory _ReminderState(
      {final ReminderCategory selectedCategory,
      final ReminderProcessingState processingState}) = _$ReminderStateImpl;

  @override
  ReminderCategory get selectedCategory;
  @override
  ReminderProcessingState get processingState;

  /// Create a copy of ReminderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReminderStateImplCopyWith<_$ReminderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReminderProcessingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() processing,
    required TResult Function(CategorizedReminders reminders, String error)
        failure,
    required TResult Function(CategorizedReminders reminders) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processing,
    TResult? Function(CategorizedReminders reminders, String error)? failure,
    TResult? Function(CategorizedReminders reminders)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processing,
    TResult Function(CategorizedReminders reminders, String error)? failure,
    TResult Function(CategorizedReminders reminders)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Processing value) processing,
    required TResult Function(Failure value) failure,
    required TResult Function(Fetched value) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Processing value)? processing,
    TResult? Function(Failure value)? failure,
    TResult? Function(Fetched value)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Processing value)? processing,
    TResult Function(Failure value)? failure,
    TResult Function(Fetched value)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReminderProcessingStateCopyWith<$Res> {
  factory $ReminderProcessingStateCopyWith(ReminderProcessingState value,
          $Res Function(ReminderProcessingState) then) =
      _$ReminderProcessingStateCopyWithImpl<$Res, ReminderProcessingState>;
}

/// @nodoc
class _$ReminderProcessingStateCopyWithImpl<$Res,
        $Val extends ReminderProcessingState>
    implements $ReminderProcessingStateCopyWith<$Res> {
  _$ReminderProcessingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReminderProcessingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ProcessingImplCopyWith<$Res> {
  factory _$$ProcessingImplCopyWith(
          _$ProcessingImpl value, $Res Function(_$ProcessingImpl) then) =
      __$$ProcessingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProcessingImplCopyWithImpl<$Res>
    extends _$ReminderProcessingStateCopyWithImpl<$Res, _$ProcessingImpl>
    implements _$$ProcessingImplCopyWith<$Res> {
  __$$ProcessingImplCopyWithImpl(
      _$ProcessingImpl _value, $Res Function(_$ProcessingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReminderProcessingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProcessingImpl implements Processing {
  const _$ProcessingImpl();

  @override
  String toString() {
    return 'ReminderProcessingState.processing()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProcessingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() processing,
    required TResult Function(CategorizedReminders reminders, String error)
        failure,
    required TResult Function(CategorizedReminders reminders) fetched,
  }) {
    return processing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processing,
    TResult? Function(CategorizedReminders reminders, String error)? failure,
    TResult? Function(CategorizedReminders reminders)? fetched,
  }) {
    return processing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processing,
    TResult Function(CategorizedReminders reminders, String error)? failure,
    TResult Function(CategorizedReminders reminders)? fetched,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Processing value) processing,
    required TResult Function(Failure value) failure,
    required TResult Function(Fetched value) fetched,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Processing value)? processing,
    TResult? Function(Failure value)? failure,
    TResult? Function(Fetched value)? fetched,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Processing value)? processing,
    TResult Function(Failure value)? failure,
    TResult Function(Fetched value)? fetched,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class Processing implements ReminderProcessingState {
  const factory Processing() = _$ProcessingImpl;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CategorizedReminders reminders, String error});

  $CategorizedRemindersCopyWith<$Res> get reminders;
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$ReminderProcessingStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReminderProcessingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reminders = null,
    Object? error = null,
  }) {
    return _then(_$FailureImpl(
      null == reminders
          ? _value.reminders
          : reminders // ignore: cast_nullable_to_non_nullable
              as CategorizedReminders,
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of ReminderProcessingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategorizedRemindersCopyWith<$Res> get reminders {
    return $CategorizedRemindersCopyWith<$Res>(_value.reminders, (value) {
      return _then(_value.copyWith(reminders: value));
    });
  }
}

/// @nodoc

class _$FailureImpl implements Failure {
  const _$FailureImpl(this.reminders, this.error);

  @override
  final CategorizedReminders reminders;
  @override
  final String error;

  @override
  String toString() {
    return 'ReminderProcessingState.failure(reminders: $reminders, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.reminders, reminders) ||
                other.reminders == reminders) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reminders, error);

  /// Create a copy of ReminderProcessingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() processing,
    required TResult Function(CategorizedReminders reminders, String error)
        failure,
    required TResult Function(CategorizedReminders reminders) fetched,
  }) {
    return failure(reminders, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processing,
    TResult? Function(CategorizedReminders reminders, String error)? failure,
    TResult? Function(CategorizedReminders reminders)? fetched,
  }) {
    return failure?.call(reminders, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processing,
    TResult Function(CategorizedReminders reminders, String error)? failure,
    TResult Function(CategorizedReminders reminders)? fetched,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(reminders, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Processing value) processing,
    required TResult Function(Failure value) failure,
    required TResult Function(Fetched value) fetched,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Processing value)? processing,
    TResult? Function(Failure value)? failure,
    TResult? Function(Fetched value)? fetched,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Processing value)? processing,
    TResult Function(Failure value)? failure,
    TResult Function(Fetched value)? fetched,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements ReminderProcessingState {
  const factory Failure(
      final CategorizedReminders reminders, final String error) = _$FailureImpl;

  CategorizedReminders get reminders;
  String get error;

  /// Create a copy of ReminderProcessingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchedImplCopyWith<$Res> {
  factory _$$FetchedImplCopyWith(
          _$FetchedImpl value, $Res Function(_$FetchedImpl) then) =
      __$$FetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CategorizedReminders reminders});

  $CategorizedRemindersCopyWith<$Res> get reminders;
}

/// @nodoc
class __$$FetchedImplCopyWithImpl<$Res>
    extends _$ReminderProcessingStateCopyWithImpl<$Res, _$FetchedImpl>
    implements _$$FetchedImplCopyWith<$Res> {
  __$$FetchedImplCopyWithImpl(
      _$FetchedImpl _value, $Res Function(_$FetchedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReminderProcessingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reminders = null,
  }) {
    return _then(_$FetchedImpl(
      null == reminders
          ? _value.reminders
          : reminders // ignore: cast_nullable_to_non_nullable
              as CategorizedReminders,
    ));
  }

  /// Create a copy of ReminderProcessingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategorizedRemindersCopyWith<$Res> get reminders {
    return $CategorizedRemindersCopyWith<$Res>(_value.reminders, (value) {
      return _then(_value.copyWith(reminders: value));
    });
  }
}

/// @nodoc

class _$FetchedImpl implements Fetched {
  const _$FetchedImpl(this.reminders);

  @override
  final CategorizedReminders reminders;

  @override
  String toString() {
    return 'ReminderProcessingState.fetched(reminders: $reminders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchedImpl &&
            (identical(other.reminders, reminders) ||
                other.reminders == reminders));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reminders);

  /// Create a copy of ReminderProcessingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchedImplCopyWith<_$FetchedImpl> get copyWith =>
      __$$FetchedImplCopyWithImpl<_$FetchedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() processing,
    required TResult Function(CategorizedReminders reminders, String error)
        failure,
    required TResult Function(CategorizedReminders reminders) fetched,
  }) {
    return fetched(reminders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processing,
    TResult? Function(CategorizedReminders reminders, String error)? failure,
    TResult? Function(CategorizedReminders reminders)? fetched,
  }) {
    return fetched?.call(reminders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processing,
    TResult Function(CategorizedReminders reminders, String error)? failure,
    TResult Function(CategorizedReminders reminders)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(reminders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Processing value) processing,
    required TResult Function(Failure value) failure,
    required TResult Function(Fetched value) fetched,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Processing value)? processing,
    TResult? Function(Failure value)? failure,
    TResult? Function(Fetched value)? fetched,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Processing value)? processing,
    TResult Function(Failure value)? failure,
    TResult Function(Fetched value)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class Fetched implements ReminderProcessingState {
  const factory Fetched(final CategorizedReminders reminders) = _$FetchedImpl;

  CategorizedReminders get reminders;

  /// Create a copy of ReminderProcessingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchedImplCopyWith<_$FetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
