//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/pipeline_impl.dart';
import 'package:openapi/src/model/favorite_impllinks.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'favorite_impl.g.dart';

/// FavoriteImpl
///
/// Properties:
/// * [class_] 
/// * [links] 
/// * [item] 
@BuiltValue()
abstract class FavoriteImpl implements Built<FavoriteImpl, FavoriteImplBuilder> {
  @BuiltValueField(wireName: r'_class')
  String? get class_;

  @BuiltValueField(wireName: r'_links')
  FavoriteImpllinks? get links;

  @BuiltValueField(wireName: r'item')
  PipelineImpl? get item;

  FavoriteImpl._();

  factory FavoriteImpl([void updates(FavoriteImplBuilder b)]) = _$FavoriteImpl;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FavoriteImplBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FavoriteImpl> get serializer => _$FavoriteImplSerializer();
}

class _$FavoriteImplSerializer implements PrimitiveSerializer<FavoriteImpl> {
  @override
  final Iterable<Type> types = const [FavoriteImpl, _$FavoriteImpl];

  @override
  final String wireName = r'FavoriteImpl';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FavoriteImpl object, {
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
        specifiedType: const FullType(FavoriteImpllinks),
      );
    }
    if (object.item != null) {
      yield r'item';
      yield serializers.serialize(
        object.item,
        specifiedType: const FullType(PipelineImpl),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FavoriteImpl object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FavoriteImplBuilder result,
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
            specifiedType: const FullType(FavoriteImpllinks),
          ) as FavoriteImpllinks;
          result.links.replace(valueDes);
          break;
        case r'item':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PipelineImpl),
          ) as PipelineImpl;
          result.item.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FavoriteImpl deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FavoriteImplBuilder();
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

