//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/free_style_build.dart';
import 'package:openapi/model/cause_action.dart';
import 'package:openapi/model/free_style_project.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'queue_left_item.g.dart';

abstract class QueueLeftItem implements Built<QueueLeftItem, QueueLeftItemBuilder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    @nullable
    @BuiltValueField(wireName: r'actions')
    BuiltList<CauseAction> get actions;

    @nullable
    @BuiltValueField(wireName: r'blocked')
    bool get blocked;

    @nullable
    @BuiltValueField(wireName: r'buildable')
    bool get buildable;

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'inQueueSince')
    int get inQueueSince;

    @nullable
    @BuiltValueField(wireName: r'params')
    String get params;

    @nullable
    @BuiltValueField(wireName: r'stuck')
    bool get stuck;

    @nullable
    @BuiltValueField(wireName: r'task')
    FreeStyleProject get task;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'why')
    String get why;

    @nullable
    @BuiltValueField(wireName: r'cancelled')
    bool get cancelled;

    @nullable
    @BuiltValueField(wireName: r'executable')
    FreeStyleBuild get executable;

    QueueLeftItem._();

    static void _initializeBuilder(QueueLeftItemBuilder b) => b;

    factory QueueLeftItem([void updates(QueueLeftItemBuilder b)]) = _$QueueLeftItem;

    @BuiltValueSerializer(custom: true)
    static Serializer<QueueLeftItem> get serializer => _$QueueLeftItemSerializer();
}

class _$QueueLeftItemSerializer implements StructuredSerializer<QueueLeftItem> {

    @override
    final Iterable<Type> types = const [QueueLeftItem, _$QueueLeftItem];
    @override
    final String wireName = r'QueueLeftItem';

    @override
    Iterable<Object> serialize(Serializers serializers, QueueLeftItem object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
        if (object.actions != null) {
            result
                ..add(r'actions')
                ..add(serializers.serialize(object.actions,
                    specifiedType: const FullType(BuiltList, [FullType(CauseAction)])));
        }
        if (object.blocked != null) {
            result
                ..add(r'blocked')
                ..add(serializers.serialize(object.blocked,
                    specifiedType: const FullType(bool)));
        }
        if (object.buildable != null) {
            result
                ..add(r'buildable')
                ..add(serializers.serialize(object.buildable,
                    specifiedType: const FullType(bool)));
        }
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.inQueueSince != null) {
            result
                ..add(r'inQueueSince')
                ..add(serializers.serialize(object.inQueueSince,
                    specifiedType: const FullType(int)));
        }
        if (object.params != null) {
            result
                ..add(r'params')
                ..add(serializers.serialize(object.params,
                    specifiedType: const FullType(String)));
        }
        if (object.stuck != null) {
            result
                ..add(r'stuck')
                ..add(serializers.serialize(object.stuck,
                    specifiedType: const FullType(bool)));
        }
        if (object.task != null) {
            result
                ..add(r'task')
                ..add(serializers.serialize(object.task,
                    specifiedType: const FullType(FreeStyleProject)));
        }
        if (object.url != null) {
            result
                ..add(r'url')
                ..add(serializers.serialize(object.url,
                    specifiedType: const FullType(String)));
        }
        if (object.why != null) {
            result
                ..add(r'why')
                ..add(serializers.serialize(object.why,
                    specifiedType: const FullType(String)));
        }
        if (object.cancelled != null) {
            result
                ..add(r'cancelled')
                ..add(serializers.serialize(object.cancelled,
                    specifiedType: const FullType(bool)));
        }
        if (object.executable != null) {
            result
                ..add(r'executable')
                ..add(serializers.serialize(object.executable,
                    specifiedType: const FullType(FreeStyleBuild)));
        }
        return result;
    }

    @override
    QueueLeftItem deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = QueueLeftItemBuilder();

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
                case r'actions':
                    result.actions.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(CauseAction)])) as BuiltList<CauseAction>);
                    break;
                case r'blocked':
                    result.blocked = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'buildable':
                    result.buildable = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'id':
                    result.id = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'inQueueSince':
                    result.inQueueSince = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'params':
                    result.params = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'stuck':
                    result.stuck = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'task':
                    result.task.replace(serializers.deserialize(value,
                        specifiedType: const FullType(FreeStyleProject)) as FreeStyleProject);
                    break;
                case r'url':
                    result.url = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'why':
                    result.why = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'cancelled':
                    result.cancelled = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'executable':
                    result.executable.replace(serializers.deserialize(value,
                        specifiedType: const FullType(FreeStyleBuild)) as FreeStyleBuild);
                    break;
            }
        }
        return result.build();
    }
}

