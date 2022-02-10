//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'queue_item_impl.g.dart';

abstract class QueueItemImpl implements Built<QueueItemImpl, QueueItemImplBuilder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    @nullable
    @BuiltValueField(wireName: r'expectedBuildNumber')
    int get expectedBuildNumber;

    @nullable
    @BuiltValueField(wireName: r'id')
    String get id;

    @nullable
    @BuiltValueField(wireName: r'pipeline')
    String get pipeline;

    @nullable
    @BuiltValueField(wireName: r'queuedTime')
    int get queuedTime;

    QueueItemImpl._();

    static void _initializeBuilder(QueueItemImplBuilder b) => b;

    factory QueueItemImpl([void updates(QueueItemImplBuilder b)]) = _$QueueItemImpl;

    @BuiltValueSerializer(custom: true)
    static Serializer<QueueItemImpl> get serializer => _$QueueItemImplSerializer();
}

class _$QueueItemImplSerializer implements StructuredSerializer<QueueItemImpl> {

    @override
    final Iterable<Type> types = const [QueueItemImpl, _$QueueItemImpl];
    @override
    final String wireName = r'QueueItemImpl';

    @override
    Iterable<Object> serialize(Serializers serializers, QueueItemImpl object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
        if (object.expectedBuildNumber != null) {
            result
                ..add(r'expectedBuildNumber')
                ..add(serializers.serialize(object.expectedBuildNumber,
                    specifiedType: const FullType(int)));
        }
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(String)));
        }
        if (object.pipeline != null) {
            result
                ..add(r'pipeline')
                ..add(serializers.serialize(object.pipeline,
                    specifiedType: const FullType(String)));
        }
        if (object.queuedTime != null) {
            result
                ..add(r'queuedTime')
                ..add(serializers.serialize(object.queuedTime,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    QueueItemImpl deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = QueueItemImplBuilder();

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
                case r'expectedBuildNumber':
                    result.expectedBuildNumber = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'id':
                    result.id = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'pipeline':
                    result.pipeline = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'queuedTime':
                    result.queuedTime = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
            }
        }
        return result.build();
    }
}

