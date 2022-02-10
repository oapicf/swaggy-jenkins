//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'default_crumb_issuer.g.dart';

/// DefaultCrumbIssuer
///
/// Properties:
/// * [class_] 
/// * [crumb] 
/// * [crumbRequestField] 
abstract class DefaultCrumbIssuer implements Built<DefaultCrumbIssuer, DefaultCrumbIssuerBuilder> {
    @BuiltValueField(wireName: r'_class')
    String? get class_;

    @BuiltValueField(wireName: r'crumb')
    String? get crumb;

    @BuiltValueField(wireName: r'crumbRequestField')
    String? get crumbRequestField;

    DefaultCrumbIssuer._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(DefaultCrumbIssuerBuilder b) => b;

    factory DefaultCrumbIssuer([void updates(DefaultCrumbIssuerBuilder b)]) = _$DefaultCrumbIssuer;

    @BuiltValueSerializer(custom: true)
    static Serializer<DefaultCrumbIssuer> get serializer => _$DefaultCrumbIssuerSerializer();
}

class _$DefaultCrumbIssuerSerializer implements StructuredSerializer<DefaultCrumbIssuer> {
    @override
    final Iterable<Type> types = const [DefaultCrumbIssuer, _$DefaultCrumbIssuer];

    @override
    final String wireName = r'DefaultCrumbIssuer';

    @override
    Iterable<Object?> serialize(Serializers serializers, DefaultCrumbIssuer object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
        if (object.crumb != null) {
            result
                ..add(r'crumb')
                ..add(serializers.serialize(object.crumb,
                    specifiedType: const FullType(String)));
        }
        if (object.crumbRequestField != null) {
            result
                ..add(r'crumbRequestField')
                ..add(serializers.serialize(object.crumbRequestField,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    DefaultCrumbIssuer deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = DefaultCrumbIssuerBuilder();

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
                case r'crumb':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.crumb = valueDes;
                    break;
                case r'crumbRequestField':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.crumbRequestField = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

