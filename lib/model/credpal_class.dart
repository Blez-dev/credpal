class CredpalClass {
  final String flag;

  CredpalClass({
    this.flag = "0",
  });

  CredpalClass copyWith({
    String? flag,
  }) {
    return CredpalClass(
      flag: flag ?? this.flag,
    );
  }
}
