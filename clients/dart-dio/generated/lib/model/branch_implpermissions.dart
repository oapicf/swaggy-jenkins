//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'branch_implpermissions.g.dart';

abstract class BranchImplpermissions implements Built<BranchImplpermissions, BranchImplpermissionsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'create')
    bool get create;

    @nullable
    @BuiltValueField(wireName: r'read')
    bool get read;

    @nullable
    @BuiltValueField(wireName: r'start')
    bool get start;

    @nullable
    @BuiltValueField(wireName: r'stop')
    bool get stop;

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    BranchImplpermissions._();

    static void _initializeBuilder(BranchImplpermissionsBuilder b) => b;

    factory BranchImplpermissions([void updates(BranchImplpermissionsBuilder b)]) = _$BranchImplpermissions;

    @BuiltValueSerializer(custom: true)
    static Serializer<BranchImplpermissions> get serializer => _$BranchImplpermissionsSerializer();
}

class _$BranchImplpermissionsSerializer implements StructuredSerializer<BranchImplpermissions> {

    @override
    final Iterable<Type> types = const [BranchImplpermissions, _$BranchImplpermissions];
    @override
    final String wireName = r'BranchImplpermissions';

    @override
    Iterable<Object> serialize(Serializers serializers, BranchImplpermissions object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.create != null) {
            result
                ..add(r'create')
                ..add(serializers.serialize(object.create,
                    specifiedType: const FullType(bool)));
        }
        if (object.read != null) {
            result
                ..add(r'read')
                ..add(serializers.serialize(object.read,
                    specifiedType: const FullType(bool)));
        }
        if (object.start != null) {
            result
                ..add(r'start')
                ..add(serializers.serialize(object.start,
                    specifiedType: const FullType(bool)));
        }
        if (object.stop != null) {
            result
                ..add(r'stop')
                ..add(serializers.serialize(object.stop,
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
    BranchImplpermissions deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = BranchImplpermissionsBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'create':
                    result.create = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'read':
                    result.read = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'start':
                    result.start = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'stop':
                    result.stop = serializers.deserialize(value,
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

