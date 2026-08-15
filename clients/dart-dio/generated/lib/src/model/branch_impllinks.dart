//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'branch_impllinks.g.dart';

/// BranchImpllinks
///
/// Properties:
/// * [self] 
/// * [actions] 
/// * [runs] 
/// * [queue] 
/// * [class_] 
@BuiltValue()
abstract class BranchImpllinks implements Built<BranchImpllinks, BranchImpllinksBuilder> {
  @BuiltValueField(wireName: r'self')
  Link? get self;

  @BuiltValueField(wireName: r'actions')
  Link? get actions;

  @BuiltValueField(wireName: r'runs')
  Link? get runs;

  @BuiltValueField(wireName: r'queue')
  Link? get queue;

  @BuiltValueField(wireName: r'_class')
  String? get class_;

  BranchImpllinks._();

  factory BranchImpllinks([void updates(BranchImpllinksBuilder b)]) = _$BranchImpllinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BranchImpllinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BranchImpllinks> get serializer => _$BranchImpllinksSerializer();
}

class _$BranchImpllinksSerializer implements PrimitiveSerializer<BranchImpllinks> {
  @override
  final Iterable<Type> types = const [BranchImpllinks, _$BranchImpllinks];

  @override
  final String wireName = r'BranchImpllinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BranchImpllinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(Link),
      );
    }
    if (object.actions != null) {
      yield r'actions';
      yield serializers.serialize(
        object.actions,
        specifiedType: const FullType(Link),
      );
    }
    if (object.runs != null) {
      yield r'runs';
      yield serializers.serialize(
        object.runs,
        specifiedType: const FullType(Link),
      );
    }
    if (object.queue != null) {
      yield r'queue';
      yield serializers.serialize(
        object.queue,
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
    BranchImpllinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BranchImpllinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Link),
          ) as Link;
          result.self.replace(valueDes);
          break;
        case r'actions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Link),
          ) as Link;
          result.actions.replace(valueDes);
          break;
        case r'runs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Link),
          ) as Link;
          result.runs.replace(valueDes);
          break;
        case r'queue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Link),
          ) as Link;
          result.queue.replace(valueDes);
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
  BranchImpllinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BranchImpllinksBuilder();
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

