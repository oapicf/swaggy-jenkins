//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'extension_class_container_impl1links.g.dart';

/// ExtensionClassContainerImpl1links
///
/// Properties:
/// * [self] 
/// * [class_] 
@BuiltValue()
abstract class ExtensionClassContainerImpl1links implements Built<ExtensionClassContainerImpl1links, ExtensionClassContainerImpl1linksBuilder> {
  @BuiltValueField(wireName: r'self')
  Link? get self;

  @BuiltValueField(wireName: r'_class')
  String? get class_;

  ExtensionClassContainerImpl1links._();

  factory ExtensionClassContainerImpl1links([void updates(ExtensionClassContainerImpl1linksBuilder b)]) = _$ExtensionClassContainerImpl1links;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExtensionClassContainerImpl1linksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExtensionClassContainerImpl1links> get serializer => _$ExtensionClassContainerImpl1linksSerializer();
}

class _$ExtensionClassContainerImpl1linksSerializer implements PrimitiveSerializer<ExtensionClassContainerImpl1links> {
  @override
  final Iterable<Type> types = const [ExtensionClassContainerImpl1links, _$ExtensionClassContainerImpl1links];

  @override
  final String wireName = r'ExtensionClassContainerImpl1links';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExtensionClassContainerImpl1links object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(Link),
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
    ExtensionClassContainerImpl1links object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExtensionClassContainerImpl1linksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Link),
          ) as Link?;
          if (valueDes == null) continue;
          result.self.replace(valueDes);
          break;
        case r'_class':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
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
  ExtensionClassContainerImpl1links deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExtensionClassContainerImpl1linksBuilder();
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

