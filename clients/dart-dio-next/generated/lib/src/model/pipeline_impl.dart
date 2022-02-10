//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/pipeline_impllinks.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pipeline_impl.g.dart';

/// PipelineImpl
///
/// Properties:
/// * [class_] 
/// * [displayName] 
/// * [estimatedDurationInMillis] 
/// * [fullName] 
/// * [latestRun] 
/// * [name] 
/// * [organization] 
/// * [weatherScore] 
/// * [links] 
abstract class PipelineImpl implements Built<PipelineImpl, PipelineImplBuilder> {
    @BuiltValueField(wireName: r'_class')
    String? get class_;

    @BuiltValueField(wireName: r'displayName')
    String? get displayName;

    @BuiltValueField(wireName: r'estimatedDurationInMillis')
    int? get estimatedDurationInMillis;

    @BuiltValueField(wireName: r'fullName')
    String? get fullName;

    @BuiltValueField(wireName: r'latestRun')
    String? get latestRun;

    @BuiltValueField(wireName: r'name')
    String? get name;

    @BuiltValueField(wireName: r'organization')
    String? get organization;

    @BuiltValueField(wireName: r'weatherScore')
    int? get weatherScore;

    @BuiltValueField(wireName: r'_links')
    PipelineImpllinks? get links;

    PipelineImpl._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(PipelineImplBuilder b) => b;

    factory PipelineImpl([void updates(PipelineImplBuilder b)]) = _$PipelineImpl;

    @BuiltValueSerializer(custom: true)
    static Serializer<PipelineImpl> get serializer => _$PipelineImplSerializer();
}

class _$PipelineImplSerializer implements StructuredSerializer<PipelineImpl> {
    @override
    final Iterable<Type> types = const [PipelineImpl, _$PipelineImpl];

    @override
    final String wireName = r'PipelineImpl';

    @override
    Iterable<Object?> serialize(Serializers serializers, PipelineImpl object,
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
        if (object.estimatedDurationInMillis != null) {
            result
                ..add(r'estimatedDurationInMillis')
                ..add(serializers.serialize(object.estimatedDurationInMillis,
                    specifiedType: const FullType(int)));
        }
        if (object.fullName != null) {
            result
                ..add(r'fullName')
                ..add(serializers.serialize(object.fullName,
                    specifiedType: const FullType(String)));
        }
        if (object.latestRun != null) {
            result
                ..add(r'latestRun')
                ..add(serializers.serialize(object.latestRun,
                    specifiedType: const FullType(String)));
        }
        if (object.name != null) {
            result
                ..add(r'name')
                ..add(serializers.serialize(object.name,
                    specifiedType: const FullType(String)));
        }
        if (object.organization != null) {
            result
                ..add(r'organization')
                ..add(serializers.serialize(object.organization,
                    specifiedType: const FullType(String)));
        }
        if (object.weatherScore != null) {
            result
                ..add(r'weatherScore')
                ..add(serializers.serialize(object.weatherScore,
                    specifiedType: const FullType(int)));
        }
        if (object.links != null) {
            result
                ..add(r'_links')
                ..add(serializers.serialize(object.links,
                    specifiedType: const FullType(PipelineImpllinks)));
        }
        return result;
    }

    @override
    PipelineImpl deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PipelineImplBuilder();

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
                case r'estimatedDurationInMillis':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.estimatedDurationInMillis = valueDes;
                    break;
                case r'fullName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.fullName = valueDes;
                    break;
                case r'latestRun':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.latestRun = valueDes;
                    break;
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
                case r'organization':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.organization = valueDes;
                    break;
                case r'weatherScore':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.weatherScore = valueDes;
                    break;
                case r'_links':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(PipelineImpllinks)) as PipelineImpllinks;
                    result.links.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

