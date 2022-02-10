//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'clock_difference.g.dart';

abstract class ClockDifference implements Built<ClockDifference, ClockDifferenceBuilder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    @nullable
    @BuiltValueField(wireName: r'diff')
    int get diff;

    ClockDifference._();

    static void _initializeBuilder(ClockDifferenceBuilder b) => b;

    factory ClockDifference([void updates(ClockDifferenceBuilder b)]) = _$ClockDifference;

    @BuiltValueSerializer(custom: true)
    static Serializer<ClockDifference> get serializer => _$ClockDifferenceSerializer();
}

class _$ClockDifferenceSerializer implements StructuredSerializer<ClockDifference> {

    @override
    final Iterable<Type> types = const [ClockDifference, _$ClockDifference];
    @override
    final String wireName = r'ClockDifference';

    @override
    Iterable<Object> serialize(Serializers serializers, ClockDifference object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
        if (object.diff != null) {
            result
                ..add(r'diff')
                ..add(serializers.serialize(object.diff,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    ClockDifference deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ClockDifferenceBuilder();

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
                case r'diff':
                    result.diff = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
            }
        }
        return result.build();
    }
}

