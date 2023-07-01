import 'package:localstorage/localstorage.dart';
import 'dart:developer';

class WalletRepo {
  WalletRepo();
  LocalStorage storage = LocalStorage('wallet_amount');

  Future<bool> isWalletRepoReady() async {
    return storage.ready;
  }

  Future<String> getAmountInWallet() async {
    await storage.ready;
    String amount = storage.getItem('wallet_amount');
    return amount;
  }

  final Future<String> calculation = Future<String>.delayed(
    const Duration(seconds: 2),
    () => 'Data Loaded',
  );

  Future<bool> setAmountInWallet(double amountToAdd) async {
    await storage.ready;
    double amount = await storage.getItem('wallet_amount');
    amount += amountToAdd;
    await storage.setItem('wallet_amount', amount);
    return true;
  }
}
