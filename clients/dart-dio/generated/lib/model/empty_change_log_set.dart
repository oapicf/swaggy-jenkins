//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'empty_change_log_set.g.dart';

abstract class EmptyChangeLogSet implements Built<EmptyChangeLogSet, EmptyChangeLogSetBuilder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    @nullable
    @BuiltValueField(wireName: r'kind')
    String get kind;

    EmptyChangeLogSet._();

    static void _initializeBuilder(EmptyChangeLogSetBuilder b) => b;

    factory EmptyChangeLogSet([void updates(EmptyChangeLogSetBuilder b)]) = _$EmptyChangeLogSet;

    @BuiltValueSerializer(custom: true)
    static Serializer<EmptyChangeLogSet> get serializer => _$EmptyChangeLogSetSerializer();
}

class _$EmptyChangeLogSetSerializer implements StructuredSerializer<EmptyChangeLogSet> {

    @override
    final Iterable<Type> types = const [EmptyChangeLogSet, _$EmptyChangeLogSet];
    @override
    final String wireName = r'EmptyChangeLogSet';

    @override
    Iterable<Object> serialize(Serializers serializers, EmptyChangeLogSet object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
        if (object.kind != null) {
            result
                ..add(r'kind')
                ..add(serializers.serialize(object.kind,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    EmptyChangeLogSet deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = EmptyChangeLogSetBuilder();

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
                case r'kind':
                    result.kind = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

