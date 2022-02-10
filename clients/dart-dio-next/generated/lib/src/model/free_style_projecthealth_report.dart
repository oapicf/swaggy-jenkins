//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'free_style_projecthealth_report.g.dart';

/// FreeStyleProjecthealthReport
///
/// Properties:
/// * [description] 
/// * [iconClassName] 
/// * [iconUrl] 
/// * [score] 
/// * [class_] 
abstract class FreeStyleProjecthealthReport implements Built<FreeStyleProjecthealthReport, FreeStyleProjecthealthReportBuilder> {
    @BuiltValueField(wireName: r'description')
    String? get description;

    @BuiltValueField(wireName: r'iconClassName')
    String? get iconClassName;

    @BuiltValueField(wireName: r'iconUrl')
    String? get iconUrl;

    @BuiltValueField(wireName: r'score')
    int? get score;

    @BuiltValueField(wireName: r'_class')
    String? get class_;

    FreeStyleProjecthealthReport._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(FreeStyleProjecthealthReportBuilder b) => b;

    factory FreeStyleProjecthealthReport([void updates(FreeStyleProjecthealthReportBuilder b)]) = _$FreeStyleProjecthealthReport;

    @BuiltValueSerializer(custom: true)
    static Serializer<FreeStyleProjecthealthReport> get serializer => _$FreeStyleProjecthealthReportSerializer();
}

class _$FreeStyleProjecthealthReportSerializer implements StructuredSerializer<FreeStyleProjecthealthReport> {
    @override
    final Iterable<Type> types = const [FreeStyleProjecthealthReport, _$FreeStyleProjecthealthReport];

    @override
    final String wireName = r'FreeStyleProjecthealthReport';

    @override
    Iterable<Object?> serialize(Serializers serializers, FreeStyleProjecthealthReport object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.description != null) {
            result
                ..add(r'description')
                ..add(serializers.serialize(object.description,
                    specifiedType: const FullType(String)));
        }
        if (object.iconClassName != null) {
            result
                ..add(r'iconClassName')
                ..add(serializers.serialize(object.iconClassName,
                    specifiedType: const FullType(String)));
        }
        if (object.iconUrl != null) {
            result
                ..add(r'iconUrl')
                ..add(serializers.serialize(object.iconUrl,
                    specifiedType: const FullType(String)));
        }
        if (object.score != null) {
            result
                ..add(r'score')
                ..add(serializers.serialize(object.score,
                    specifiedType: const FullType(int)));
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
    FreeStyleProjecthealthReport deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = FreeStyleProjecthealthReportBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'description':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.description = valueDes;
                    break;
                case r'iconClassName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.iconClassName = valueDes;
                    break;
                case r'iconUrl':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.iconUrl = valueDes;
                    break;
                case r'score':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.score = valueDes;
                    break;
                case r'_class':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.class_ = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

