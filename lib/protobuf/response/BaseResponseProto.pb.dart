///
//  Generated code. Do not modify.
//  source: BaseResponseProto.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class DIMResProtocol extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DIMResProtocol', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fromId', protoName: 'fromId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'toId', protoName: 'toId')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseId', protoName: 'responseId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reqMsg', protoName: 'reqMsg')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.O3)
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp')
    ..hasRequiredFields = false
  ;

  DIMResProtocol._() : super();
  factory DIMResProtocol({
    $core.String? fromId,
    $core.String? toId,
    $fixnum.Int64? responseId,
    $core.String? reqMsg,
    $core.int? type,
    $fixnum.Int64? timestamp,
  }) {
    final _result = create();
    if (fromId != null) {
      _result.fromId = fromId;
    }
    if (toId != null) {
      _result.toId = toId;
    }
    if (responseId != null) {
      _result.responseId = responseId;
    }
    if (reqMsg != null) {
      _result.reqMsg = reqMsg;
    }
    if (type != null) {
      _result.type = type;
    }
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    return _result;
  }
  factory DIMResProtocol.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DIMResProtocol.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DIMResProtocol clone() => DIMResProtocol()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  // DIMResProtocol copyWith(void Function(DIMResProtocol) updates) => super.copyWith((message) => updates(message as DIMResProtocol)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DIMResProtocol create() => DIMResProtocol._();
  DIMResProtocol createEmptyInstance() => create();
  static $pb.PbList<DIMResProtocol> createRepeated() => $pb.PbList<DIMResProtocol>();
  @$core.pragma('dart2js:noInline')
  static DIMResProtocol getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DIMResProtocol>(create);
  static DIMResProtocol? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fromId => $_getSZ(0);
  @$pb.TagNumber(1)
  set fromId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFromId() => $_has(0);
  @$pb.TagNumber(1)
  void clearFromId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get toId => $_getSZ(1);
  @$pb.TagNumber(2)
  set toId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToId() => $_has(1);
  @$pb.TagNumber(2)
  void clearToId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get responseId => $_getI64(2);
  @$pb.TagNumber(3)
  set responseId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasResponseId() => $_has(2);
  @$pb.TagNumber(3)
  void clearResponseId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get reqMsg => $_getSZ(3);
  @$pb.TagNumber(4)
  set reqMsg($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasReqMsg() => $_has(3);
  @$pb.TagNumber(4)
  void clearReqMsg() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get type => $_getIZ(4);
  @$pb.TagNumber(5)
  set type($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasType() => $_has(4);
  @$pb.TagNumber(5)
  void clearType() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get timestamp => $_getI64(5);
  @$pb.TagNumber(6)
  set timestamp($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTimestamp() => $_has(5);
  @$pb.TagNumber(6)
  void clearTimestamp() => clearField(6);
}

