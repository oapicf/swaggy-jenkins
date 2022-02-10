//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'github_scmlinks.g.dart';

/// GithubScmlinks
///
/// Properties:
/// * [self] 
/// * [class_] 
abstract class GithubScmlinks implements Built<GithubScmlinks, GithubScmlinksBuilder> {
    @BuiltValueField(wireName: r'self')
    Link? get self;

    @BuiltValueField(wireName: r'_class')
    String? get class_;

    GithubScmlinks._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(GithubScmlinksBuilder b) => b;

    factory GithubScmlinks([void updates(GithubScmlinksBuilder b)]) = _$GithubScmlinks;

    @BuiltValueSerializer(custom: true)
    static Serializer<GithubScmlinks> get serializer => _$GithubScmlinksSerializer();
}

class _$GithubScmlinksSerializer implements StructuredSerializer<GithubScmlinks> {
    @override
    final Iterable<Type> types = const [GithubScmlinks, _$GithubScmlinks];

    @override
    final String wireName = r'GithubScmlinks';

    @override
    Iterable<Object?> serialize(Serializers serializers, GithubScmlinks object,
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
    GithubScmlinks deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = GithubScmlinksBuilder();

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

