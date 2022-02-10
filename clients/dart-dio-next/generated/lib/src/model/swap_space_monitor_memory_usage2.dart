//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'swap_space_monitor_memory_usage2.g.dart';

/// SwapSpaceMonitorMemoryUsage2
///
/// Properties:
/// * [class_] 
/// * [availablePhysicalMemory] 
/// * [availableSwapSpace] 
/// * [totalPhysicalMemory] 
/// * [totalSwapSpace] 
abstract class SwapSpaceMonitorMemoryUsage2 implements Built<SwapSpaceMonitorMemoryUsage2, SwapSpaceMonitorMemoryUsage2Builder> {
    @BuiltValueField(wireName: r'_class')
    String? get class_;

    @BuiltValueField(wireName: r'availablePhysicalMemory')
    int? get availablePhysicalMemory;

    @BuiltValueField(wireName: r'availableSwapSpace')
    int? get availableSwapSpace;

    @BuiltValueField(wireName: r'totalPhysicalMemory')
    int? get totalPhysicalMemory;

    @BuiltValueField(wireName: r'totalSwapSpace')
    int? get totalSwapSpace;

    SwapSpaceMonitorMemoryUsage2._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(SwapSpaceMonitorMemoryUsage2Builder b) => b;

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
    Iterable<Object?> serialize(Serializers serializers, SwapSpaceMonitorMemoryUsage2 object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
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
    SwapSpaceMonitorMemoryUsage2 deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = SwapSpaceMonitorMemoryUsage2Builder();

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
                case r'availablePhysicalMemory':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.availablePhysicalMemory = valueDes;
                    break;
                case r'availableSwapSpace':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.availableSwapSpace = valueDes;
                    break;
                case r'totalPhysicalMemory':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.totalPhysicalMemory = valueDes;
                    break;
                case r'totalSwapSpace':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.totalSwapSpace = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

