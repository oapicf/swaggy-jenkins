//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/queue_blocked_item.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'queue.g.dart';

/// Queue
///
/// Properties:
/// * [class_] 
/// * [items] 
abstract class Queue implements Built<Queue, QueueBuilder> {
    @BuiltValueField(wireName: r'_class')
    String? get class_;

    @BuiltValueField(wireName: r'items')
    BuiltList<QueueBlockedItem>? get items;

    Queue._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(QueueBuilder b) => b;

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
    Iterable<Object?> serialize(Serializers serializers, Queue object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
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
    Queue deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = QueueBuilder();

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
                case r'items':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(QueueBlockedItem)])) as BuiltList<QueueBlockedItem>;
                    result.items.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

