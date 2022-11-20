import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_flutter_app/cubit/transaction_cubit.dart';
import 'package:new_flutter_app/shared/theme.dart';
import 'package:new_flutter_app/ui/widgets/transaction_card.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  void initState() {
    // TODO: implement initState
    context.read<TransactionCubit>().fetchTransaction();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionCubit, TransactionState>(
      builder: (context, state) {
        if (state is TransactionLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is TransactionSuccess) {
          if (state.transactions.isEmpty) {
            return Center(
              child: Text("There is no transaction"),
            );
          } else {
            return ListView.builder(
              clipBehavior: Clip.antiAlias,
              itemCount: state.transactions.length,
              padding: EdgeInsets.only(
                  right: defaultMargin,
                  left: defaultMargin,
                  bottom: 100,
                  top: 30),
              itemBuilder: (context, index) {
                return TransactionCard(state.transactions[index]);
              },
            );
          }
        }

        return Center(
          child: SizedBox(),
        );
      },
    );
  }
}
