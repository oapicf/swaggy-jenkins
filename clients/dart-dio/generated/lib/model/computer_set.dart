//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/hudson_master_computer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'computer_set.g.dart';

abstract class ComputerSet implements Built<ComputerSet, ComputerSetBuilder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    @nullable
    @BuiltValueField(wireName: r'busyExecutors')
    int get busyExecutors;

    @nullable
    @BuiltValueField(wireName: r'computer')
    BuiltList<HudsonMasterComputer> get computer;

    @nullable
    @BuiltValueField(wireName: r'displayName')
    String get displayName;

    @nullable
    @BuiltValueField(wireName: r'totalExecutors')
    int get totalExecutors;

    ComputerSet._();

    static void _initializeBuilder(ComputerSetBuilder b) => b;

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
    Iterable<Object> serialize(Serializers serializers, ComputerSet object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
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
    ComputerSet deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ComputerSetBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'_class':
                    result.class_ = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'busyExecutors':
                    result.busyExecutors = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'computer':
                    result.computer.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(HudsonMasterComputer)])) as BuiltList<HudsonMasterComputer>);
                    break;
                case r'displayName':
                    result.displayName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'totalExecutors':
                    result.totalExecutors = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
            }
        }
        return result.build();
    }
}

