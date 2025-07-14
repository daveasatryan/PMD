// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_list_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ProductListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProductList,
    required TResult Function(ProductModel product) addToCard,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProductList,
    TResult? Function(ProductModel product)? addToCard,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProductList,
    TResult Function(ProductModel product)? addToCard,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProductList value) getProductList,
    required TResult Function(AddToCard value) addToCard,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProductList value)? getProductList,
    TResult? Function(AddToCard value)? addToCard,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProductList value)? getProductList,
    TResult Function(AddToCard value)? addToCard,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListEventCopyWith<$Res> {
  factory $ProductListEventCopyWith(
    ProductListEvent value,
    $Res Function(ProductListEvent) then,
  ) = _$ProductListEventCopyWithImpl<$Res, ProductListEvent>;
}

/// @nodoc
class _$ProductListEventCopyWithImpl<$Res, $Val extends ProductListEvent>
    implements $ProductListEventCopyWith<$Res> {
  _$ProductListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetProductListImplCopyWith<$Res> {
  factory _$$GetProductListImplCopyWith(
    _$GetProductListImpl value,
    $Res Function(_$GetProductListImpl) then,
  ) = __$$GetProductListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProductListImplCopyWithImpl<$Res>
    extends _$ProductListEventCopyWithImpl<$Res, _$GetProductListImpl>
    implements _$$GetProductListImplCopyWith<$Res> {
  __$$GetProductListImplCopyWithImpl(
    _$GetProductListImpl _value,
    $Res Function(_$GetProductListImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetProductListImpl implements GetProductList {
  const _$GetProductListImpl();

  @override
  String toString() {
    return 'ProductListEvent.getProductList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetProductListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProductList,
    required TResult Function(ProductModel product) addToCard,
  }) {
    return getProductList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProductList,
    TResult? Function(ProductModel product)? addToCard,
  }) {
    return getProductList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProductList,
    TResult Function(ProductModel product)? addToCard,
    required TResult orElse(),
  }) {
    if (getProductList != null) {
      return getProductList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProductList value) getProductList,
    required TResult Function(AddToCard value) addToCard,
  }) {
    return getProductList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProductList value)? getProductList,
    TResult? Function(AddToCard value)? addToCard,
  }) {
    return getProductList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProductList value)? getProductList,
    TResult Function(AddToCard value)? addToCard,
    required TResult orElse(),
  }) {
    if (getProductList != null) {
      return getProductList(this);
    }
    return orElse();
  }
}

abstract class GetProductList implements ProductListEvent {
  const factory GetProductList() = _$GetProductListImpl;
}

/// @nodoc
abstract class _$$AddToCardImplCopyWith<$Res> {
  factory _$$AddToCardImplCopyWith(
    _$AddToCardImpl value,
    $Res Function(_$AddToCardImpl) then,
  ) = __$$AddToCardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductModel product});

  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$AddToCardImplCopyWithImpl<$Res>
    extends _$ProductListEventCopyWithImpl<$Res, _$AddToCardImpl>
    implements _$$AddToCardImplCopyWith<$Res> {
  __$$AddToCardImplCopyWithImpl(
    _$AddToCardImpl _value,
    $Res Function(_$AddToCardImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? product = null}) {
    return _then(
      _$AddToCardImpl(
        product:
            null == product
                ? _value.product
                : product // ignore: cast_nullable_to_non_nullable
                    as ProductModel,
      ),
    );
  }

  /// Create a copy of ProductListEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res> get product {
    return $ProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$AddToCardImpl implements AddToCard {
  const _$AddToCardImpl({required this.product});

  @override
  final ProductModel product;

  @override
  String toString() {
    return 'ProductListEvent.addToCard(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCardImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of ProductListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCardImplCopyWith<_$AddToCardImpl> get copyWith =>
      __$$AddToCardImplCopyWithImpl<_$AddToCardImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProductList,
    required TResult Function(ProductModel product) addToCard,
  }) {
    return addToCard(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProductList,
    TResult? Function(ProductModel product)? addToCard,
  }) {
    return addToCard?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProductList,
    TResult Function(ProductModel product)? addToCard,
    required TResult orElse(),
  }) {
    if (addToCard != null) {
      return addToCard(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProductList value) getProductList,
    required TResult Function(AddToCard value) addToCard,
  }) {
    return addToCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProductList value)? getProductList,
    TResult? Function(AddToCard value)? addToCard,
  }) {
    return addToCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProductList value)? getProductList,
    TResult Function(AddToCard value)? addToCard,
    required TResult orElse(),
  }) {
    if (addToCard != null) {
      return addToCard(this);
    }
    return orElse();
  }
}

abstract class AddToCard implements ProductListEvent {
  const factory AddToCard({required final ProductModel product}) =
      _$AddToCardImpl;

  ProductModel get product;

  /// Create a copy of ProductListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddToCardImplCopyWith<_$AddToCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
