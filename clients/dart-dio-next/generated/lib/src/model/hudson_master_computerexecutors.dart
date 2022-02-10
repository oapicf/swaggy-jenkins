//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/free_style_build.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hudson_master_computerexecutors.g.dart';

/// HudsonMasterComputerexecutors
///
/// Properties:
/// * [currentExecutable] 
/// * [idle] 
/// * [likelyStuck] 
/// * [number] 
/// * [progress] 
/// * [class_] 
abstract class HudsonMasterComputerexecutors implements Built<HudsonMasterComputerexecutors, HudsonMasterComputerexecutorsBuilder> {
    @BuiltValueField(wireName: r'currentExecutable')
    FreeStyleBuild? get currentExecutable;

    @BuiltValueField(wireName: r'idle')
    bool? get idle;

    @BuiltValueField(wireName: r'likelyStuck')
    bool? get likelyStuck;

    @BuiltValueField(wireName: r'number')
    int? get number;

    @BuiltValueField(wireName: r'progress')
    int? get progress;

    @BuiltValueField(wireName: r'_class')
    String? get class_;

    HudsonMasterComputerexecutors._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(HudsonMasterComputerexecutorsBuilder b) => b;

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
    Iterable<Object?> serialize(Serializers serializers, HudsonMasterComputerexecutors object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
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
    HudsonMasterComputerexecutors deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = HudsonMasterComputerexecutorsBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'currentExecutable':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(FreeStyleBuild)) as FreeStyleBuild;
                    result.currentExecutable.replace(valueDes);
                    break;
                case r'idle':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.idle = valueDes;
                    break;
                case r'likelyStuck':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.likelyStuck = valueDes;
                    break;
                case r'number':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.number = valueDes;
                    break;
                case r'progress':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.progress = valueDes;
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

