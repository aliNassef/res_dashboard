import '../core/utils/app_images.dart';

class ExpensisModel {
  final String img;
  final String title, date, amount;

  const ExpensisModel({
    required this.img,
    required this.title,
    required this.date,
    required this.amount,
  });
}

List<ExpensisModel> expensis = [
  ExpensisModel(
    img: Assets.imagesBalanceIcon,
    title: "Balance",
    date: "April 2022",
    amount: "- \$20.00",
  ),
  ExpensisModel(
    img: Assets.imagesIncomeSvg,
    title: "Income",
    date: "April 2022",
    amount: "- \$50.00",
  ),
  ExpensisModel(
    img: Assets.imagesInvestmentsIcon,
    title: "Expenses",
    date: "April 2022",
    amount: "- \$50.00",
  )
];
