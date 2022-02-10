//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'swap_space_monitor_memory_usage2.g.dart';

abstract class SwapSpaceMonitorMemoryUsage2 implements Built<SwapSpaceMonitorMemoryUsage2, SwapSpaceMonitorMemoryUsage2Builder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    @nullable
    @BuiltValueField(wireName: r'availablePhysicalMemory')
    int get availablePhysicalMemory;

    @nullable
    @BuiltValueField(wireName: r'availableSwapSpace')
    int get availableSwapSpace;

    @nullable
    @BuiltValueField(wireName: r'totalPhysicalMemory')
    int get totalPhysicalMemory;

    @nullable
    @BuiltValueField(wireName: r'totalSwapSpace')
    int get totalSwapSpace;

    SwapSpaceMonitorMemoryUsage2._();

    static void _initializeBuilder(SwapSpaceMonitorMemoryUsage2Builder b) => b;

    factory SwapSpaceMonitorMemoryUsage2([void updates(SwapSpaceMonitorMemoryUsage2Builder b)]) = _$SwapSpaceMonitorMemoryUsage2;

    @BuiltValueSerializer(custom: true)
    static Serializer<SwapSpaceMonitorMemoryUsage2> get serializer => _$SwapSpaceMonitorMemoryUsage2Serializer();
}

class _$SwapSpaceMonitorMemoryUsage2Serializer implements StructuredSerializer<SwapSpaceMonitorMemoryUsage2> {

    @override
    final Iterable<Type> types = const [SwapSpaceMonitorMemoryUsage2, _$SwapSpaceMonitorMemoryUsage2];
    @override
    final String wireName = r'SwapSpaceMonitorMemoryUsage2';

    @override
    Iterable<Object> serialize(Serializers serializers, SwapSpaceMonitorMemoryUsage2 object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
        if (object.availablePhysicalMemory != null) {
            result
                ..add(r'availablePhysicalMemory')
                ..add(serializers.serialize(object.availablePhysicalMemory,
                    specifiedType: const FullType(int)));
        }
        if (object.availableSwapSpace != null) {
            result
                ..add(r'availableSwapSpace')
                ..add(serializers.serialize(object.availableSwapSpace,
                    specifiedType: const FullType(int)));
        }
        if (object.totalPhysicalMemory != null) {
            result
                ..add(r'totalPhysicalMemory')
                ..add(serializers.serialize(object.totalPhysicalMemory,
                    specifiedType: const FullType(int)));
        }
        if (object.totalSwapSpace != null) {
            result
                ..add(r'totalSwapSpace')
                ..add(serializers.serialize(object.totalSwapSpace,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    SwapSpaceMonitorMemoryUsage2 deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = SwapSpaceMonitorMemoryUsage2Builder();

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
                case r'availablePhysicalMemory':
                    result.availablePhysicalMemory = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'availableSwapSpace':
                    result.availableSwapSpace = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'totalPhysicalMemory':
                    result.totalPhysicalMemory = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'totalSwapSpace':
                    result.totalSwapSpace = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
            }
        }
        return result.build();
    }
}

