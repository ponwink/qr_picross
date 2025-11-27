// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_picross_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$QrPicrossInfo {

 String get data;// 文字列
 BitMatrix? get bitMatrix;// QRコードのセル情報
 BitMatrix? get answerBitMatrix;// 解答のセル情報
 bool get isCompleted;
/// Create a copy of QrPicrossInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QrPicrossInfoCopyWith<QrPicrossInfo> get copyWith => _$QrPicrossInfoCopyWithImpl<QrPicrossInfo>(this as QrPicrossInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QrPicrossInfo&&(identical(other.data, data) || other.data == data)&&(identical(other.bitMatrix, bitMatrix) || other.bitMatrix == bitMatrix)&&(identical(other.answerBitMatrix, answerBitMatrix) || other.answerBitMatrix == answerBitMatrix)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted));
}


@override
int get hashCode => Object.hash(runtimeType,data,bitMatrix,answerBitMatrix,isCompleted);

@override
String toString() {
  return 'QrPicrossInfo(data: $data, bitMatrix: $bitMatrix, answerBitMatrix: $answerBitMatrix, isCompleted: $isCompleted)';
}


}

/// @nodoc
abstract mixin class $QrPicrossInfoCopyWith<$Res>  {
  factory $QrPicrossInfoCopyWith(QrPicrossInfo value, $Res Function(QrPicrossInfo) _then) = _$QrPicrossInfoCopyWithImpl;
@useResult
$Res call({
 String data, BitMatrix? bitMatrix, BitMatrix? answerBitMatrix, bool isCompleted
});




}
/// @nodoc
class _$QrPicrossInfoCopyWithImpl<$Res>
    implements $QrPicrossInfoCopyWith<$Res> {
  _$QrPicrossInfoCopyWithImpl(this._self, this._then);

  final QrPicrossInfo _self;
  final $Res Function(QrPicrossInfo) _then;

/// Create a copy of QrPicrossInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? bitMatrix = freezed,Object? answerBitMatrix = freezed,Object? isCompleted = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String,bitMatrix: freezed == bitMatrix ? _self.bitMatrix : bitMatrix // ignore: cast_nullable_to_non_nullable
as BitMatrix?,answerBitMatrix: freezed == answerBitMatrix ? _self.answerBitMatrix : answerBitMatrix // ignore: cast_nullable_to_non_nullable
as BitMatrix?,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [QrPicrossInfo].
extension QrPicrossInfoPatterns on QrPicrossInfo {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QrPicrossInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QrPicrossInfo() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QrPicrossInfo value)  $default,){
final _that = this;
switch (_that) {
case _QrPicrossInfo():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QrPicrossInfo value)?  $default,){
final _that = this;
switch (_that) {
case _QrPicrossInfo() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String data,  BitMatrix? bitMatrix,  BitMatrix? answerBitMatrix,  bool isCompleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QrPicrossInfo() when $default != null:
return $default(_that.data,_that.bitMatrix,_that.answerBitMatrix,_that.isCompleted);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String data,  BitMatrix? bitMatrix,  BitMatrix? answerBitMatrix,  bool isCompleted)  $default,) {final _that = this;
switch (_that) {
case _QrPicrossInfo():
return $default(_that.data,_that.bitMatrix,_that.answerBitMatrix,_that.isCompleted);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String data,  BitMatrix? bitMatrix,  BitMatrix? answerBitMatrix,  bool isCompleted)?  $default,) {final _that = this;
switch (_that) {
case _QrPicrossInfo() when $default != null:
return $default(_that.data,_that.bitMatrix,_that.answerBitMatrix,_that.isCompleted);case _:
  return null;

}
}

}

/// @nodoc


class _QrPicrossInfo extends QrPicrossInfo {
  const _QrPicrossInfo({required this.data, this.bitMatrix, this.answerBitMatrix, this.isCompleted = false}): super._();
  

@override final  String data;
// 文字列
@override final  BitMatrix? bitMatrix;
// QRコードのセル情報
@override final  BitMatrix? answerBitMatrix;
// 解答のセル情報
@override@JsonKey() final  bool isCompleted;

/// Create a copy of QrPicrossInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QrPicrossInfoCopyWith<_QrPicrossInfo> get copyWith => __$QrPicrossInfoCopyWithImpl<_QrPicrossInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QrPicrossInfo&&(identical(other.data, data) || other.data == data)&&(identical(other.bitMatrix, bitMatrix) || other.bitMatrix == bitMatrix)&&(identical(other.answerBitMatrix, answerBitMatrix) || other.answerBitMatrix == answerBitMatrix)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted));
}


@override
int get hashCode => Object.hash(runtimeType,data,bitMatrix,answerBitMatrix,isCompleted);

@override
String toString() {
  return 'QrPicrossInfo(data: $data, bitMatrix: $bitMatrix, answerBitMatrix: $answerBitMatrix, isCompleted: $isCompleted)';
}


}

/// @nodoc
abstract mixin class _$QrPicrossInfoCopyWith<$Res> implements $QrPicrossInfoCopyWith<$Res> {
  factory _$QrPicrossInfoCopyWith(_QrPicrossInfo value, $Res Function(_QrPicrossInfo) _then) = __$QrPicrossInfoCopyWithImpl;
@override @useResult
$Res call({
 String data, BitMatrix? bitMatrix, BitMatrix? answerBitMatrix, bool isCompleted
});




}
/// @nodoc
class __$QrPicrossInfoCopyWithImpl<$Res>
    implements _$QrPicrossInfoCopyWith<$Res> {
  __$QrPicrossInfoCopyWithImpl(this._self, this._then);

  final _QrPicrossInfo _self;
  final $Res Function(_QrPicrossInfo) _then;

/// Create a copy of QrPicrossInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? bitMatrix = freezed,Object? answerBitMatrix = freezed,Object? isCompleted = null,}) {
  return _then(_QrPicrossInfo(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String,bitMatrix: freezed == bitMatrix ? _self.bitMatrix : bitMatrix // ignore: cast_nullable_to_non_nullable
as BitMatrix?,answerBitMatrix: freezed == answerBitMatrix ? _self.answerBitMatrix : answerBitMatrix // ignore: cast_nullable_to_non_nullable
as BitMatrix?,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
