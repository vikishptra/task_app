// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_note_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateNoteRequest _$CreateNoteRequestFromJson(Map<String, dynamic> json) {
  return _CreateNoteRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateNoteRequest {
  String get judul => throw _privateConstructorUsedError;
  String get deskripsi => throw _privateConstructorUsedError;
  String get warna => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateNoteRequestCopyWith<CreateNoteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateNoteRequestCopyWith<$Res> {
  factory $CreateNoteRequestCopyWith(
          CreateNoteRequest value, $Res Function(CreateNoteRequest) then) =
      _$CreateNoteRequestCopyWithImpl<$Res, CreateNoteRequest>;
  @useResult
  $Res call({String judul, String deskripsi, String warna});
}

/// @nodoc
class _$CreateNoteRequestCopyWithImpl<$Res, $Val extends CreateNoteRequest>
    implements $CreateNoteRequestCopyWith<$Res> {
  _$CreateNoteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? judul = null,
    Object? deskripsi = null,
    Object? warna = null,
  }) {
    return _then(_value.copyWith(
      judul: null == judul
          ? _value.judul
          : judul // ignore: cast_nullable_to_non_nullable
              as String,
      deskripsi: null == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String,
      warna: null == warna
          ? _value.warna
          : warna // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateNoteRequestCopyWith<$Res>
    implements $CreateNoteRequestCopyWith<$Res> {
  factory _$$_CreateNoteRequestCopyWith(_$_CreateNoteRequest value,
          $Res Function(_$_CreateNoteRequest) then) =
      __$$_CreateNoteRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String judul, String deskripsi, String warna});
}

/// @nodoc
class __$$_CreateNoteRequestCopyWithImpl<$Res>
    extends _$CreateNoteRequestCopyWithImpl<$Res, _$_CreateNoteRequest>
    implements _$$_CreateNoteRequestCopyWith<$Res> {
  __$$_CreateNoteRequestCopyWithImpl(
      _$_CreateNoteRequest _value, $Res Function(_$_CreateNoteRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? judul = null,
    Object? deskripsi = null,
    Object? warna = null,
  }) {
    return _then(_$_CreateNoteRequest(
      judul: null == judul
          ? _value.judul
          : judul // ignore: cast_nullable_to_non_nullable
              as String,
      deskripsi: null == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
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
class _$_CreateNoteRequest implements _CreateNoteRequest {
  _$_CreateNoteRequest(
      {required this.judul, required this.deskripsi, required this.warna});

  factory _$_CreateNoteRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CreateNoteRequestFromJson(json);

  @override
  final String judul;
  @override
  final String deskripsi;
  @override
  final String warna;

  @override
  String toString() {
    return 'CreateNoteRequest(judul: $judul, deskripsi: $deskripsi, warna: $warna)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateNoteRequest &&
            (identical(other.judul, judul) || other.judul == judul) &&
            (identical(other.deskripsi, deskripsi) ||
                other.deskripsi == deskripsi) &&
            (identical(other.warna, warna) || other.warna == warna));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, judul, deskripsi, warna);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateNoteRequestCopyWith<_$_CreateNoteRequest> get copyWith =>
      __$$_CreateNoteRequestCopyWithImpl<_$_CreateNoteRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateNoteRequestToJson(
      this,
    );
  }
}

abstract class _CreateNoteRequest implements CreateNoteRequest {
  factory _CreateNoteRequest(
      {required final String judul,
      required final String deskripsi,
      required final String warna}) = _$_CreateNoteRequest;

  factory _CreateNoteRequest.fromJson(Map<String, dynamic> json) =
      _$_CreateNoteRequest.fromJson;

  @override
  String get judul;
  @override
  String get deskripsi;
  @override
  String get warna;
  @override
  @JsonKey(ignore: true)
  _$$_CreateNoteRequestCopyWith<_$_CreateNoteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
