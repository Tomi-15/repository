import 'dart:convert';

import 'package:meta/meta.dart';

import '../repository.dart';
import 'transformer.dart';

/// A repository that saves json structures into a [Repository<String>].
class JsonToStringTransformer
    extends Transformer<Map<String, dynamic>, String> {
  JsonToStringTransformer({
    @required Repository<String> source,
  }) : super(
          fromSourceItem: (data) => json.decode(data) as Map<String, dynamic>,
          toSourceItem: json.encode,
          source: source,
        );
}
