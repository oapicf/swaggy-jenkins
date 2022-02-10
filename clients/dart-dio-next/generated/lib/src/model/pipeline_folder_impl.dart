//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pipeline_folder_impl.g.dart';

/// PipelineFolderImpl
///
/// Properties:
/// * [class_] 
/// * [displayName] 
/// * [fullName] 
/// * [name] 
/// * [organization] 
/// * [numberOfFolders] 
/// * [numberOfPipelines] 
abstract class PipelineFolderImpl implements Built<PipelineFolderImpl, PipelineFolderImplBuilder> {
    @BuiltValueField(wireName: r'_class')
    String? get class_;

    @BuiltValueField(wireName: r'displayName')
    String? get displayName;

    @BuiltValueField(wireName: r'fullName')
    String? get fullName;

    @BuiltValueField(wireName: r'name')
    String? get name;

    @BuiltValueField(wireName: r'organization')
    String? get organization;

    @BuiltValueField(wireName: r'numberOfFolders')
    int? get numberOfFolders;

    @BuiltValueField(wireName: r'numberOfPipelines')
    int? get numberOfPipelines;

    PipelineFolderImpl._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(PipelineFolderImplBuilder b) => b;

    factory PipelineFolderImpl([void updates(PipelineFolderImplBuilder b)]) = _$PipelineFolderImpl;

    @BuiltValueSerializer(custom: true)
    static Serializer<PipelineFolderImpl> get serializer => _$PipelineFolderImplSerializer();
}

class _$PipelineFolderImplSerializer implements StructuredSerializer<PipelineFolderImpl> {
    @override
    final Iterable<Type> types = const [PipelineFolderImpl, _$PipelineFolderImpl];

    @override
    final String wireName = r'PipelineFolderImpl';

    @override
    Iterable<Object?> serialize(Serializers serializers, PipelineFolderImpl object,
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
        if (object.fullName != null) {
            result
                ..add(r'fullName')
                ..add(serializers.serialize(object.fullName,
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
        if (object.numberOfFolders != null) {
            result
                ..add(r'numberOfFolders')
                ..add(serializers.serialize(object.numberOfFolders,
                    specifiedType: const FullType(int)));
        }
        if (object.numberOfPipelines != null) {
            result
                ..add(r'numberOfPipelines')
                ..add(serializers.serialize(object.numberOfPipelines,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    PipelineFolderImpl deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PipelineFolderImplBuilder();

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
                case r'fullName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.fullName = valueDes;
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
                case r'numberOfFolders':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.numberOfFolders = valueDes;
                    break;
                case r'numberOfPipelines':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.numberOfPipelines = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

