//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/cause_action.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/free_style_build.dart';
import 'package:openapi/src/model/free_style_project.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'queue_left_item.g.dart';

/// QueueLeftItem
///
/// Properties:
/// * [class_] 
/// * [actions] 
/// * [blocked] 
/// * [buildable] 
/// * [id] 
/// * [inQueueSince] 
/// * [params] 
/// * [stuck] 
/// * [task] 
/// * [url] 
/// * [why] 
/// * [cancelled] 
/// * [executable] 
abstract class QueueLeftItem implements Built<QueueLeftItem, QueueLeftItemBuilder> {
    @BuiltValueField(wireName: r'_class')
    String? get class_;

    @BuiltValueField(wireName: r'actions')
    BuiltList<CauseAction>? get actions;

    @BuiltValueField(wireName: r'blocked')
    bool? get blocked;

    @BuiltValueField(wireName: r'buildable')
    bool? get buildable;

    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'inQueueSince')
    int? get inQueueSince;

    @BuiltValueField(wireName: r'params')
    String? get params;

    @BuiltValueField(wireName: r'stuck')
    bool? get stuck;

    @BuiltValueField(wireName: r'task')
    FreeStyleProject? get task;

    @BuiltValueField(wireName: r'url')
    String? get url;

    @BuiltValueField(wireName: r'why')
    String? get why;

    @BuiltValueField(wireName: r'cancelled')
    bool? get cancelled;

    @BuiltValueField(wireName: r'executable')
    FreeStyleBuild? get executable;

    QueueLeftItem._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(QueueLeftItemBuilder b) => b;

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
    Iterable<Object?> serialize(Serializers serializers, QueueLeftItem object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
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
    QueueLeftItem deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = QueueLeftItemBuilder();

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
                case r'actions':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(CauseAction)])) as BuiltList<CauseAction>;
                    result.actions.replace(valueDes);
                    break;
                case r'blocked':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.blocked = valueDes;
                    break;
                case r'buildable':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.buildable = valueDes;
                    break;
                case r'id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.id = valueDes;
                    break;
                case r'inQueueSince':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.inQueueSince = valueDes;
                    break;
                case r'params':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.params = valueDes;
                    break;
                case r'stuck':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.stuck = valueDes;
                    break;
                case r'task':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(FreeStyleProject)) as FreeStyleProject;
                    result.task.replace(valueDes);
                    break;
                case r'url':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.url = valueDes;
                    break;
                case r'why':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.why = valueDes;
                    break;
                case r'cancelled':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.cancelled = valueDes;
                    break;
                case r'executable':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(FreeStyleBuild)) as FreeStyleBuild;
                    result.executable.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

