// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoteItem _$NoteItemFromJson(Map<String, dynamic> json) {
  return _NoteItem.fromJson(json);
}

/// @nodoc
mixin _$NoteItem {
  int get id => throw _privateConstructorUsedError;
  String get judul => throw _privateConstructorUsedError;
  String get deskripsi => throw _privateConstructorUsedError;
  @JsonKey(name: "create_at")
  String get createAt => throw _privateConstructorUsedError;
  String get warna => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteItemCopyWith<NoteItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteItemCopyWith<$Res> {
  factory $NoteItemCopyWith(NoteItem value, $Res Function(NoteItem) then) =
      _$NoteItemCopyWithImpl<$Res, NoteItem>;
  @useResult
  $Res call(
      {int id,
      String judul,
      String deskripsi,
      @JsonKey(name: "create_at") String createAt,
      String warna});
}

/// @nodoc
class _$NoteItemCopyWithImpl<$Res, $Val extends NoteItem>
    implements $NoteItemCopyWith<$Res> {
  _$NoteItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? judul = null,
    Object? deskripsi = null,
    Object? createAt = null,
    Object? warna = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      judul: null == judul
          ? _value.judul
          : judul // ignore: cast_nullable_to_non_nullable
              as String,
      deskripsi: null == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as String,
      warna: null == warna
          ? _value.warna
          : warna // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NoteItemCopyWith<$Res> implements $NoteItemCopyWith<$Res> {
  factory _$$_NoteItemCopyWith(
          _$_NoteItem value, $Res Function(_$_NoteItem) then) =
      __$$_NoteItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String judul,
      String deskripsi,
      @JsonKey(name: "create_at") String createAt,
      String warna});
}

/// @nodoc
class __$$_NoteItemCopyWithImpl<$Res>
    extends _$NoteItemCopyWithImpl<$Res, _$_NoteItem>
    implements _$$_NoteItemCopyWith<$Res> {
  __$$_NoteItemCopyWithImpl(
      _$_NoteItem _value, $Res Function(_$_NoteItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? judul = null,
    Object? deskripsi = null,
    Object? createAt = null,
    Object? warna = null,
  }) {
    return _then(_$_NoteItem(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      judul: null == judul
          ? _value.judul
          : judul // ignore: cast_nullable_to_non_nullable
              as String,
      deskripsi: null == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as String,
      warna: null == warna
          ? _value.warna
          : warna // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NoteItem implements _NoteItem {
  _$_NoteItem(
      {required this.id,
      required this.judul,
      required this.deskripsi,
      @JsonKey(name: "create_at") required this.createAt,
      required this.warna});

  factory _$_NoteItem.fromJson(Map<String, dynamic> json) =>
      _$$_NoteItemFromJson(json);

  @override
  final int id;
  @override
  final String judul;
  @override
  final String deskripsi;
  @override
  @JsonKey(name: "create_at")
  final String createAt;
  @override
  final String warna;

  @override
  String toString() {
    return 'NoteItem(id: $id, judul: $judul, deskripsi: $deskripsi, createAt: $createAt, warna: $warna)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoteItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.judul, judul) || other.judul == judul) &&
            (identical(other.deskripsi, deskripsi) ||
                other.deskripsi == deskripsi) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.warna, warna) || other.warna == warna));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, judul, deskripsi, createAt, warna);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoteItemCopyWith<_$_NoteItem> get copyWith =>
      __$$_NoteItemCopyWithImpl<_$_NoteItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoteItemToJson(
      this,
    );
  }
}

abstract class _NoteItem implements NoteItem {
  factory _NoteItem(
      {required final int id,
      required final String judul,
      required final String deskripsi,
      @JsonKey(name: "create_at") required final String createAt,
      required final String warna}) = _$_NoteItem;

  factory _NoteItem.fromJson(Map<String, dynamic> json) = _$_NoteItem.fromJson;

  @override
  int get id;
  @override
  String get judul;
  @override
  String get deskripsi;
  @override
  @JsonKey(name: "create_at")
  String get createAt;
  @override
  String get warna;
  @override
  @JsonKey(ignore: true)
  _$$_NoteItemCopyWith<_$_NoteItem> get copyWith =>
      throw _privateConstructorUsedError;
}
