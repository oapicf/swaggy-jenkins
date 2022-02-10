//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'queue_item_impl.g.dart';

/// QueueItemImpl
///
/// Properties:
/// * [class_] 
/// * [expectedBuildNumber] 
/// * [id] 
/// * [pipeline] 
/// * [queuedTime] 
abstract class QueueItemImpl implements Built<QueueItemImpl, QueueItemImplBuilder> {
    @BuiltValueField(wireName: r'_class')
    String? get class_;

    @BuiltValueField(wireName: r'expectedBuildNumber')
    int? get expectedBuildNumber;

    @BuiltValueField(wireName: r'id')
    String? get id;

    @BuiltValueField(wireName: r'pipeline')
    String? get pipeline;

    @BuiltValueField(wireName: r'queuedTime')
    int? get queuedTime;

    QueueItemImpl._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(QueueItemImplBuilder b) => b;

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
    Iterable<Object?> serialize(Serializers serializers, QueueItemImpl object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
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
    QueueItemImpl deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = QueueItemImplBuilder();

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
                case r'expectedBuildNumber':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.expectedBuildNumber = valueDes;
                    break;
                case r'id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.id = valueDes;
                    break;
                case r'pipeline':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.pipeline = valueDes;
                    break;
                case r'queuedTime':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.queuedTime = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

