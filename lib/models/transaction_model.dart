class TransactionModel{
  final String title,amount,date;
  final bool isWithdrawal;

  TransactionModel(this.isWithdrawal, {required this.title, required this.amount, required this.date,});
}