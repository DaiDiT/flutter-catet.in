enum FundingSourceType { account, eWallet, cash }

extension FundingSourceTypeX on FundingSourceType {
  String get value {
    switch (this) {
      case FundingSourceType.account:
        return 'Account';
      case FundingSourceType.eWallet:
        return 'e-Wallet';
      case FundingSourceType.cash:
        return 'Cash';
    }
  }

  static FundingSourceType fromString(String s) {
    switch (s) {
      case 'Account':
        return FundingSourceType.account;
      case 'e-Wallet':
        return FundingSourceType.eWallet;
      case 'Cash':
        return FundingSourceType.cash;
      default:
        throw ArgumentError('Unknown FundingSourceType: $s');
    }
  }
}
