//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'github_repositorypermissions.g.dart';

abstract class GithubRepositorypermissions implements Built<GithubRepositorypermissions, GithubRepositorypermissionsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'admin')
    bool get admin;

    @nullable
    @BuiltValueField(wireName: r'push')
    bool get push;

    @nullable
    @BuiltValueField(wireName: r'pull')
    bool get pull;

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    GithubRepositorypermissions._();

    static void _initializeBuilder(GithubRepositorypermissionsBuilder b) => b;

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
    Iterable<Object> serialize(Serializers serializers, GithubRepositorypermissions object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
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
    GithubRepositorypermissions deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = GithubRepositorypermissionsBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'admin':
                    result.admin = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'push':
                    result.push = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'pull':
                    result.pull = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'_class':
                    result.class_ = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

