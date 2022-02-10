//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'unlabeled_load_statistics.g.dart';

abstract class UnlabeledLoadStatistics implements Built<UnlabeledLoadStatistics, UnlabeledLoadStatisticsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    UnlabeledLoadStatistics._();

    static void _initializeBuilder(UnlabeledLoadStatisticsBuilder b) => b;

    factory UnlabeledLoadStatistics([void updates(UnlabeledLoadStatisticsBuilder b)]) = _$UnlabeledLoadStatistics;

    @BuiltValueSerializer(custom: true)
    static Serializer<UnlabeledLoadStatistics> get serializer => _$UnlabeledLoadStatisticsSerializer();
}

class _$UnlabeledLoadStatisticsSerializer implements StructuredSerializer<UnlabeledLoadStatistics> {

    @override
    final Iterable<Type> types = const [UnlabeledLoadStatistics, _$UnlabeledLoadStatistics];
    @override
    final String wireName = r'UnlabeledLoadStatistics';

    @override
    Iterable<Object> serialize(Serializers serializers, UnlabeledLoadStatistics object,
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
    UnlabeledLoadStatistics deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = UnlabeledLoadStatisticsBuilder();

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

