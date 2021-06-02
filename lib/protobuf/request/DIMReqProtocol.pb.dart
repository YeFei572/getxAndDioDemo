///
//  Generated code. Do not modify.
//  source: DIMReqProtocol.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class DIMReqProtocol extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DIMReqProtocol', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fromId', protoName: 'fromId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'toId', protoName: 'toId')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', protoName: 'requestId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reqMsg', protoName: 'reqMsg')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.O3)
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'groupId', protoName: 'groupId')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'groupAt', protoName: 'groupAt')
    ..hasRequiredFields = false
  ;

  DIMReqProtocol._() : super();
  factory DIMReqProtocol({
    $core.String fromId,
    $core.String toId,
    $fixnum.Int64 requestId,
    $core.String reqMsg,
    $core.int type,
    $fixnum.Int64 timestamp,
    $core.String groupId,
    $core.String groupAt,
  }) {
    final _result = create();
    if (fromId != null) {
      _result.fromId = fromId;
    }
    if (toId != null) {
      _result.toId = toId;
    }
    if (requestId != null) {
      _result.requestId = requestId;
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
    if (groupId != null) {
      _result.groupId = groupId;
    }
    if (groupAt != null) {
      _result.groupAt = groupAt;
    }
    return _result;
  }
  factory DIMReqProtocol.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DIMReqProtocol.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DIMReqProtocol clone() => DIMReqProtocol()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DIMReqProtocol copyWith(void Function(DIMReqProtocol) updates) => super.copyWith((message) => updates(message as DIMReqProtocol)) as DIMReqProtocol; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DIMReqProtocol create() => DIMReqProtocol._();
  DIMReqProtocol createEmptyInstance() => create();
  static $pb.PbList<DIMReqProtocol> createRepeated() => $pb.PbList<DIMReqProtocol>();
  @$core.pragma('dart2js:noInline')
  static DIMReqProtocol getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DIMReqProtocol>(create);
  static DIMReqProtocol _defaultInstance;

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
  $fixnum.Int64 get requestId => $_getI64(2);
  @$pb.TagNumber(3)
  set requestId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRequestId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRequestId() => clearField(3);

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

  @$pb.TagNumber(7)
  $core.String get groupId => $_getSZ(6);
  @$pb.TagNumber(7)
  set groupId($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasGroupId() => $_has(6);
  @$pb.TagNumber(7)
  void clearGroupId() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get groupAt => $_getSZ(7);
  @$pb.TagNumber(8)
  set groupAt($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasGroupAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearGroupAt() => clearField(8);
}

