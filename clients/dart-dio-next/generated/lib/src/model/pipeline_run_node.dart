//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/pipeline_run_nodeedges.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pipeline_run_node.g.dart';

/// PipelineRunNode
///
/// Properties:
/// * [class_] 
/// * [displayName] 
/// * [durationInMillis] 
/// * [edges] 
/// * [id] 
/// * [result] 
/// * [startTime] 
/// * [state] 
abstract class PipelineRunNode implements Built<PipelineRunNode, PipelineRunNodeBuilder> {
    @BuiltValueField(wireName: r'_class')
    String? get class_;

    @BuiltValueField(wireName: r'displayName')
    String? get displayName;

    @BuiltValueField(wireName: r'durationInMillis')
    int? get durationInMillis;

    @BuiltValueField(wireName: r'edges')
    BuiltList<PipelineRunNodeedges>? get edges;

    @BuiltValueField(wireName: r'id')
    String? get id;

    @BuiltValueField(wireName: r'result')
    String? get result;

    @BuiltValueField(wireName: r'startTime')
    String? get startTime;

    @BuiltValueField(wireName: r'state')
    String? get state;

    PipelineRunNode._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(PipelineRunNodeBuilder b) => b;

    factory PipelineRunNode([void updates(PipelineRunNodeBuilder b)]) = _$PipelineRunNode;

    @BuiltValueSerializer(custom: true)
    static Serializer<PipelineRunNode> get serializer => _$PipelineRunNodeSerializer();
}

class _$PipelineRunNodeSerializer implements StructuredSerializer<PipelineRunNode> {
    @override
    final Iterable<Type> types = const [PipelineRunNode, _$PipelineRunNode];

    @override
    final String wireName = r'PipelineRunNode';

    @override
    Iterable<Object?> serialize(Serializers serializers, PipelineRunNode object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
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
        if (object.edges != null) {
            result
                ..add(r'edges')
                ..add(serializers.serialize(object.edges,
                    specifiedType: const FullType(BuiltList, [FullType(PipelineRunNodeedges)])));
        }
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(String)));
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
    PipelineRunNode deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PipelineRunNodeBuilder();

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
                case r'edges':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(PipelineRunNodeedges)])) as BuiltList<PipelineRunNodeedges>;
                    result.edges.replace(valueDes);
                    break;
                case r'id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.id = valueDes;
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

