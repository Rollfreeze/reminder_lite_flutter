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
    required TResult Function(Reminder reminder) update,
    required TResult Function(Reminder reminder) toggleCompletion,
    required TResult Function(ReminderCollection reminders) succeed,
    required TResult Function(String error) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? create,
    TResult? Function(Reminder reminder)? update,
    TResult? Function(Reminder reminder)? toggleCompletion,
    TResult? Function(ReminderCollection reminders)? succeed,
    TResult? Function(String error)? fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? create,
    TResult Function(Reminder reminder)? update,
    TResult Function(Reminder reminder)? toggleCompletion,
    TResult Function(ReminderCollection reminders)? succeed,
    TResult Function(String error)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_ToggleCompletion value) toggleCompletion,
    required TResult Function(_Succeed value) succeed,
    required TResult Function(_Fail value) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_ToggleCompletion value)? toggleCompletion,
    TResult? Function(_Succeed value)? succeed,
    TResult? Function(_Fail value)? fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_ToggleCompletion value)? toggleCompletion,
    TResult Function(_Succeed value)? succeed,
    TResult Function(_Fail value)? fail,
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
    required TResult Function(Reminder reminder) update,
    required TResult Function(Reminder reminder) toggleCompletion,
    required TResult Function(ReminderCollection reminders) succeed,
    required TResult Function(String error) fail,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? create,
    TResult? Function(Reminder reminder)? update,
    TResult? Function(Reminder reminder)? toggleCompletion,
    TResult? Function(ReminderCollection reminders)? succeed,
    TResult? Function(String error)? fail,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? create,
    TResult Function(Reminder reminder)? update,
    TResult Function(Reminder reminder)? toggleCompletion,
    TResult Function(ReminderCollection reminders)? succeed,
    TResult Function(String error)? fail,
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
    required TResult Function(_Update value) update,
    required TResult Function(_ToggleCompletion value) toggleCompletion,
    required TResult Function(_Succeed value) succeed,
    required TResult Function(_Fail value) fail,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_ToggleCompletion value)? toggleCompletion,
    TResult? Function(_Succeed value)? succeed,
    TResult? Function(_Fail value)? fail,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_ToggleCompletion value)? toggleCompletion,
    TResult Function(_Succeed value)? succeed,
    TResult Function(_Fail value)? fail,
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
    required TResult Function(Reminder reminder) update,
    required TResult Function(Reminder reminder) toggleCompletion,
    required TResult Function(ReminderCollection reminders) succeed,
    required TResult Function(String error) fail,
  }) {
    return create();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? create,
    TResult? Function(Reminder reminder)? update,
    TResult? Function(Reminder reminder)? toggleCompletion,
    TResult? Function(ReminderCollection reminders)? succeed,
    TResult? Function(String error)? fail,
  }) {
    return create?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? create,
    TResult Function(Reminder reminder)? update,
    TResult Function(Reminder reminder)? toggleCompletion,
    TResult Function(ReminderCollection reminders)? succeed,
    TResult Function(String error)? fail,
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
    required TResult Function(_Update value) update,
    required TResult Function(_ToggleCompletion value) toggleCompletion,
    required TResult Function(_Succeed value) succeed,
    required TResult Function(_Fail value) fail,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_ToggleCompletion value)? toggleCompletion,
    TResult? Function(_Succeed value)? succeed,
    TResult? Function(_Fail value)? fail,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_ToggleCompletion value)? toggleCompletion,
    TResult Function(_Succeed value)? succeed,
    TResult Function(_Fail value)? fail,
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
abstract class _$$UpdateImplCopyWith<$Res> {
  factory _$$UpdateImplCopyWith(
          _$UpdateImpl value, $Res Function(_$UpdateImpl) then) =
      __$$UpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Reminder reminder});

  $ReminderCopyWith<$Res> get reminder;
}

