//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_monitor_data.g.dart';

abstract class ResponseTimeMonitorData implements Built<ResponseTimeMonitorData, ResponseTimeMonitorDataBuilder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    @nullable
    @BuiltValueField(wireName: r'timestamp')
    int get timestamp;

    @nullable
    @BuiltValueField(wireName: r'average')
    int get average;

    ResponseTimeMonitorData._();

    static void _initializeBuilder(ResponseTimeMonitorDataBuilder b) => b;

    factory ResponseTimeMonitorData([void updates(ResponseTimeMonitorDataBuilder b)]) = _$ResponseTimeMonitorData;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseTimeMonitorData> get serializer => _$ResponseTimeMonitorDataSerializer();
}

class _$ResponseTimeMonitorDataSerializer implements StructuredSerializer<ResponseTimeMonitorData> {

    @override
    final Iterable<Type> types = const [ResponseTimeMonitorData, _$ResponseTimeMonitorData];
    @override
    final String wireName = r'ResponseTimeMonitorData';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseTimeMonitorData object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
        if (object.timestamp != null) {
            result
                ..add(r'timestamp')
                ..add(serializers.serialize(object.timestamp,
                    specifiedType: const FullType(int)));
        }
        if (object.average != null) {
            result
                ..add(r'average')
                ..add(serializers.serialize(object.average,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    ResponseTimeMonitorData deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseTimeMonitorDataBuilder();

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
                case r'timestamp':
                    result.timestamp = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'average':
                    result.average = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
            }
        }
        return result.build();
    }
}

