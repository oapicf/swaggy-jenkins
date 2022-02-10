//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'generic_resource.g.dart';

abstract class GenericResource implements Built<GenericResource, GenericResourceBuilder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    @nullable
    @BuiltValueField(wireName: r'displayName')
    String get displayName;

    @nullable
    @BuiltValueField(wireName: r'durationInMillis')
    int get durationInMillis;

    @nullable
    @BuiltValueField(wireName: r'id')
    String get id;

    @nullable
    @BuiltValueField(wireName: r'result')
    String get result;

    @nullable
    @BuiltValueField(wireName: r'startTime')
    String get startTime;

    GenericResource._();

    static void _initializeBuilder(GenericResourceBuilder b) => b;

    factory GenericResource([void updates(GenericResourceBuilder b)]) = _$GenericResource;

    @BuiltValueSerializer(custom: true)
    static Serializer<GenericResource> get serializer => _$GenericResourceSerializer();
}

class _$GenericResourceSerializer implements StructuredSerializer<GenericResource> {

    @override
    final Iterable<Type> types = const [GenericResource, _$GenericResource];
    @override
    final String wireName = r'GenericResource';

    @override
    Iterable<Object> serialize(Serializers serializers, GenericResource object,
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
        return result;
    }

    @override
    GenericResource deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = GenericResourceBuilder();

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
                case r'durationInMillis':
                    result.durationInMillis = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'id':
                    result.id = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'result':
                    result.result = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'startTime':
                    result.startTime = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

