//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/queue_blocked_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'queue.g.dart';

abstract class Queue implements Built<Queue, QueueBuilder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    @nullable
    @BuiltValueField(wireName: r'items')
    BuiltList<QueueBlockedItem> get items;

    Queue._();

    static void _initializeBuilder(QueueBuilder b) => b;

    factory Queue([void updates(QueueBuilder b)]) = _$Queue;

    @BuiltValueSerializer(custom: true)
    static Serializer<Queue> get serializer => _$QueueSerializer();
}

class _$QueueSerializer implements StructuredSerializer<Queue> {

    @override
    final Iterable<Type> types = const [Queue, _$Queue];
    @override
    final String wireName = r'Queue';

    @override
    Iterable<Object> serialize(Serializers serializers, Queue object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
        if (object.items != null) {
            result
                ..add(r'items')
                ..add(serializers.serialize(object.items,
                    specifiedType: const FullType(BuiltList, [FullType(QueueBlockedItem)])));
        }
        return result;
    }

    @override
    Queue deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = QueueBuilder();

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
                case r'items':
                    result.items.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(QueueBlockedItem)])) as BuiltList<QueueBlockedItem>);
                    break;
            }
        }
        return result.build();
    }
}

