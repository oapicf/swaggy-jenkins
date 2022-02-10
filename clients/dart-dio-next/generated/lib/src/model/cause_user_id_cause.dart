//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cause_user_id_cause.g.dart';

/// CauseUserIdCause
///
/// Properties:
/// * [class_] 
/// * [shortDescription] 
/// * [userId] 
/// * [userName] 
abstract class CauseUserIdCause implements Built<CauseUserIdCause, CauseUserIdCauseBuilder> {
    @BuiltValueField(wireName: r'_class')
    String? get class_;

    @BuiltValueField(wireName: r'shortDescription')
    String? get shortDescription;

    @BuiltValueField(wireName: r'userId')
    String? get userId;

    @BuiltValueField(wireName: r'userName')
    String? get userName;

    CauseUserIdCause._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(CauseUserIdCauseBuilder b) => b;

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
    Iterable<Object?> serialize(Serializers serializers, CauseUserIdCause object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
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
    CauseUserIdCause deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CauseUserIdCauseBuilder();

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
                case r'shortDescription':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.shortDescription = valueDes;
                    break;
                case r'userId':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.userId = valueDes;
                    break;
                case r'userName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.userName = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

