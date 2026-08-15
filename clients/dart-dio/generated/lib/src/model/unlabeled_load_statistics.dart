//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'unlabeled_load_statistics.g.dart';

/// UnlabeledLoadStatistics
///
/// Properties:
/// * [class_] 
@BuiltValue()
abstract class UnlabeledLoadStatistics implements Built<UnlabeledLoadStatistics, UnlabeledLoadStatisticsBuilder> {
  @BuiltValueField(wireName: r'_class')
  String? get class_;

  UnlabeledLoadStatistics._();

  factory UnlabeledLoadStatistics([void updates(UnlabeledLoadStatisticsBuilder b)]) = _$UnlabeledLoadStatistics;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UnlabeledLoadStatisticsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UnlabeledLoadStatistics> get serializer => _$UnlabeledLoadStatisticsSerializer();
}

class _$UnlabeledLoadStatisticsSerializer implements PrimitiveSerializer<UnlabeledLoadStatistics> {
  @override
  final Iterable<Type> types = const [UnlabeledLoadStatistics, _$UnlabeledLoadStatistics];

  @override
  final String wireName = r'UnlabeledLoadStatistics';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UnlabeledLoadStatistics object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.class_ != null) {
      yield r'_class';
      yield serializers.serialize(
        object.class_,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UnlabeledLoadStatistics object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UnlabeledLoadStatisticsBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UnlabeledLoadStatistics deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnlabeledLoadStatisticsBuilder();
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

