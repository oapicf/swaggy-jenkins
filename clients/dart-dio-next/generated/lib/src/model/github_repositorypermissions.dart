//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'github_repositorypermissions.g.dart';

/// GithubRepositorypermissions
///
/// Properties:
/// * [admin] 
/// * [push] 
/// * [pull] 
/// * [class_] 
abstract class GithubRepositorypermissions implements Built<GithubRepositorypermissions, GithubRepositorypermissionsBuilder> {
    @BuiltValueField(wireName: r'admin')
    bool? get admin;

    @BuiltValueField(wireName: r'push')
    bool? get push;

    @BuiltValueField(wireName: r'pull')
    bool? get pull;

    @BuiltValueField(wireName: r'_class')
    String? get class_;

    GithubRepositorypermissions._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(GithubRepositorypermissionsBuilder b) => b;

    factory GithubRepositorypermissions([void updates(GithubRepositorypermissionsBuilder b)]) = _$GithubRepositorypermissions;

    @BuiltValueSerializer(custom: true)
    static Serializer<GithubRepositorypermissions> get serializer => _$GithubRepositorypermissionsSerializer();
}

class _$GithubRepositorypermissionsSerializer implements StructuredSerializer<GithubRepositorypermissions> {
    @override
    final Iterable<Type> types = const [GithubRepositorypermissions, _$GithubRepositorypermissions];

    @override
    final String wireName = r'GithubRepositorypermissions';

    @override
    Iterable<Object?> serialize(Serializers serializers, GithubRepositorypermissions object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.admin != null) {
            result
                ..add(r'admin')
                ..add(serializers.serialize(object.admin,
                    specifiedType: const FullType(bool)));
        }
        if (object.push != null) {
            result
                ..add(r'push')
                ..add(serializers.serialize(object.push,
                    specifiedType: const FullType(bool)));
        }
        if (object.pull != null) {
            result
                ..add(r'pull')
                ..add(serializers.serialize(object.pull,
                    specifiedType: const FullType(bool)));
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
    GithubRepositorypermissions deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = GithubRepositorypermissionsBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'admin':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.admin = valueDes;
                    break;
                case r'push':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.push = valueDes;
                    break;
                case r'pull':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.pull = valueDes;
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

