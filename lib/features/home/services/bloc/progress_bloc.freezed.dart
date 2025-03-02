// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'progress_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProgressEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ReminderCategory category) select,
    required TResult Function(ReminderCollection? reminders) actualize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ReminderCategory category)? select,
    TResult? Function(ReminderCollection? reminders)? actualize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ReminderCategory category)? select,
    TResult Function(ReminderCollection? reminders)? actualize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Select value) select,
    required TResult Function(_Actualize value) actualize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Select value)? select,
    TResult? Function(_Actualize value)? actualize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_Actualize value)? actualize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressEventCopyWith<$Res> {
  factory $ProgressEventCopyWith(
          ProgressEvent value, $Res Function(ProgressEvent) then) =
      _$ProgressEventCopyWithImpl<$Res, ProgressEvent>;
}

/// @nodoc
class _$ProgressEventCopyWithImpl<$Res, $Val extends ProgressEvent>
    implements $ProgressEventCopyWith<$Res> {
  _$ProgressEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProgressEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SelectImplCopyWith<$Res> {
  factory _$$SelectImplCopyWith(
          _$SelectImpl value, $Res Function(_$SelectImpl) then) =
      __$$SelectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ReminderCategory category});
}

/// @nodoc
class __$$SelectImplCopyWithImpl<$Res>
    extends _$ProgressEventCopyWithImpl<$Res, _$SelectImpl>
    implements _$$SelectImplCopyWith<$Res> {
  __$$SelectImplCopyWithImpl(
      _$SelectImpl _value, $Res Function(_$SelectImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProgressEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$SelectImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ReminderCategory,
    ));
  }
}

/// @nodoc

class _$SelectImpl implements _Select {
  const _$SelectImpl(this.category);

  @override
  final ReminderCategory category;

  @override
  String toString() {
    return 'ProgressEvent.select(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  /// Create a copy of ProgressEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectImplCopyWith<_$SelectImpl> get copyWith =>
      __$$SelectImplCopyWithImpl<_$SelectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ReminderCategory category) select,
    required TResult Function(ReminderCollection? reminders) actualize,
  }) {
    return select(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ReminderCategory category)? select,
    TResult? Function(ReminderCollection? reminders)? actualize,
  }) {
    return select?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ReminderCategory category)? select,
    TResult Function(ReminderCollection? reminders)? actualize,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Select value) select,
    required TResult Function(_Actualize value) actualize,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Select value)? select,
    TResult? Function(_Actualize value)? actualize,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_Actualize value)? actualize,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class _Select implements ProgressEvent {
  const factory _Select(final ReminderCategory category) = _$SelectImpl;

  ReminderCategory get category;

  /// Create a copy of ProgressEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectImplCopyWith<_$SelectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ActualizeImplCopyWith<$Res> {
  factory _$$ActualizeImplCopyWith(
          _$ActualizeImpl value, $Res Function(_$ActualizeImpl) then) =
      __$$ActualizeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ReminderCollection? reminders});

  $ReminderCollectionCopyWith<$Res>? get reminders;
}

/// @nodoc
class __$$ActualizeImplCopyWithImpl<$Res>
    extends _$ProgressEventCopyWithImpl<$Res, _$ActualizeImpl>
    implements _$$ActualizeImplCopyWith<$Res> {
  __$$ActualizeImplCopyWithImpl(
      _$ActualizeImpl _value, $Res Function(_$ActualizeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProgressEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reminders = freezed,
  }) {
    return _then(_$ActualizeImpl(
      freezed == reminders
          ? _value.reminders
          : reminders // ignore: cast_nullable_to_non_nullable
              as ReminderCollection?,
    ));
  }

  /// Create a copy of ProgressEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReminderCollectionCopyWith<$Res>? get reminders {
    if (_value.reminders == null) {
      return null;
    }

    return $ReminderCollectionCopyWith<$Res>(_value.reminders!, (value) {
      return _then(_value.copyWith(reminders: value));
    });
  }
}

/// @nodoc

class _$ActualizeImpl implements _Actualize {
  const _$ActualizeImpl(this.reminders);

  @override
  final ReminderCollection? reminders;

