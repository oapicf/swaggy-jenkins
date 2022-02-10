//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_monitor_data.g.dart';

/// ResponseTimeMonitorData
///
/// Properties:
/// * [class_] 
/// * [timestamp] 
/// * [average] 
abstract class ResponseTimeMonitorData implements Built<ResponseTimeMonitorData, ResponseTimeMonitorDataBuilder> {
    @BuiltValueField(wireName: r'_class')
    String? get class_;

    @BuiltValueField(wireName: r'timestamp')
    int? get timestamp;

    @BuiltValueField(wireName: r'average')
    int? get average;

    ResponseTimeMonitorData._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ResponseTimeMonitorDataBuilder b) => b;

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
    Iterable<Object?> serialize(Serializers serializers, ResponseTimeMonitorData object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
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
    ResponseTimeMonitorData deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseTimeMonitorDataBuilder();

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
                case r'timestamp':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.timestamp = valueDes;
                    break;
                case r'average':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.average = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

