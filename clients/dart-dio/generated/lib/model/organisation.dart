//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'organisation.g.dart';

abstract class Organisation implements Built<Organisation, OrganisationBuilder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    Organisation._();

    static void _initializeBuilder(OrganisationBuilder b) => b;

    factory Organisation([void updates(OrganisationBuilder b)]) = _$Organisation;

    @BuiltValueSerializer(custom: true)
    static Serializer<Organisation> get serializer => _$OrganisationSerializer();
}

class _$OrganisationSerializer implements StructuredSerializer<Organisation> {

    @override
    final Iterable<Type> types = const [Organisation, _$Organisation];
    @override
    final String wireName = r'Organisation';

    @override
    Iterable<Object> serialize(Serializers serializers, Organisation object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
        if (object.name != null) {
            result
                ..add(r'name')
                ..add(serializers.serialize(object.name,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    Organisation deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = OrganisationBuilder();

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
                case r'name':
                    result.name = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

