//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'free_style_projecthealth_report.g.dart';

/// FreeStyleProjecthealthReport
///
/// Properties:
/// * [description] 
/// * [iconClassName] 
/// * [iconUrl] 
/// * [score] 
/// * [class_] 
@BuiltValue()
abstract class FreeStyleProjecthealthReport implements Built<FreeStyleProjecthealthReport, FreeStyleProjecthealthReportBuilder> {
  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'iconClassName')
  String? get iconClassName;

  @BuiltValueField(wireName: r'iconUrl')
  String? get iconUrl;

  @BuiltValueField(wireName: r'score')
  int? get score;

  @BuiltValueField(wireName: r'_class')
  String? get class_;

  FreeStyleProjecthealthReport._();

  factory FreeStyleProjecthealthReport([void updates(FreeStyleProjecthealthReportBuilder b)]) = _$FreeStyleProjecthealthReport;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FreeStyleProjecthealthReportBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FreeStyleProjecthealthReport> get serializer => _$FreeStyleProjecthealthReportSerializer();
}

class _$FreeStyleProjecthealthReportSerializer implements PrimitiveSerializer<FreeStyleProjecthealthReport> {
  @override
  final Iterable<Type> types = const [FreeStyleProjecthealthReport, _$FreeStyleProjecthealthReport];

  @override
  final String wireName = r'FreeStyleProjecthealthReport';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FreeStyleProjecthealthReport object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.iconClassName != null) {
      yield r'iconClassName';
      yield serializers.serialize(
        object.iconClassName,
        specifiedType: const FullType(String),
      );
    }
    if (object.iconUrl != null) {
      yield r'iconUrl';
      yield serializers.serialize(
        object.iconUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.score != null) {
      yield r'score';
      yield serializers.serialize(
        object.score,
        specifiedType: const FullType(int),
      );
    }
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
    FreeStyleProjecthealthReport object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FreeStyleProjecthealthReportBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'iconClassName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.iconClassName = valueDes;
          break;
        case r'iconUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.iconUrl = valueDes;
          break;
        case r'score':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.score = valueDes;
          break;
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
  FreeStyleProjecthealthReport deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FreeStyleProjecthealthReportBuilder();
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

