// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_task_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemoteTask {

 int get userId; int get id; String get title; bool get completed;
/// Create a copy of RemoteTask
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoteTaskCopyWith<RemoteTask> get copyWith => _$RemoteTaskCopyWithImpl<RemoteTask>(this as RemoteTask, _$identity);

  /// Serializes this RemoteTask to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoteTask&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.completed, completed) || other.completed == completed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,id,title,completed);

@override
String toString() {
  return 'RemoteTask(userId: $userId, id: $id, title: $title, completed: $completed)';
}


}

/// @nodoc
abstract mixin class $RemoteTaskCopyWith<$Res>  {
  factory $RemoteTaskCopyWith(RemoteTask value, $Res Function(RemoteTask) _then) = _$RemoteTaskCopyWithImpl;
@useResult
$Res call({
 int userId, int id, String title, bool completed
});




}
/// @nodoc
class _$RemoteTaskCopyWithImpl<$Res>
    implements $RemoteTaskCopyWith<$Res> {
  _$RemoteTaskCopyWithImpl(this._self, this._then);

  final RemoteTask _self;
  final $Res Function(RemoteTask) _then;

/// Create a copy of RemoteTask
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? id = null,Object? title = null,Object? completed = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [RemoteTask].
extension RemoteTaskPatterns on RemoteTask {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RemoteTask value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RemoteTask() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RemoteTask value)  $default,){
final _that = this;
switch (_that) {
case _RemoteTask():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RemoteTask value)?  $default,){
final _that = this;
switch (_that) {
case _RemoteTask() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int userId,  int id,  String title,  bool completed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RemoteTask() when $default != null:
return $default(_that.userId,_that.id,_that.title,_that.completed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int userId,  int id,  String title,  bool completed)  $default,) {final _that = this;
switch (_that) {
case _RemoteTask():
return $default(_that.userId,_that.id,_that.title,_that.completed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int userId,  int id,  String title,  bool completed)?  $default,) {final _that = this;
switch (_that) {
case _RemoteTask() when $default != null:
return $default(_that.userId,_that.id,_that.title,_that.completed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RemoteTask implements RemoteTask {
  const _RemoteTask({required this.userId, required this.id, required this.title, required this.completed});
  factory _RemoteTask.fromJson(Map<String, dynamic> json) => _$RemoteTaskFromJson(json);

@override final  int userId;
@override final  int id;
@override final  String title;
@override final  bool completed;

/// Create a copy of RemoteTask
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoteTaskCopyWith<_RemoteTask> get copyWith => __$RemoteTaskCopyWithImpl<_RemoteTask>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RemoteTaskToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoteTask&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.completed, completed) || other.completed == completed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,id,title,completed);

@override
String toString() {
  return 'RemoteTask(userId: $userId, id: $id, title: $title, completed: $completed)';
}


}

/// @nodoc
abstract mixin class _$RemoteTaskCopyWith<$Res> implements $RemoteTaskCopyWith<$Res> {
  factory _$RemoteTaskCopyWith(_RemoteTask value, $Res Function(_RemoteTask) _then) = __$RemoteTaskCopyWithImpl;
@override @useResult
$Res call({
 int userId, int id, String title, bool completed
});




}
/// @nodoc
class __$RemoteTaskCopyWithImpl<$Res>
    implements _$RemoteTaskCopyWith<$Res> {
  __$RemoteTaskCopyWithImpl(this._self, this._then);

  final _RemoteTask _self;
  final $Res Function(_RemoteTask) _then;

/// Create a copy of RemoteTask
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? id = null,Object? title = null,Object? completed = null,}) {
  return _then(_RemoteTask(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
