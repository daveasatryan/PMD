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
    required TResult Function(int index) removeFromCard,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCardData,
    TResult? Function(int index)? removeFromCard,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCardData,
    TResult Function(int index)? removeFromCard,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCardData value) getCardData,
    required TResult Function(DeleteFromCard value) removeFromCard,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCardData value)? getCardData,
    TResult? Function(DeleteFromCard value)? removeFromCard,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCardData value)? getCardData,
    TResult Function(DeleteFromCard value)? removeFromCard,
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
    required TResult Function(int index) removeFromCard,
  }) {
    return getCardData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCardData,
    TResult? Function(int index)? removeFromCard,
  }) {
    return getCardData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCardData,
    TResult Function(int index)? removeFromCard,
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
    required TResult Function(DeleteFromCard value) removeFromCard,
  }) {
    return getCardData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCardData value)? getCardData,
    TResult? Function(DeleteFromCard value)? removeFromCard,
  }) {
    return getCardData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCardData value)? getCardData,
    TResult Function(DeleteFromCard value)? removeFromCard,
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

/// @nodoc
abstract class _$$DeleteFromCardImplCopyWith<$Res> {
  factory _$$DeleteFromCardImplCopyWith(
    _$DeleteFromCardImpl value,
    $Res Function(_$DeleteFromCardImpl) then,
  ) = __$$DeleteFromCardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$DeleteFromCardImplCopyWithImpl<$Res>
    extends _$CardScreenEventCopyWithImpl<$Res, _$DeleteFromCardImpl>
    implements _$$DeleteFromCardImplCopyWith<$Res> {
  __$$DeleteFromCardImplCopyWithImpl(
    _$DeleteFromCardImpl _value,
    $Res Function(_$DeleteFromCardImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CardScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? index = null}) {
    return _then(
      _$DeleteFromCardImpl(
        index:
            null == index
                ? _value.index
                : index // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$DeleteFromCardImpl implements DeleteFromCard {
  const _$DeleteFromCardImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'CardScreenEvent.removeFromCard(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFromCardImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of CardScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFromCardImplCopyWith<_$DeleteFromCardImpl> get copyWith =>
      __$$DeleteFromCardImplCopyWithImpl<_$DeleteFromCardImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCardData,
    required TResult Function(int index) removeFromCard,
  }) {
    return removeFromCard(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCardData,
    TResult? Function(int index)? removeFromCard,
  }) {
    return removeFromCard?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCardData,
    TResult Function(int index)? removeFromCard,
    required TResult orElse(),
  }) {
    if (removeFromCard != null) {
      return removeFromCard(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCardData value) getCardData,
    required TResult Function(DeleteFromCard value) removeFromCard,
  }) {
    return removeFromCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCardData value)? getCardData,
    TResult? Function(DeleteFromCard value)? removeFromCard,
  }) {
    return removeFromCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCardData value)? getCardData,
    TResult Function(DeleteFromCard value)? removeFromCard,
    required TResult orElse(),
  }) {
    if (removeFromCard != null) {
      return removeFromCard(this);
    }
    return orElse();
  }
}

abstract class DeleteFromCard implements CardScreenEvent {
  const factory DeleteFromCard({required final int index}) =
      _$DeleteFromCardImpl;

  int get index;

  /// Create a copy of CardScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteFromCardImplCopyWith<_$DeleteFromCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