  @override
  String toString() {
    return 'ProgressEvent.actualize(reminders: $reminders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActualizeImpl &&
            (identical(other.reminders, reminders) ||
                other.reminders == reminders));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reminders);

  /// Create a copy of ProgressEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActualizeImplCopyWith<_$ActualizeImpl> get copyWith =>
      __$$ActualizeImplCopyWithImpl<_$ActualizeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ReminderCategory category) select,
    required TResult Function(ReminderCollection? reminders) actualize,
  }) {
    return actualize(reminders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ReminderCategory category)? select,
    TResult? Function(ReminderCollection? reminders)? actualize,
  }) {
    return actualize?.call(reminders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ReminderCategory category)? select,
    TResult Function(ReminderCollection? reminders)? actualize,
    required TResult orElse(),
  }) {
    if (actualize != null) {
      return actualize(reminders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Select value) select,
    required TResult Function(_Actualize value) actualize,
  }) {
    return actualize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Select value)? select,
    TResult? Function(_Actualize value)? actualize,
  }) {
    return actualize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_Actualize value)? actualize,
    required TResult orElse(),
  }) {
    if (actualize != null) {
      return actualize(this);
    }
    return orElse();
  }
}

abstract class _Actualize implements ProgressEvent {
  const factory _Actualize(final ReminderCollection? reminders) =
      _$ActualizeImpl;

  ReminderCollection? get reminders;

  /// Create a copy of ProgressEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActualizeImplCopyWith<_$ActualizeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProgressState {
  ReminderCollection? get reminders => throw _privateConstructorUsedError;
  ReminderCategory get selected => throw _privateConstructorUsedError;

  /// Create a copy of ProgressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProgressStateCopyWith<ProgressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressStateCopyWith<$Res> {
  factory $ProgressStateCopyWith(
          ProgressState value, $Res Function(ProgressState) then) =
      _$ProgressStateCopyWithImpl<$Res, ProgressState>;
  @useResult
  $Res call({ReminderCollection? reminders, ReminderCategory selected});

  $ReminderCollectionCopyWith<$Res>? get reminders;
}

/// @nodoc
class _$ProgressStateCopyWithImpl<$Res, $Val extends ProgressState>
    implements $ProgressStateCopyWith<$Res> {
  _$ProgressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProgressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reminders = freezed,
    Object? selected = null,
  }) {
    return _then(_value.copyWith(
      reminders: freezed == reminders
          ? _value.reminders
          : reminders // ignore: cast_nullable_to_non_nullable
              as ReminderCollection?,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as ReminderCategory,
    ) as $Val);
  }

  /// Create a copy of ProgressState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReminderCollectionCopyWith<$Res>? get reminders {
    if (_value.reminders == null) {
      return null;
    }

    return $ReminderCollectionCopyWith<$Res>(_value.reminders!, (value) {
      return _then(_value.copyWith(reminders: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProgressStateImplCopyWith<$Res>
    implements $ProgressStateCopyWith<$Res> {
  factory _$$ProgressStateImplCopyWith(
          _$ProgressStateImpl value, $Res Function(_$ProgressStateImpl) then) =
      __$$ProgressStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ReminderCollection? reminders, ReminderCategory selected});

  @override
  $ReminderCollectionCopyWith<$Res>? get reminders;
}

/// @nodoc
class __$$ProgressStateImplCopyWithImpl<$Res>
    extends _$ProgressStateCopyWithImpl<$Res, _$ProgressStateImpl>
    implements _$$ProgressStateImplCopyWith<$Res> {
  __$$ProgressStateImplCopyWithImpl(
      _$ProgressStateImpl _value, $Res Function(_$ProgressStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProgressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reminders = freezed,
    Object? selected = null,
  }) {
    return _then(_$ProgressStateImpl(
      reminders: freezed == reminders
          ? _value.reminders
          : reminders // ignore: cast_nullable_to_non_nullable
              as ReminderCollection?,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as ReminderCategory,
    ));
  }
}

/// @nodoc

class _$ProgressStateImpl implements _ProgressState {
  const _$ProgressStateImpl(
      {this.reminders, this.selected = ReminderCategory.today});

  @override
  final ReminderCollection? reminders;
  @override
  @JsonKey()
  final ReminderCategory selected;

  @override
  String toString() {
    return 'ProgressState(reminders: $reminders, selected: $selected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgressStateImpl &&
            (identical(other.reminders, reminders) ||
                other.reminders == reminders) &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reminders, selected);

  /// Create a copy of ProgressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgressStateImplCopyWith<_$ProgressStateImpl> get copyWith =>
      __$$ProgressStateImplCopyWithImpl<_$ProgressStateImpl>(this, _$identity);
}

abstract class _ProgressState implements ProgressState {
  const factory _ProgressState(
      {final ReminderCollection? reminders,
      final ReminderCategory selected}) = _$ProgressStateImpl;

  @override
  ReminderCollection? get reminders;
  @override
  ReminderCategory get selected;

  /// Create a copy of ProgressState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgressStateImplCopyWith<_$ProgressStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
