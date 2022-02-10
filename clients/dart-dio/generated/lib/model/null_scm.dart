//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'null_scm.g.dart';

abstract class NullSCM implements Built<NullSCM, NullSCMBuilder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    NullSCM._();

    static void _initializeBuilder(NullSCMBuilder b) => b;

    factory NullSCM([void updates(NullSCMBuilder b)]) = _$NullSCM;

    @BuiltValueSerializer(custom: true)
    static Serializer<NullSCM> get serializer => _$NullSCMSerializer();
}

class _$NullSCMSerializer implements StructuredSerializer<NullSCM> {

    @override
    final Iterable<Type> types = const [NullSCM, _$NullSCM];
    @override
    final String wireName = r'NullSCM';

    @override
    Iterable<Object> serialize(Serializers serializers, NullSCM object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    NullSCM deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = NullSCMBuilder();

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
            }
        }
        return result.build();
    }
}

