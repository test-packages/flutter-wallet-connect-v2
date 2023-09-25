import 'package:json_annotation/json_annotation.dart';

import 'extension.dart';

part 'proposal_namespace.g.dart';

@JsonSerializable(explicitToJson: true)
class ProposalNamespace {
  @JsonKey(includeIfNull: false)
  final List<String>? chains;
  final List<String> methods;
  final List<String> events;
  final List<Extension>? extensions;

  ProposalNamespace(
      {this.chains,
      required this.methods,
      required this.events,
      this.extensions});

  factory ProposalNamespace.fromJson(Map<String, dynamic> json) =>
      _$ProposalNamespaceFromJson(json);

  Map<String, dynamic> toJson() => _$ProposalNamespaceToJson(this);
}
