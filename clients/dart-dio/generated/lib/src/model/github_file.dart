//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/github_content.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'github_file.g.dart';

/// GithubFile
///
/// Properties:
/// * [content] 
/// * [class_] 
@BuiltValue()
abstract class GithubFile implements Built<GithubFile, GithubFileBuilder> {
  @BuiltValueField(wireName: r'content')
  GithubContent? get content;

  @BuiltValueField(wireName: r'_class')
  String? get class_;

  GithubFile._();

  factory GithubFile([void updates(GithubFileBuilder b)]) = _$GithubFile;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GithubFileBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GithubFile> get serializer => _$GithubFileSerializer();
}

class _$GithubFileSerializer implements PrimitiveSerializer<GithubFile> {
  @override
  final Iterable<Type> types = const [GithubFile, _$GithubFile];

  @override
  final String wireName = r'GithubFile';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GithubFile object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.content != null) {
      yield r'content';
      yield serializers.serialize(
        object.content,
        specifiedType: const FullType(GithubContent),
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
    GithubFile object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GithubFileBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'content':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GithubContent),
          ) as GithubContent;
          result.content.replace(valueDes);
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
  GithubFile deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GithubFileBuilder();
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

