//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/pipeline_branchesitempull_requestlinks.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pipeline_branchesitempull_request.g.dart';

/// PipelineBranchesitempullRequest
///
/// Properties:
/// * [links] 
/// * [author] 
/// * [id] 
/// * [title] 
/// * [url] 
/// * [class_] 
@BuiltValue()
abstract class PipelineBranchesitempullRequest implements Built<PipelineBranchesitempullRequest, PipelineBranchesitempullRequestBuilder> {
  @BuiltValueField(wireName: r'_links')
  PipelineBranchesitempullRequestlinks? get links;

  @BuiltValueField(wireName: r'author')
  String? get author;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'_class')
  String? get class_;

  PipelineBranchesitempullRequest._();

  factory PipelineBranchesitempullRequest([void updates(PipelineBranchesitempullRequestBuilder b)]) = _$PipelineBranchesitempullRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PipelineBranchesitempullRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PipelineBranchesitempullRequest> get serializer => _$PipelineBranchesitempullRequestSerializer();
}

class _$PipelineBranchesitempullRequestSerializer implements PrimitiveSerializer<PipelineBranchesitempullRequest> {
  @override
  final Iterable<Type> types = const [PipelineBranchesitempullRequest, _$PipelineBranchesitempullRequest];

  @override
  final String wireName = r'PipelineBranchesitempullRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PipelineBranchesitempullRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(PipelineBranchesitempullRequestlinks),
      );
    }
    if (object.author != null) {
      yield r'author';
      yield serializers.serialize(
        object.author,
        specifiedType: const FullType(String),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
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
    PipelineBranchesitempullRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PipelineBranchesitempullRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PipelineBranchesitempullRequestlinks),
          ) as PipelineBranchesitempullRequestlinks;
          result.links.replace(valueDes);
          break;
        case r'author':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.author = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
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
  PipelineBranchesitempullRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PipelineBranchesitempullRequestBuilder();
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

