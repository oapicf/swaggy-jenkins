//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/github_scmlinks.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'github_scm.g.dart';

/// GithubScm
///
/// Properties:
/// * [class_] 
/// * [links] 
/// * [credentialId] 
/// * [id] 
/// * [uri] 
abstract class GithubScm implements Built<GithubScm, GithubScmBuilder> {
    @BuiltValueField(wireName: r'_class')
    String? get class_;

    @BuiltValueField(wireName: r'_links')
    GithubScmlinks? get links;

    @BuiltValueField(wireName: r'credentialId')
    String? get credentialId;

    @BuiltValueField(wireName: r'id')
    String? get id;

    @BuiltValueField(wireName: r'uri')
    String? get uri;

    GithubScm._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(GithubScmBuilder b) => b;

    factory GithubScm([void updates(GithubScmBuilder b)]) = _$GithubScm;

    @BuiltValueSerializer(custom: true)
    static Serializer<GithubScm> get serializer => _$GithubScmSerializer();
}

class _$GithubScmSerializer implements StructuredSerializer<GithubScm> {
    @override
    final Iterable<Type> types = const [GithubScm, _$GithubScm];

    @override
    final String wireName = r'GithubScm';

    @override
    Iterable<Object?> serialize(Serializers serializers, GithubScm object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
        if (object.links != null) {
            result
                ..add(r'_links')
                ..add(serializers.serialize(object.links,
                    specifiedType: const FullType(GithubScmlinks)));
        }
        if (object.credentialId != null) {
            result
                ..add(r'credentialId')
                ..add(serializers.serialize(object.credentialId,
                    specifiedType: const FullType(String)));
        }
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(String)));
        }
        if (object.uri != null) {
            result
                ..add(r'uri')
                ..add(serializers.serialize(object.uri,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    GithubScm deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = GithubScmBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'_class':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.class_ = valueDes;
                    break;
                case r'_links':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(GithubScmlinks)) as GithubScmlinks;
                    result.links.replace(valueDes);
                    break;
                case r'credentialId':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.credentialId = valueDes;
                    break;
                case r'id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.id = valueDes;
                    break;
                case r'uri':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.uri = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