/// @nodoc
class __$$UpdateImplCopyWithImpl<$Res>
    extends _$ReminderEventCopyWithImpl<$Res, _$UpdateImpl>
    implements _$$UpdateImplCopyWith<$Res> {
  __$$UpdateImplCopyWithImpl(
      _$UpdateImpl _value, $Res Function(_$UpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReminderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reminder = null,
  }) {
    return _then(_$UpdateImpl(
      null == reminder
          ? _value.reminder
          : reminder // ignore: cast_nullable_to_non_nullable
              as Reminder,
    ));
  }

  /// Create a copy of ReminderEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReminderCopyWith<$Res> get reminder {
    return $ReminderCopyWith<$Res>(_value.reminder, (value) {
      return _then(_value.copyWith(reminder: value));
    });
  }
}

/// @nodoc

class _$UpdateImpl implements _Update {
  const _$UpdateImpl(this.reminder);

  @override
  final Reminder reminder;

  @override
  String toString() {
    return 'ReminderEvent.update(reminder: $reminder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateImpl &&
            (identical(other.reminder, reminder) ||
                other.reminder == reminder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reminder);

  /// Create a copy of ReminderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      __$$UpdateImplCopyWithImpl<_$UpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() create,
    required TResult Function(Reminder reminder) update,
    required TResult Function(Reminder reminder) toggleCompletion,
    required TResult Function(ReminderCollection reminders) succeed,
    required TResult Function(String error) fail,
  }) {
    return update(reminder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? create,
    TResult? Function(Reminder reminder)? update,
    TResult? Function(Reminder reminder)? toggleCompletion,
    TResult? Function(ReminderCollection reminders)? succeed,
    TResult? Function(String error)? fail,
  }) {
    return update?.call(reminder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? create,
    TResult Function(Reminder reminder)? update,
    TResult Function(Reminder reminder)? toggleCompletion,
    TResult Function(ReminderCollection reminders)? succeed,
    TResult Function(String error)? fail,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(reminder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_ToggleCompletion value) toggleCompletion,
    required TResult Function(_Succeed value) succeed,
    required TResult Function(_Fail value) fail,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_ToggleCompletion value)? toggleCompletion,
    TResult? Function(_Succeed value)? succeed,
    TResult? Function(_Fail value)? fail,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_ToggleCompletion value)? toggleCompletion,
    TResult Function(_Succeed value)? succeed,
    TResult Function(_Fail value)? fail,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements ReminderEvent {
  const factory _Update(final Reminder reminder) = _$UpdateImpl;

  Reminder get reminder;

  /// Create a copy of ReminderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleCompletionImplCopyWith<$Res> {
  factory _$$ToggleCompletionImplCopyWith(_$ToggleCompletionImpl value,
          $Res Function(_$ToggleCompletionImpl) then) =
      __$$ToggleCompletionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Reminder reminder});

  $ReminderCopyWith<$Res> get reminder;
}

/// @nodoc
class __$$ToggleCompletionImplCopyWithImpl<$Res>
    extends _$ReminderEventCopyWithImpl<$Res, _$ToggleCompletionImpl>
    implements _$$ToggleCompletionImplCopyWith<$Res> {
  __$$ToggleCompletionImplCopyWithImpl(_$ToggleCompletionImpl _value,
      $Res Function(_$ToggleCompletionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReminderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reminder = null,
  }) {
    return _then(_$ToggleCompletionImpl(
      null == reminder
          ? _value.reminder
          : reminder // ignore: cast_nullable_to_non_nullable
              as Reminder,
    ));
  }

  /// Create a copy of ReminderEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReminderCopyWith<$Res> get reminder {
    return $ReminderCopyWith<$Res>(_value.reminder, (value) {
      return _then(_value.copyWith(reminder: value));
    });
  }
}

/// @nodoc

class _$ToggleCompletionImpl implements _ToggleCompletion {
  const _$ToggleCompletionImpl(this.reminder);

  @override
  final Reminder reminder;

