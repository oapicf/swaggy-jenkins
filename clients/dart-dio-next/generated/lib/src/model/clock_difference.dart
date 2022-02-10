//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'clock_difference.g.dart';

/// ClockDifference
///
/// Properties:
/// * [class_] 
/// * [diff] 
abstract class ClockDifference implements Built<ClockDifference, ClockDifferenceBuilder> {
    @BuiltValueField(wireName: r'_class')
    String? get class_;

    @BuiltValueField(wireName: r'diff')
    int? get diff;

    ClockDifference._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ClockDifferenceBuilder b) => b;

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
    Iterable<Object?> serialize(Serializers serializers, ClockDifference object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
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
    ClockDifference deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ClockDifferenceBuilder();

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
                case r'diff':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.diff = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

