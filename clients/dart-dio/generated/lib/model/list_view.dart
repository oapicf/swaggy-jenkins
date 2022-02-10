//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/free_style_project.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_view.g.dart';

abstract class ListView implements Built<ListView, ListViewBuilder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    @nullable
    @BuiltValueField(wireName: r'jobs')
    BuiltList<FreeStyleProject> get jobs;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    ListView._();

    static void _initializeBuilder(ListViewBuilder b) => b;

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
    Iterable<Object> serialize(Serializers serializers, ListView object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
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
    ListView deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ListViewBuilder();

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
                case r'description':
                    result.description = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'jobs':
                    result.jobs.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(FreeStyleProject)])) as BuiltList<FreeStyleProject>);
                    break;
                case r'name':
                    result.name = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'url':
                    result.url = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

