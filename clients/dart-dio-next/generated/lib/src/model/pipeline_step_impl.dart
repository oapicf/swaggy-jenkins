//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/pipeline_step_impllinks.dart';
import 'package:openapi/src/model/input_step_impl.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pipeline_step_impl.g.dart';

/// PipelineStepImpl
///
/// Properties:
/// * [class_] 
/// * [links] 
/// * [displayName] 
/// * [durationInMillis] 
/// * [id] 
/// * [input] 
/// * [result] 
/// * [startTime] 
/// * [state] 
abstract class PipelineStepImpl implements Built<PipelineStepImpl, PipelineStepImplBuilder> {
    @BuiltValueField(wireName: r'_class')
    String? get class_;

    @BuiltValueField(wireName: r'_links')
    PipelineStepImpllinks? get links;

    @BuiltValueField(wireName: r'displayName')
    String? get displayName;

    @BuiltValueField(wireName: r'durationInMillis')
    int? get durationInMillis;

    @BuiltValueField(wireName: r'id')
    String? get id;

    @BuiltValueField(wireName: r'input')
    InputStepImpl? get input;

    @BuiltValueField(wireName: r'result')
    String? get result;

    @BuiltValueField(wireName: r'startTime')
    String? get startTime;

    @BuiltValueField(wireName: r'state')
    String? get state;

    PipelineStepImpl._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(PipelineStepImplBuilder b) => b;

    factory PipelineStepImpl([void updates(PipelineStepImplBuilder b)]) = _$PipelineStepImpl;

    @BuiltValueSerializer(custom: true)
    static Serializer<PipelineStepImpl> get serializer => _$PipelineStepImplSerializer();
}

class _$PipelineStepImplSerializer implements StructuredSerializer<PipelineStepImpl> {
    @override
    final Iterable<Type> types = const [PipelineStepImpl, _$PipelineStepImpl];

    @override
    final String wireName = r'PipelineStepImpl';

    @override
    Iterable<Object?> serialize(Serializers serializers, PipelineStepImpl object,
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
                    specifiedType: const FullType(PipelineStepImpllinks)));
        }
        if (object.displayName != null) {
            result
                ..add(r'displayName')
                ..add(serializers.serialize(object.displayName,
                    specifiedType: const FullType(String)));
        }
        if (object.durationInMillis != null) {
            result
                ..add(r'durationInMillis')
                ..add(serializers.serialize(object.durationInMillis,
                    specifiedType: const FullType(int)));
        }
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(String)));
        }
        if (object.input != null) {
            result
                ..add(r'input')
                ..add(serializers.serialize(object.input,
                    specifiedType: const FullType(InputStepImpl)));
        }
        if (object.result != null) {
            result
                ..add(r'result')
                ..add(serializers.serialize(object.result,
                    specifiedType: const FullType(String)));
        }
        if (object.startTime != null) {
            result
                ..add(r'startTime')
                ..add(serializers.serialize(object.startTime,
                    specifiedType: const FullType(String)));
        }
        if (object.state != null) {
            result
                ..add(r'state')
                ..add(serializers.serialize(object.state,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    PipelineStepImpl deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PipelineStepImplBuilder();

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
                        specifiedType: const FullType(PipelineStepImpllinks)) as PipelineStepImpllinks;
                    result.links.replace(valueDes);
                    break;
                case r'displayName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.displayName = valueDes;
                    break;
                case r'durationInMillis':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.durationInMillis = valueDes;
                    break;
                case r'id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.id = valueDes;
                    break;
                case r'input':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(InputStepImpl)) as InputStepImpl;
                    result.input.replace(valueDes);
                    break;
                case r'result':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.result = valueDes;
                    break;
                case r'startTime':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.startTime = valueDes;
                    break;
                case r'state':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.state = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

