//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_monitor_data.g.dart';

/// ResponseTimeMonitorData
///
/// Properties:
/// * [class_] 
/// * [timestamp] 
/// * [average] 
@BuiltValue()
abstract class ResponseTimeMonitorData implements Built<ResponseTimeMonitorData, ResponseTimeMonitorDataBuilder> {
  @BuiltValueField(wireName: r'_class')
  String? get class_;

  @BuiltValueField(wireName: r'timestamp')
  int? get timestamp;

  @BuiltValueField(wireName: r'average')
  int? get average;

  ResponseTimeMonitorData._();

  factory ResponseTimeMonitorData([void updates(ResponseTimeMonitorDataBuilder b)]) = _$ResponseTimeMonitorData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResponseTimeMonitorDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResponseTimeMonitorData> get serializer => _$ResponseTimeMonitorDataSerializer();
}

class _$ResponseTimeMonitorDataSerializer implements PrimitiveSerializer<ResponseTimeMonitorData> {
  @override
  final Iterable<Type> types = const [ResponseTimeMonitorData, _$ResponseTimeMonitorData];

  @override
  final String wireName = r'ResponseTimeMonitorData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResponseTimeMonitorData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.class_ != null) {
      yield r'_class';
      yield serializers.serialize(
        object.class_,
        specifiedType: const FullType(String),
      );
    }
    if (object.timestamp != null) {
      yield r'timestamp';
      yield serializers.serialize(
        object.timestamp,
        specifiedType: const FullType(int),
      );
    }
    if (object.average != null) {
      yield r'average';
      yield serializers.serialize(
        object.average,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ResponseTimeMonitorData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ResponseTimeMonitorDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'_class':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.class_ = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.timestamp = valueDes;
          break;
        case r'average':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.average = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ResponseTimeMonitorData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResponseTimeMonitorDataBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

