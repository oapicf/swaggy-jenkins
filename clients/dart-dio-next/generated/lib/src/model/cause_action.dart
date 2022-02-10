//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/cause_user_id_cause.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cause_action.g.dart';

/// CauseAction
///
/// Properties:
/// * [class_] 
/// * [causes] 
abstract class CauseAction implements Built<CauseAction, CauseActionBuilder> {
    @BuiltValueField(wireName: r'_class')
    String? get class_;

    @BuiltValueField(wireName: r'causes')
    BuiltList<CauseUserIdCause>? get causes;

    CauseAction._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(CauseActionBuilder b) => b;

    factory CauseAction([void updates(CauseActionBuilder b)]) = _$CauseAction;

    @BuiltValueSerializer(custom: true)
    static Serializer<CauseAction> get serializer => _$CauseActionSerializer();
}

class _$CauseActionSerializer implements StructuredSerializer<CauseAction> {
    @override
    final Iterable<Type> types = const [CauseAction, _$CauseAction];

    @override
    final String wireName = r'CauseAction';

    @override
    Iterable<Object?> serialize(Serializers serializers, CauseAction object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
        if (object.causes != null) {
            result
                ..add(r'causes')
                ..add(serializers.serialize(object.causes,
                    specifiedType: const FullType(BuiltList, [FullType(CauseUserIdCause)])));
        }
        return result;
    }

    @override
    CauseAction deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CauseActionBuilder();

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
                case r'causes':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(CauseUserIdCause)])) as BuiltList<CauseUserIdCause>;
                    result.causes.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

