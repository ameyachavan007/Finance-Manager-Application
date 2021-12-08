import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:save/data/constants.dart';
import 'package:save/data/data.dart';
import 'package:save/models/savings_model.dart';
import 'package:save/models/transaction_model.dart';
import 'package:save/widgets/income_expense.dart';
import 'package:save/widgets/savings_card.dart';
import 'package:save/widgets/transaction_card.dart';
import 'add_transaction.dart';

class Home extends StatefulWidget {
  final Function callFromMenu;
  final bool isOpen;
  const Home({
    Key key,
    this.callFromMenu,
    this.isOpen,
  }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

// bool isOpen = false;
// double xOffset = 0;
// double yOffset = 0;
// double scaleFactor = 1;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(widget.isOpen ? 40.0 : 0.0),
              color: kPrimaryColor),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 8, right: 8, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: widget.callFromMenu,
                      child: FaIcon(
                        FontAwesomeIcons.bars,
                        color: Colors.white,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Available balance",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Rs.30000",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                        image: AssetImage('assets/images/user0.jpg'),
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              IncomeExpenseCard(
                month: "September",
                year: 2020,
                income: 1760,
                expense: 345.51,
              ),
              Padding(
                padding: EdgeInsets.only(left: 8, top: 20),
                child: Text(
                  "Savings Targets",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ),
              new Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: savings.length,
                  itemBuilder: (BuildContext context, int index) {
                    Savings saving = savings[index];
                    return SavingsCard(mySaving: saving);
                  },
                ),
              ),

              // SavingsCard()
            ],
          ),
        ),
        Positioned(
          bottom: 5,
          right: 15,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddTransactions(),
                ),
              );
            },
            child: FaIcon(
              FontAwesomeIcons.plus,
              color: Colors.white,
              size: 20,
            ),
            backgroundColor: Color(0xff6009ed),
          ),
        ),
      ],
    );
  }
}
