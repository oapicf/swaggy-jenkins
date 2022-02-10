//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/hudson_master_computer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'computer_set.g.dart';

/// ComputerSet
///
/// Properties:
/// * [class_] 
/// * [busyExecutors] 
/// * [computer] 
/// * [displayName] 
/// * [totalExecutors] 
abstract class ComputerSet implements Built<ComputerSet, ComputerSetBuilder> {
    @BuiltValueField(wireName: r'_class')
    String? get class_;

    @BuiltValueField(wireName: r'busyExecutors')
    int? get busyExecutors;

    @BuiltValueField(wireName: r'computer')
    BuiltList<HudsonMasterComputer>? get computer;

    @BuiltValueField(wireName: r'displayName')
    String? get displayName;

    @BuiltValueField(wireName: r'totalExecutors')
    int? get totalExecutors;

    ComputerSet._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ComputerSetBuilder b) => b;

    factory ComputerSet([void updates(ComputerSetBuilder b)]) = _$ComputerSet;

    @BuiltValueSerializer(custom: true)
    static Serializer<ComputerSet> get serializer => _$ComputerSetSerializer();
}

class _$ComputerSetSerializer implements StructuredSerializer<ComputerSet> {
    @override
    final Iterable<Type> types = const [ComputerSet, _$ComputerSet];

    @override
    final String wireName = r'ComputerSet';

    @override
    Iterable<Object?> serialize(Serializers serializers, ComputerSet object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
        if (object.busyExecutors != null) {
            result
                ..add(r'busyExecutors')
                ..add(serializers.serialize(object.busyExecutors,
                    specifiedType: const FullType(int)));
        }
        if (object.computer != null) {
            result
                ..add(r'computer')
                ..add(serializers.serialize(object.computer,
                    specifiedType: const FullType(BuiltList, [FullType(HudsonMasterComputer)])));
        }
        if (object.displayName != null) {
            result
                ..add(r'displayName')
                ..add(serializers.serialize(object.displayName,
                    specifiedType: const FullType(String)));
        }
        if (object.totalExecutors != null) {
            result
                ..add(r'totalExecutors')
                ..add(serializers.serialize(object.totalExecutors,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    ComputerSet deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ComputerSetBuilder();

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
                case r'busyExecutors':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.busyExecutors = valueDes;
                    break;
                case r'computer':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(HudsonMasterComputer)])) as BuiltList<HudsonMasterComputer>;
                    result.computer.replace(valueDes);
                    break;
                case r'displayName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.displayName = valueDes;
                    break;
                case r'totalExecutors':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.totalExecutors = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

