// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categorized_reminders.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategorizedReminders {
  List<Reminder> get today => throw _privateConstructorUsedError;
  List<Reminder> get month => throw _privateConstructorUsedError;
  List<Reminder> get all => throw _privateConstructorUsedError;
  List<Reminder> get done => throw _privateConstructorUsedError;

  /// Create a copy of CategorizedReminders
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategorizedRemindersCopyWith<CategorizedReminders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategorizedRemindersCopyWith<$Res> {
  factory $CategorizedRemindersCopyWith(CategorizedReminders value,
          $Res Function(CategorizedReminders) then) =
      _$CategorizedRemindersCopyWithImpl<$Res, CategorizedReminders>;
  @useResult
  $Res call(
      {List<Reminder> today,
      List<Reminder> month,
      List<Reminder> all,
      List<Reminder> done});
}

/// @nodoc
class _$CategorizedRemindersCopyWithImpl<$Res,
        $Val extends CategorizedReminders>
    implements $CategorizedRemindersCopyWith<$Res> {
  _$CategorizedRemindersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategorizedReminders
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? today = null,
    Object? month = null,
    Object? all = null,
    Object? done = null,
  }) {
    return _then(_value.copyWith(
      today: null == today
          ? _value.today
          : today // ignore: cast_nullable_to_non_nullable
              as List<Reminder>,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as List<Reminder>,
      all: null == all
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as List<Reminder>,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as List<Reminder>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategorizedRemindersImplCopyWith<$Res>
    implements $CategorizedRemindersCopyWith<$Res> {
  factory _$$CategorizedRemindersImplCopyWith(_$CategorizedRemindersImpl value,
          $Res Function(_$CategorizedRemindersImpl) then) =
      __$$CategorizedRemindersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Reminder> today,
      List<Reminder> month,
      List<Reminder> all,
      List<Reminder> done});
}

/// @nodoc
class __$$CategorizedRemindersImplCopyWithImpl<$Res>
    extends _$CategorizedRemindersCopyWithImpl<$Res, _$CategorizedRemindersImpl>
    implements _$$CategorizedRemindersImplCopyWith<$Res> {
  __$$CategorizedRemindersImplCopyWithImpl(_$CategorizedRemindersImpl _value,
      $Res Function(_$CategorizedRemindersImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategorizedReminders
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? today = null,
    Object? month = null,
    Object? all = null,
    Object? done = null,
  }) {
    return _then(_$CategorizedRemindersImpl(
      today: null == today
          ? _value._today
          : today // ignore: cast_nullable_to_non_nullable
              as List<Reminder>,
      month: null == month
          ? _value._month
          : month // ignore: cast_nullable_to_non_nullable
              as List<Reminder>,
      all: null == all
          ? _value._all
          : all // ignore: cast_nullable_to_non_nullable
              as List<Reminder>,
      done: null == done
          ? _value._done
          : done // ignore: cast_nullable_to_non_nullable
              as List<Reminder>,
    ));
  }
}

/// @nodoc

class _$CategorizedRemindersImpl implements _CategorizedReminders {
  const _$CategorizedRemindersImpl(
      {required final List<Reminder> today,
      required final List<Reminder> month,
      required final List<Reminder> all,
      required final List<Reminder> done})
      : _today = today,
        _month = month,
        _all = all,
        _done = done;

  final List<Reminder> _today;
  @override
  List<Reminder> get today {
    if (_today is EqualUnmodifiableListView) return _today;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_today);
  }

  final List<Reminder> _month;
  @override
  List<Reminder> get month {
    if (_month is EqualUnmodifiableListView) return _month;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_month);
  }

  final List<Reminder> _all;
  @override
  List<Reminder> get all {
    if (_all is EqualUnmodifiableListView) return _all;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_all);
  }

  final List<Reminder> _done;
  @override
  List<Reminder> get done {
    if (_done is EqualUnmodifiableListView) return _done;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_done);
  }

  @override
  String toString() {
    return 'CategorizedReminders(today: $today, month: $month, all: $all, done: $done)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategorizedRemindersImpl &&
            const DeepCollectionEquality().equals(other._today, _today) &&
            const DeepCollectionEquality().equals(other._month, _month) &&
            const DeepCollectionEquality().equals(other._all, _all) &&
            const DeepCollectionEquality().equals(other._done, _done));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_today),
      const DeepCollectionEquality().hash(_month),
      const DeepCollectionEquality().hash(_all),
      const DeepCollectionEquality().hash(_done));

  /// Create a copy of CategorizedReminders
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategorizedRemindersImplCopyWith<_$CategorizedRemindersImpl>
      get copyWith =>
          __$$CategorizedRemindersImplCopyWithImpl<_$CategorizedRemindersImpl>(
              this, _$identity);
}

abstract class _CategorizedReminders implements CategorizedReminders {
  const factory _CategorizedReminders(
      {required final List<Reminder> today,
      required final List<Reminder> month,
      required final List<Reminder> all,
      required final List<Reminder> done}) = _$CategorizedRemindersImpl;

  @override
  List<Reminder> get today;
  @override
  List<Reminder> get month;
  @override
  List<Reminder> get all;
  @override
  List<Reminder> get done;

  /// Create a copy of CategorizedReminders
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategorizedRemindersImplCopyWith<_$CategorizedRemindersImpl>
      get copyWith => throw _privateConstructorUsedError;
}