  @override
  String toString() {
    return 'ReminderEvent.toggleCompletion(reminder: $reminder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleCompletionImpl &&
            (identical(other.reminder, reminder) ||
                other.reminder == reminder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reminder);

  /// Create a copy of ReminderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleCompletionImplCopyWith<_$ToggleCompletionImpl> get copyWith =>
      __$$ToggleCompletionImplCopyWithImpl<_$ToggleCompletionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() create,
    required TResult Function(Reminder reminder) update,
    required TResult Function(Reminder reminder) toggleCompletion,
    required TResult Function(ReminderCollection reminders) succeed,
    required TResult Function(String error) fail,
  }) {
    return toggleCompletion(reminder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? create,
    TResult? Function(Reminder reminder)? update,
    TResult? Function(Reminder reminder)? toggleCompletion,
    TResult? Function(ReminderCollection reminders)? succeed,
    TResult? Function(String error)? fail,
  }) {
    return toggleCompletion?.call(reminder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? create,
    TResult Function(Reminder reminder)? update,
    TResult Function(Reminder reminder)? toggleCompletion,
    TResult Function(ReminderCollection reminders)? succeed,
    TResult Function(String error)? fail,
    required TResult orElse(),
  }) {
    if (toggleCompletion != null) {
      return toggleCompletion(reminder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_ToggleCompletion value) toggleCompletion,
    required TResult Function(_Succeed value) succeed,
    required TResult Function(_Fail value) fail,
  }) {
    return toggleCompletion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_ToggleCompletion value)? toggleCompletion,
    TResult? Function(_Succeed value)? succeed,
    TResult? Function(_Fail value)? fail,
  }) {
    return toggleCompletion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_ToggleCompletion value)? toggleCompletion,
    TResult Function(_Succeed value)? succeed,
    TResult Function(_Fail value)? fail,
    required TResult orElse(),
  }) {
    if (toggleCompletion != null) {
      return toggleCompletion(this);
    }
    return orElse();
  }
}

abstract class _ToggleCompletion implements ReminderEvent {
  const factory _ToggleCompletion(final Reminder reminder) =
      _$ToggleCompletionImpl;

  Reminder get reminder;

  /// Create a copy of ReminderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleCompletionImplCopyWith<_$ToggleCompletionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SucceedImplCopyWith<$Res> {
  factory _$$SucceedImplCopyWith(
          _$SucceedImpl value, $Res Function(_$SucceedImpl) then) =
      __$$SucceedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ReminderCollection reminders});

  $ReminderCollectionCopyWith<$Res> get reminders;
}

/// @nodoc
class __$$SucceedImplCopyWithImpl<$Res>
    extends _$ReminderEventCopyWithImpl<$Res, _$SucceedImpl>
    implements _$$SucceedImplCopyWith<$Res> {
  __$$SucceedImplCopyWithImpl(
      _$SucceedImpl _value, $Res Function(_$SucceedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReminderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reminders = null,
  }) {
    return _then(_$SucceedImpl(
      null == reminders
          ? _value.reminders
          : reminders // ignore: cast_nullable_to_non_nullable
              as ReminderCollection,
    ));
  }

  /// Create a copy of ReminderEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReminderCollectionCopyWith<$Res> get reminders {
    return $ReminderCollectionCopyWith<$Res>(_value.reminders, (value) {
      return _then(_value.copyWith(reminders: value));
    });
  }
}

/// @nodoc

class _$SucceedImpl implements _Succeed {
  const _$SucceedImpl(this.reminders);

  @override
  final ReminderCollection reminders;

  @override
  String toString() {
    return 'ReminderEvent.succeed(reminders: $reminders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SucceedImpl &&
            (identical(other.reminders, reminders) ||
                other.reminders == reminders));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reminders);

  /// Create a copy of ReminderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SucceedImplCopyWith<_$SucceedImpl> get copyWith =>
      __$$SucceedImplCopyWithImpl<_$SucceedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() create,
    required TResult Function(Reminder reminder) update,
    required TResult Function(Reminder reminder) toggleCompletion,
    required TResult Function(ReminderCollection reminders) succeed,
    required TResult Function(String error) fail,
  }) {
    return succeed(reminders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? create,
    TResult? Function(Reminder reminder)? update,
    TResult? Function(Reminder reminder)? toggleCompletion,
    TResult? Function(ReminderCollection reminders)? succeed,
    TResult? Function(String error)? fail,
  }) {
    return succeed?.call(reminders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? create,
    TResult Function(Reminder reminder)? update,
    TResult Function(Reminder reminder)? toggleCompletion,
    TResult Function(ReminderCollection reminders)? succeed,
    TResult Function(String error)? fail,
    required TResult orElse(),
  }) {
    if (succeed != null) {
      return succeed(reminders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_ToggleCompletion value) toggleCompletion,
    required TResult Function(_Succeed value) succeed,
    required TResult Function(_Fail value) fail,
  }) {
    return succeed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_ToggleCompletion value)? toggleCompletion,
    TResult? Function(_Succeed value)? succeed,
    TResult? Function(_Fail value)? fail,
  }) {
    return succeed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_ToggleCompletion value)? toggleCompletion,
    TResult Function(_Succeed value)? succeed,
    TResult Function(_Fail value)? fail,
    required TResult orElse(),
  }) {
    if (succeed != null) {
      return succeed(this);
    }
    return orElse();
  }
}

