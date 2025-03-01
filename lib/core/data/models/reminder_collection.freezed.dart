// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reminder_collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReminderCollection {
  Iterable<ReminderGroup> get groups => throw _privateConstructorUsedError;

  /// Create a copy of ReminderCollection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReminderCollectionCopyWith<ReminderCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReminderCollectionCopyWith<$Res> {
  factory $ReminderCollectionCopyWith(
          ReminderCollection value, $Res Function(ReminderCollection) then) =
      _$ReminderCollectionCopyWithImpl<$Res, ReminderCollection>;
  @useResult
  $Res call({Iterable<ReminderGroup> groups});
}

/// @nodoc
class _$ReminderCollectionCopyWithImpl<$Res, $Val extends ReminderCollection>
    implements $ReminderCollectionCopyWith<$Res> {
  _$ReminderCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReminderCollection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groups = null,
  }) {
    return _then(_value.copyWith(
      groups: null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as Iterable<ReminderGroup>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReminderCollectionImplCopyWith<$Res>
    implements $ReminderCollectionCopyWith<$Res> {
  factory _$$ReminderCollectionImplCopyWith(_$ReminderCollectionImpl value,
          $Res Function(_$ReminderCollectionImpl) then) =
      __$$ReminderCollectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Iterable<ReminderGroup> groups});
}

/// @nodoc
class __$$ReminderCollectionImplCopyWithImpl<$Res>
    extends _$ReminderCollectionCopyWithImpl<$Res, _$ReminderCollectionImpl>
    implements _$$ReminderCollectionImplCopyWith<$Res> {
  __$$ReminderCollectionImplCopyWithImpl(_$ReminderCollectionImpl _value,
      $Res Function(_$ReminderCollectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReminderCollection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groups = null,
  }) {
    return _then(_$ReminderCollectionImpl(
      groups: null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as Iterable<ReminderGroup>,
    ));
  }
}

/// @nodoc

class _$ReminderCollectionImpl extends _ReminderCollection
    with DiagnosticableTreeMixin {
  const _$ReminderCollectionImpl({required this.groups}) : super._();

  @override
  final Iterable<ReminderGroup> groups;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReminderCollection(groups: $groups)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReminderCollection'))
      ..add(DiagnosticsProperty('groups', groups));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReminderCollectionImpl &&
            const DeepCollectionEquality().equals(other.groups, groups));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(groups));

  /// Create a copy of ReminderCollection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReminderCollectionImplCopyWith<_$ReminderCollectionImpl> get copyWith =>
      __$$ReminderCollectionImplCopyWithImpl<_$ReminderCollectionImpl>(
          this, _$identity);
}

abstract class _ReminderCollection extends ReminderCollection {
  const factory _ReminderCollection(
          {required final Iterable<ReminderGroup> groups}) =
      _$ReminderCollectionImpl;
  const _ReminderCollection._() : super._();

  @override
  Iterable<ReminderGroup> get groups;

  /// Create a copy of ReminderCollection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReminderCollectionImplCopyWith<_$ReminderCollectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
