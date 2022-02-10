//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'branch_implpermissions.g.dart';

/// BranchImplpermissions
///
/// Properties:
/// * [create] 
/// * [read] 
/// * [start] 
/// * [stop] 
/// * [class_] 
abstract class BranchImplpermissions implements Built<BranchImplpermissions, BranchImplpermissionsBuilder> {
    @BuiltValueField(wireName: r'create')
    bool? get create;

    @BuiltValueField(wireName: r'read')
    bool? get read;

    @BuiltValueField(wireName: r'start')
    bool? get start;

    @BuiltValueField(wireName: r'stop')
    bool? get stop;

    @BuiltValueField(wireName: r'_class')
    String? get class_;

    BranchImplpermissions._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(BranchImplpermissionsBuilder b) => b;

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
    Iterable<Object?> serialize(Serializers serializers, BranchImplpermissions object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
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
    BranchImplpermissions deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = BranchImplpermissionsBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'create':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.create = valueDes;
                    break;
                case r'read':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.read = valueDes;
                    break;
                case r'start':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.start = valueDes;
                    break;
                case r'stop':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.stop = valueDes;
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

