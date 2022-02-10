//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hudsonassigned_labels.g.dart';

abstract class HudsonassignedLabels implements Built<HudsonassignedLabels, HudsonassignedLabelsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    HudsonassignedLabels._();

    static void _initializeBuilder(HudsonassignedLabelsBuilder b) => b;

    factory HudsonassignedLabels([void updates(HudsonassignedLabelsBuilder b)]) = _$HudsonassignedLabels;

    @BuiltValueSerializer(custom: true)
    static Serializer<HudsonassignedLabels> get serializer => _$HudsonassignedLabelsSerializer();
}

class _$HudsonassignedLabelsSerializer implements StructuredSerializer<HudsonassignedLabels> {

    @override
    final Iterable<Type> types = const [HudsonassignedLabels, _$HudsonassignedLabels];
    @override
    final String wireName = r'HudsonassignedLabels';

    @override
    Iterable<Object> serialize(Serializers serializers, HudsonassignedLabels object,
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
    HudsonassignedLabels deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = HudsonassignedLabelsBuilder();

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

