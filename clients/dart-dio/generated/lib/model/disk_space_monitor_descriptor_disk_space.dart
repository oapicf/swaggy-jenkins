//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'disk_space_monitor_descriptor_disk_space.g.dart';

abstract class DiskSpaceMonitorDescriptorDiskSpace implements Built<DiskSpaceMonitorDescriptorDiskSpace, DiskSpaceMonitorDescriptorDiskSpaceBuilder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    @nullable
    @BuiltValueField(wireName: r'timestamp')
    int get timestamp;

    @nullable
    @BuiltValueField(wireName: r'path')
    String get path;

    @nullable
    @BuiltValueField(wireName: r'size')
    int get size;

    DiskSpaceMonitorDescriptorDiskSpace._();

    static void _initializeBuilder(DiskSpaceMonitorDescriptorDiskSpaceBuilder b) => b;

    factory DiskSpaceMonitorDescriptorDiskSpace([void updates(DiskSpaceMonitorDescriptorDiskSpaceBuilder b)]) = _$DiskSpaceMonitorDescriptorDiskSpace;

    @BuiltValueSerializer(custom: true)
    static Serializer<DiskSpaceMonitorDescriptorDiskSpace> get serializer => _$DiskSpaceMonitorDescriptorDiskSpaceSerializer();
}

class _$DiskSpaceMonitorDescriptorDiskSpaceSerializer implements StructuredSerializer<DiskSpaceMonitorDescriptorDiskSpace> {

    @override
    final Iterable<Type> types = const [DiskSpaceMonitorDescriptorDiskSpace, _$DiskSpaceMonitorDescriptorDiskSpace];
    @override
    final String wireName = r'DiskSpaceMonitorDescriptorDiskSpace';

    @override
    Iterable<Object> serialize(Serializers serializers, DiskSpaceMonitorDescriptorDiskSpace object,
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
        if (object.path != null) {
            result
                ..add(r'path')
                ..add(serializers.serialize(object.path,
                    specifiedType: const FullType(String)));
        }
        if (object.size != null) {
            result
                ..add(r'size')
                ..add(serializers.serialize(object.size,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    DiskSpaceMonitorDescriptorDiskSpace deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = DiskSpaceMonitorDescriptorDiskSpaceBuilder();

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
                case r'path':
                    result.path = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'size':
                    result.size = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
            }
        }
        return result.build();
    }
}

