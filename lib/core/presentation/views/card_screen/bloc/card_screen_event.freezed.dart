// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_screen_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CardScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCardData,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCardData,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCardData,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCardData value) getCardData,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCardData value)? getCardData,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCardData value)? getCardData,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardScreenEventCopyWith<$Res> {
  factory $CardScreenEventCopyWith(
    CardScreenEvent value,
    $Res Function(CardScreenEvent) then,
  ) = _$CardScreenEventCopyWithImpl<$Res, CardScreenEvent>;
}

/// @nodoc
class _$CardScreenEventCopyWithImpl<$Res, $Val extends CardScreenEvent>
    implements $CardScreenEventCopyWith<$Res> {
  _$CardScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CardScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetCardDataImplCopyWith<$Res> {
  factory _$$GetCardDataImplCopyWith(
    _$GetCardDataImpl value,
    $Res Function(_$GetCardDataImpl) then,
  ) = __$$GetCardDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCardDataImplCopyWithImpl<$Res>
    extends _$CardScreenEventCopyWithImpl<$Res, _$GetCardDataImpl>
    implements _$$GetCardDataImplCopyWith<$Res> {
  __$$GetCardDataImplCopyWithImpl(
    _$GetCardDataImpl _value,
    $Res Function(_$GetCardDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CardScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCardDataImpl implements GetCardData {
  const _$GetCardDataImpl();

  @override
  String toString() {
    return 'CardScreenEvent.getCardData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCardDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCardData,
  }) {
    return getCardData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCardData,
  }) {
    return getCardData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCardData,
    required TResult orElse(),
  }) {
    if (getCardData != null) {
      return getCardData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCardData value) getCardData,
  }) {
    return getCardData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCardData value)? getCardData,
  }) {
    return getCardData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCardData value)? getCardData,
    required TResult orElse(),
  }) {
    if (getCardData != null) {
      return getCardData(this);
    }
    return orElse();
  }
}

abstract class GetCardData implements CardScreenEvent {
  const factory GetCardData() = _$GetCardDataImpl;
}
