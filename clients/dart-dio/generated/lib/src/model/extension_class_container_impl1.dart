//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/extension_class_container_impl1map.dart';
import 'package:openapi/src/model/extension_class_container_impl1links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'extension_class_container_impl1.g.dart';

/// ExtensionClassContainerImpl1
///
/// Properties:
/// * [class_] 
/// * [links] 
/// * [map] 
@BuiltValue()
abstract class ExtensionClassContainerImpl1 implements Built<ExtensionClassContainerImpl1, ExtensionClassContainerImpl1Builder> {
  @BuiltValueField(wireName: r'_class')
  String? get class_;

  @BuiltValueField(wireName: r'_links')
  ExtensionClassContainerImpl1links? get links;

  @BuiltValueField(wireName: r'map')
  ExtensionClassContainerImpl1map? get map;

  ExtensionClassContainerImpl1._();

  factory ExtensionClassContainerImpl1([void updates(ExtensionClassContainerImpl1Builder b)]) = _$ExtensionClassContainerImpl1;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExtensionClassContainerImpl1Builder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExtensionClassContainerImpl1> get serializer => _$ExtensionClassContainerImpl1Serializer();
}

class _$ExtensionClassContainerImpl1Serializer implements PrimitiveSerializer<ExtensionClassContainerImpl1> {
  @override
  final Iterable<Type> types = const [ExtensionClassContainerImpl1, _$ExtensionClassContainerImpl1];

  @override
  final String wireName = r'ExtensionClassContainerImpl1';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExtensionClassContainerImpl1 object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.class_ != null) {
      yield r'_class';
      yield serializers.serialize(
        object.class_,
        specifiedType: const FullType(String),
      );
    }
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(ExtensionClassContainerImpl1links),
      );
    }
    if (object.map != null) {
      yield r'map';
      yield serializers.serialize(
        object.map,
        specifiedType: const FullType(ExtensionClassContainerImpl1map),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExtensionClassContainerImpl1 object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExtensionClassContainerImpl1Builder result,
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
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ExtensionClassContainerImpl1links),
          ) as ExtensionClassContainerImpl1links;
          result.links.replace(valueDes);
          break;
        case r'map':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ExtensionClassContainerImpl1map),
          ) as ExtensionClassContainerImpl1map;
          result.map.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExtensionClassContainerImpl1 deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExtensionClassContainerImpl1Builder();
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

