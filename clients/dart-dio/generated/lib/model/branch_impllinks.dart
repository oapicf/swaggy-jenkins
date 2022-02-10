//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'branch_impllinks.g.dart';

abstract class BranchImpllinks implements Built<BranchImpllinks, BranchImpllinksBuilder> {

    @nullable
    @BuiltValueField(wireName: r'self')
    Link get self;

    @nullable
    @BuiltValueField(wireName: r'actions')
    Link get actions;

    @nullable
    @BuiltValueField(wireName: r'runs')
    Link get runs;

    @nullable
    @BuiltValueField(wireName: r'queue')
    Link get queue;

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    BranchImpllinks._();

    static void _initializeBuilder(BranchImpllinksBuilder b) => b;

    factory BranchImpllinks([void updates(BranchImpllinksBuilder b)]) = _$BranchImpllinks;

    @BuiltValueSerializer(custom: true)
    static Serializer<BranchImpllinks> get serializer => _$BranchImpllinksSerializer();
}

class _$BranchImpllinksSerializer implements StructuredSerializer<BranchImpllinks> {

    @override
    final Iterable<Type> types = const [BranchImpllinks, _$BranchImpllinks];
    @override
    final String wireName = r'BranchImpllinks';

    @override
    Iterable<Object> serialize(Serializers serializers, BranchImpllinks object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.self != null) {
            result
                ..add(r'self')
                ..add(serializers.serialize(object.self,
                    specifiedType: const FullType(Link)));
        }
        if (object.actions != null) {
            result
                ..add(r'actions')
                ..add(serializers.serialize(object.actions,
                    specifiedType: const FullType(Link)));
        }
        if (object.runs != null) {
            result
                ..add(r'runs')
                ..add(serializers.serialize(object.runs,
                    specifiedType: const FullType(Link)));
        }
        if (object.queue != null) {
            result
                ..add(r'queue')
                ..add(serializers.serialize(object.queue,
                    specifiedType: const FullType(Link)));
        }
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    BranchImpllinks deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = BranchImpllinksBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'self':
                    result.self.replace(serializers.deserialize(value,
                        specifiedType: const FullType(Link)) as Link);
                    break;
                case r'actions':
                    result.actions.replace(serializers.deserialize(value,
                        specifiedType: const FullType(Link)) as Link);
                    break;
                case r'runs':
                    result.runs.replace(serializers.deserialize(value,
                        specifiedType: const FullType(Link)) as Link);
                    break;
                case r'queue':
                    result.queue.replace(serializers.deserialize(value,
                        specifiedType: const FullType(Link)) as Link);
                    break;
                case r'_class':
                    result.class_ = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

