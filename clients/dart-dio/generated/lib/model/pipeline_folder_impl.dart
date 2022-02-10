//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pipeline_folder_impl.g.dart';

abstract class PipelineFolderImpl implements Built<PipelineFolderImpl, PipelineFolderImplBuilder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    @nullable
    @BuiltValueField(wireName: r'displayName')
    String get displayName;

    @nullable
    @BuiltValueField(wireName: r'fullName')
    String get fullName;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'organization')
    String get organization;

    @nullable
    @BuiltValueField(wireName: r'numberOfFolders')
    int get numberOfFolders;

    @nullable
    @BuiltValueField(wireName: r'numberOfPipelines')
    int get numberOfPipelines;

    PipelineFolderImpl._();

    static void _initializeBuilder(PipelineFolderImplBuilder b) => b;

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
    Iterable<Object> serialize(Serializers serializers, PipelineFolderImpl object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
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
    PipelineFolderImpl deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PipelineFolderImplBuilder();

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
                case r'displayName':
                    result.displayName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'fullName':
                    result.fullName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'name':
                    result.name = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'organization':
                    result.organization = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'numberOfFolders':
                    result.numberOfFolders = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'numberOfPipelines':
                    result.numberOfPipelines = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
            }
        }
        return result.build();
    }
}

