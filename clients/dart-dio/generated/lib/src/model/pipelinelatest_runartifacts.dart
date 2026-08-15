//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pipelinelatest_runartifacts.g.dart';

/// PipelinelatestRunartifacts
///
/// Properties:
/// * [name] 
/// * [size] 
/// * [url] 
/// * [class_] 
@BuiltValue()
abstract class PipelinelatestRunartifacts implements Built<PipelinelatestRunartifacts, PipelinelatestRunartifactsBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'size')
  int? get size;

  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'_class')
  String? get class_;

  PipelinelatestRunartifacts._();

  factory PipelinelatestRunartifacts([void updates(PipelinelatestRunartifactsBuilder b)]) = _$PipelinelatestRunartifacts;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PipelinelatestRunartifactsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PipelinelatestRunartifacts> get serializer => _$PipelinelatestRunartifactsSerializer();
}

class _$PipelinelatestRunartifactsSerializer implements PrimitiveSerializer<PipelinelatestRunartifacts> {
  @override
  final Iterable<Type> types = const [PipelinelatestRunartifacts, _$PipelinelatestRunartifacts];

  @override
  final String wireName = r'PipelinelatestRunartifacts';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PipelinelatestRunartifacts object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.size != null) {
      yield r'size';
      yield serializers.serialize(
        object.size,
        specifiedType: const FullType(int),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
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
    PipelinelatestRunartifacts object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PipelinelatestRunartifactsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.size = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
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
  PipelinelatestRunartifacts deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PipelinelatestRunartifactsBuilder();
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

