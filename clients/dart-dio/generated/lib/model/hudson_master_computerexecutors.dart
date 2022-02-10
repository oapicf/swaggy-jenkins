//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/free_style_build.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hudson_master_computerexecutors.g.dart';

abstract class HudsonMasterComputerexecutors implements Built<HudsonMasterComputerexecutors, HudsonMasterComputerexecutorsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'currentExecutable')
    FreeStyleBuild get currentExecutable;

    @nullable
    @BuiltValueField(wireName: r'idle')
    bool get idle;

    @nullable
    @BuiltValueField(wireName: r'likelyStuck')
    bool get likelyStuck;

    @nullable
    @BuiltValueField(wireName: r'number')
    int get number;

    @nullable
    @BuiltValueField(wireName: r'progress')
    int get progress;

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    HudsonMasterComputerexecutors._();

    static void _initializeBuilder(HudsonMasterComputerexecutorsBuilder b) => b;

    factory HudsonMasterComputerexecutors([void updates(HudsonMasterComputerexecutorsBuilder b)]) = _$HudsonMasterComputerexecutors;

    @BuiltValueSerializer(custom: true)
    static Serializer<HudsonMasterComputerexecutors> get serializer => _$HudsonMasterComputerexecutorsSerializer();
}

class _$HudsonMasterComputerexecutorsSerializer implements StructuredSerializer<HudsonMasterComputerexecutors> {

    @override
    final Iterable<Type> types = const [HudsonMasterComputerexecutors, _$HudsonMasterComputerexecutors];
    @override
    final String wireName = r'HudsonMasterComputerexecutors';

    @override
    Iterable<Object> serialize(Serializers serializers, HudsonMasterComputerexecutors object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.currentExecutable != null) {
            result
                ..add(r'currentExecutable')
                ..add(serializers.serialize(object.currentExecutable,
                    specifiedType: const FullType(FreeStyleBuild)));
        }
        if (object.idle != null) {
            result
                ..add(r'idle')
                ..add(serializers.serialize(object.idle,
                    specifiedType: const FullType(bool)));
        }
        if (object.likelyStuck != null) {
            result
                ..add(r'likelyStuck')
                ..add(serializers.serialize(object.likelyStuck,
                    specifiedType: const FullType(bool)));
        }
        if (object.number != null) {
            result
                ..add(r'number')
                ..add(serializers.serialize(object.number,
                    specifiedType: const FullType(int)));
        }
        if (object.progress != null) {
            result
                ..add(r'progress')
                ..add(serializers.serialize(object.progress,
                    specifiedType: const FullType(int)));
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
    HudsonMasterComputerexecutors deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = HudsonMasterComputerexecutorsBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'currentExecutable':
                    result.currentExecutable.replace(serializers.deserialize(value,
                        specifiedType: const FullType(FreeStyleBuild)) as FreeStyleBuild);
                    break;
                case r'idle':
                    result.idle = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'likelyStuck':
                    result.likelyStuck = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'number':
                    result.number = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'progress':
                    result.progress = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
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