abstract class _Succeed implements ReminderEvent {
  const factory _Succeed(final ReminderCollection reminders) = _$SucceedImpl;

  ReminderCollection get reminders;

  /// Create a copy of ReminderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SucceedImplCopyWith<_$SucceedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailImplCopyWith<$Res> {
  factory _$$FailImplCopyWith(
          _$FailImpl value, $Res Function(_$FailImpl) then) =
      __$$FailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$FailImplCopyWithImpl<$Res>
    extends _$ReminderEventCopyWithImpl<$Res, _$FailImpl>
    implements _$$FailImplCopyWith<$Res> {
  __$$FailImplCopyWithImpl(_$FailImpl _value, $Res Function(_$FailImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReminderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailImpl implements _Fail {
  const _$FailImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'ReminderEvent.fail(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ReminderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailImplCopyWith<_$FailImpl> get copyWith =>
      __$$FailImplCopyWithImpl<_$FailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() create,
    required TResult Function(Reminder reminder) update,
    required TResult Function(Reminder reminder) toggleCompletion,
    required TResult Function(ReminderCollection reminders) succeed,
    required TResult Function(String error) fail,
  }) {
    return fail(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? create,
    TResult? Function(Reminder reminder)? update,
    TResult? Function(Reminder reminder)? toggleCompletion,
    TResult? Function(ReminderCollection reminders)? succeed,
    TResult? Function(String error)? fail,
  }) {
    return fail?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? create,
    TResult Function(Reminder reminder)? update,
    TResult Function(Reminder reminder)? toggleCompletion,
    TResult Function(ReminderCollection reminders)? succeed,
    TResult Function(String error)? fail,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_ToggleCompletion value) toggleCompletion,
    required TResult Function(_Succeed value) succeed,
    required TResult Function(_Fail value) fail,
  }) {
    return fail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_ToggleCompletion value)? toggleCompletion,
    TResult? Function(_Succeed value)? succeed,
    TResult? Function(_Fail value)? fail,
  }) {
    return fail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_ToggleCompletion value)? toggleCompletion,
    TResult Function(_Succeed value)? succeed,
    TResult Function(_Fail value)? fail,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(this);
    }
    return orElse();
  }
}

abstract class _Fail implements ReminderEvent {
  const factory _Fail(final String error) = _$FailImpl;

  String get error;

  /// Create a copy of ReminderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailImplCopyWith<_$FailImpl> get copyWith =>
      throw _privateConstructorUsedError;
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

class _$ReminderStateImpl extends _ReminderState {
  const _$ReminderStateImpl(
      {this.selectedCategory = ReminderCategory.today,
      this.processingState = const ReminderProcessingState.processing()})
      : super._();

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

abstract class _ReminderState extends ReminderState {
  const factory _ReminderState(
      {final ReminderCategory selectedCategory,
      final ReminderProcessingState processingState}) = _$ReminderStateImpl;
  const _ReminderState._() : super._();

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
    required TResult Function(ReminderCollection? reminders, String error)
        failure,
    required TResult Function(ReminderCollection reminders) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processing,
    TResult? Function(ReminderCollection? reminders, String error)? failure,
    TResult? Function(ReminderCollection reminders)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processing,
    TResult Function(ReminderCollection? reminders, String error)? failure,
    TResult Function(ReminderCollection reminders)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Processing value) processing,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Fetched value) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Fetched value)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Processing value)? processing,
    TResult Function(_Failure value)? failure,
    TResult Function(_Fetched value)? fetched,
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

