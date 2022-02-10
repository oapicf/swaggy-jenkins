//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cause_user_id_cause.g.dart';

abstract class CauseUserIdCause implements Built<CauseUserIdCause, CauseUserIdCauseBuilder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    @nullable
    @BuiltValueField(wireName: r'shortDescription')
    String get shortDescription;

    @nullable
    @BuiltValueField(wireName: r'userId')
    String get userId;

    @nullable
    @BuiltValueField(wireName: r'userName')
    String get userName;

    CauseUserIdCause._();

    static void _initializeBuilder(CauseUserIdCauseBuilder b) => b;

    factory CauseUserIdCause([void updates(CauseUserIdCauseBuilder b)]) = _$CauseUserIdCause;

    @BuiltValueSerializer(custom: true)
    static Serializer<CauseUserIdCause> get serializer => _$CauseUserIdCauseSerializer();
}

class _$CauseUserIdCauseSerializer implements StructuredSerializer<CauseUserIdCause> {

    @override
    final Iterable<Type> types = const [CauseUserIdCause, _$CauseUserIdCause];
    @override
    final String wireName = r'CauseUserIdCause';

    @override
    Iterable<Object> serialize(Serializers serializers, CauseUserIdCause object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
        if (object.shortDescription != null) {
            result
                ..add(r'shortDescription')
                ..add(serializers.serialize(object.shortDescription,
                    specifiedType: const FullType(String)));
        }
        if (object.userId != null) {
            result
                ..add(r'userId')
                ..add(serializers.serialize(object.userId,
                    specifiedType: const FullType(String)));
        }
        if (object.userName != null) {
            result
                ..add(r'userName')
                ..add(serializers.serialize(object.userName,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    CauseUserIdCause deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CauseUserIdCauseBuilder();

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
                case r'shortDescription':
                    result.shortDescription = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'userId':
                    result.userId = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'userName':
                    result.userName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

