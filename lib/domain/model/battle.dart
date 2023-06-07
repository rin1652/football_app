class Battle {
  Battle({
    required this.id,
    required this.teamNameCreateId,
    this.teamNameJoinId,
    required this.yardId,
    required this.note,
    required this.date,
    required this.hour,
  });
  final String id;
  final String teamNameCreateId;
  final String? teamNameJoinId;
  final String yardId;
  final String note;
  final DateTime date;
  final String hour;
}