class _$ProcessingImpl implements _Processing {
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
    required TResult Function(ReminderCollection? reminders, String error)
        failure,
    required TResult Function(ReminderCollection reminders) fetched,
  }) {
    return processing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processing,
    TResult? Function(ReminderCollection? reminders, String error)? failure,
    TResult? Function(ReminderCollection reminders)? fetched,
  }) {
    return processing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processing,
    TResult Function(ReminderCollection? reminders, String error)? failure,
    TResult Function(ReminderCollection reminders)? fetched,
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
    required TResult Function(_Processing value) processing,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Fetched value) fetched,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Fetched value)? fetched,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Processing value)? processing,
    TResult Function(_Failure value)? failure,
    TResult Function(_Fetched value)? fetched,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class _Processing implements ReminderProcessingState {
  const factory _Processing() = _$ProcessingImpl;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ReminderCollection? reminders, String error});

  $ReminderCollectionCopyWith<$Res>? get reminders;
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
    Object? reminders = freezed,
    Object? error = null,
  }) {
    return _then(_$FailureImpl(
      freezed == reminders
          ? _value.reminders
          : reminders // ignore: cast_nullable_to_non_nullable
              as ReminderCollection?,
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

class _$FailureImpl implements _Failure {
  const _$FailureImpl(this.reminders, this.error);

  @override
  final ReminderCollection? reminders;
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
    required TResult Function(ReminderCollection? reminders, String error)
        failure,
    required TResult Function(ReminderCollection reminders) fetched,
  }) {
    return failure(reminders, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processing,
    TResult? Function(ReminderCollection? reminders, String error)? failure,
    TResult? Function(ReminderCollection reminders)? fetched,
  }) {
    return failure?.call(reminders, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processing,
    TResult Function(ReminderCollection? reminders, String error)? failure,
    TResult Function(ReminderCollection reminders)? fetched,
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
    required TResult Function(_Processing value) processing,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Fetched value) fetched,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Fetched value)? fetched,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Processing value)? processing,
    TResult Function(_Failure value)? failure,
    TResult Function(_Fetched value)? fetched,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements ReminderProcessingState {
  const factory _Failure(
      final ReminderCollection? reminders, final String error) = _$FailureImpl;

  ReminderCollection? get reminders;
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
  $Res call({ReminderCollection reminders});

  $ReminderCollectionCopyWith<$Res> get reminders;
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
              as ReminderCollection,
    ));
  }

  /// Create a copy of ReminderProcessingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReminderCollectionCopyWith<$Res> get reminders {
    return $ReminderCollectionCopyWith<$Res>(_value.reminders, (value) {
      return _then(_value.copyWith(reminders: value));
    });
  }
}

/// @nodoc

class _$FetchedImpl implements _Fetched {
  const _$FetchedImpl(this.reminders);

  @override
  final ReminderCollection reminders;

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
    required TResult Function(ReminderCollection? reminders, String error)
        failure,
    required TResult Function(ReminderCollection reminders) fetched,
  }) {
    return fetched(reminders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processing,
    TResult? Function(ReminderCollection? reminders, String error)? failure,
    TResult? Function(ReminderCollection reminders)? fetched,
  }) {
    return fetched?.call(reminders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processing,
    TResult Function(ReminderCollection? reminders, String error)? failure,
    TResult Function(ReminderCollection reminders)? fetched,
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
    required TResult Function(_Processing value) processing,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Fetched value) fetched,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Fetched value)? fetched,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Processing value)? processing,
    TResult Function(_Failure value)? failure,
    TResult Function(_Fetched value)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class _Fetched implements ReminderProcessingState {
  const factory _Fetched(final ReminderCollection reminders) = _$FetchedImpl;

  ReminderCollection get reminders;

  /// Create a copy of ReminderProcessingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchedImplCopyWith<_$FetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
