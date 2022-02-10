//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/free_style_project.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_view.g.dart';

/// ListView
///
/// Properties:
/// * [class_] 
/// * [description] 
/// * [jobs] 
/// * [name] 
/// * [url] 
abstract class ListView implements Built<ListView, ListViewBuilder> {
    @BuiltValueField(wireName: r'_class')
    String? get class_;

    @BuiltValueField(wireName: r'description')
    String? get description;

    @BuiltValueField(wireName: r'jobs')
    BuiltList<FreeStyleProject>? get jobs;

    @BuiltValueField(wireName: r'name')
    String? get name;

    @BuiltValueField(wireName: r'url')
    String? get url;

    ListView._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ListViewBuilder b) => b;

    factory ListView([void updates(ListViewBuilder b)]) = _$ListView;

    @BuiltValueSerializer(custom: true)
    static Serializer<ListView> get serializer => _$ListViewSerializer();
}

class _$ListViewSerializer implements StructuredSerializer<ListView> {
    @override
    final Iterable<Type> types = const [ListView, _$ListView];

    @override
    final String wireName = r'ListView';

    @override
    Iterable<Object?> serialize(Serializers serializers, ListView object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
        if (object.description != null) {
            result
                ..add(r'description')
                ..add(serializers.serialize(object.description,
                    specifiedType: const FullType(String)));
        }
        if (object.jobs != null) {
            result
                ..add(r'jobs')
                ..add(serializers.serialize(object.jobs,
                    specifiedType: const FullType(BuiltList, [FullType(FreeStyleProject)])));
        }
        if (object.name != null) {
            result
                ..add(r'name')
                ..add(serializers.serialize(object.name,
                    specifiedType: const FullType(String)));
        }
        if (object.url != null) {
            result
                ..add(r'url')
                ..add(serializers.serialize(object.url,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    ListView deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ListViewBuilder();

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
                case r'description':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.description = valueDes;
                    break;
                case r'jobs':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(FreeStyleProject)])) as BuiltList<FreeStyleProject>;
                    result.jobs.replace(valueDes);
                    break;
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
                case r'url':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.url = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

