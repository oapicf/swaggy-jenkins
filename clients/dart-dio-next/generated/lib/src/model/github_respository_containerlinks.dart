//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'github_respository_containerlinks.g.dart';

/// GithubRespositoryContainerlinks
///
/// Properties:
/// * [self] 
/// * [class_] 
abstract class GithubRespositoryContainerlinks implements Built<GithubRespositoryContainerlinks, GithubRespositoryContainerlinksBuilder> {
    @BuiltValueField(wireName: r'self')
    Link? get self;

    @BuiltValueField(wireName: r'_class')
    String? get class_;

    GithubRespositoryContainerlinks._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(GithubRespositoryContainerlinksBuilder b) => b;

    factory GithubRespositoryContainerlinks([void updates(GithubRespositoryContainerlinksBuilder b)]) = _$GithubRespositoryContainerlinks;

    @BuiltValueSerializer(custom: true)
    static Serializer<GithubRespositoryContainerlinks> get serializer => _$GithubRespositoryContainerlinksSerializer();
}

class _$GithubRespositoryContainerlinksSerializer implements StructuredSerializer<GithubRespositoryContainerlinks> {
    @override
    final Iterable<Type> types = const [GithubRespositoryContainerlinks, _$GithubRespositoryContainerlinks];

    @override
    final String wireName = r'GithubRespositoryContainerlinks';

    @override
    Iterable<Object?> serialize(Serializers serializers, GithubRespositoryContainerlinks object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.self != null) {
            result
                ..add(r'self')
                ..add(serializers.serialize(object.self,
                    specifiedType: const FullType(Link)));
        }
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    GithubRespositoryContainerlinks deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = GithubRespositoryContainerlinksBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'self':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Link)) as Link;
                    result.self.replace(valueDes);
                    break;
                case r'_class':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.class_ = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

