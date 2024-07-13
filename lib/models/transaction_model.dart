class TransactionModel{
  final String title,amount,date;
  final bool isWithdrawal;

  const TransactionModel( {required this.title, required this.amount, required this.date, required this.isWithdrawal,});
}