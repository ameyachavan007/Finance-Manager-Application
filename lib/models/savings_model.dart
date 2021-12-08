class Savings {
  final String targetName;
  final double timePeriodInMonth;
  final int percent;
  final int emi;
  final double totalTargetAmount;

  Savings(
    this.targetName,
    this.timePeriodInMonth,
    this.totalTargetAmount,
    this.percent,
    this.emi,
  );
}
