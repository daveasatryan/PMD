// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_details_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ProductDetailsEvent {
  int get productID => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productID) getProductDetails,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productID)? getProductDetails,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productID)? getProductDetails,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProductDetails value) getProductDetails,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProductDetails value)? getProductDetails,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProductDetails value)? getProductDetails,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of ProductDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDetailsEventCopyWith<ProductDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsEventCopyWith<$Res> {
  factory $ProductDetailsEventCopyWith(
    ProductDetailsEvent value,
    $Res Function(ProductDetailsEvent) then,
  ) = _$ProductDetailsEventCopyWithImpl<$Res, ProductDetailsEvent>;
  @useResult
  $Res call({int productID});
}

/// @nodoc
class _$ProductDetailsEventCopyWithImpl<$Res, $Val extends ProductDetailsEvent>
    implements $ProductDetailsEventCopyWith<$Res> {
  _$ProductDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? productID = null}) {
    return _then(
      _value.copyWith(
            productID:
                null == productID
                    ? _value.productID
                    : productID // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetProductDetailsImplCopyWith<$Res>
    implements $ProductDetailsEventCopyWith<$Res> {
  factory _$$GetProductDetailsImplCopyWith(
    _$GetProductDetailsImpl value,
    $Res Function(_$GetProductDetailsImpl) then,
  ) = __$$GetProductDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int productID});
}

/// @nodoc
class __$$GetProductDetailsImplCopyWithImpl<$Res>
    extends _$ProductDetailsEventCopyWithImpl<$Res, _$GetProductDetailsImpl>
    implements _$$GetProductDetailsImplCopyWith<$Res> {
  __$$GetProductDetailsImplCopyWithImpl(
    _$GetProductDetailsImpl _value,
    $Res Function(_$GetProductDetailsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? productID = null}) {
    return _then(
      _$GetProductDetailsImpl(
        productID:
            null == productID
                ? _value.productID
                : productID // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$GetProductDetailsImpl implements GetProductDetails {
  const _$GetProductDetailsImpl({required this.productID});

  @override
  final int productID;

  @override
  String toString() {
    return 'ProductDetailsEvent.getProductDetails(productID: $productID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductDetailsImpl &&
            (identical(other.productID, productID) ||
                other.productID == productID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productID);

  /// Create a copy of ProductDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductDetailsImplCopyWith<_$GetProductDetailsImpl> get copyWith =>
      __$$GetProductDetailsImplCopyWithImpl<_$GetProductDetailsImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productID) getProductDetails,
  }) {
    return getProductDetails(productID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productID)? getProductDetails,
  }) {
    return getProductDetails?.call(productID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productID)? getProductDetails,
    required TResult orElse(),
  }) {
    if (getProductDetails != null) {
      return getProductDetails(productID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProductDetails value) getProductDetails,
  }) {
    return getProductDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProductDetails value)? getProductDetails,
  }) {
    return getProductDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProductDetails value)? getProductDetails,
    required TResult orElse(),
  }) {
    if (getProductDetails != null) {
      return getProductDetails(this);
    }
    return orElse();
  }
}

abstract class GetProductDetails implements ProductDetailsEvent {
  const factory GetProductDetails({required final int productID}) =
      _$GetProductDetailsImpl;

  @override
  int get productID;

  /// Create a copy of ProductDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetProductDetailsImplCopyWith<_$GetProductDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
