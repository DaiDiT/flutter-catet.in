import 'package:catetin/data/repository/funding_source_repository.dart';
import 'package:catetin/ui/view_models/state/funding_source_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FundingSourceViewModel extends Notifier<FundingSourceState> {
  @override
  FundingSourceState build() {
    return FundingSourceState();
  }

  Future<void> getAllFundingSources() async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      final fundingSources = await ref.read(fundingSourceRepositoryProvider).getAllFundingSources();
      state = state.copyWith(isLoading: false, fundingSources: fundingSources);
    } catch (e, s) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to load funding sources: $e\n$s',
      );
    }
  }

  Future<void> getFundingSourceById(int id) async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      final fundingSource = await ref.read(fundingSourceRepositoryProvider).getOneFundingSourceById(id);
      state = state.copyWith(isLoading: false, fundingSource: fundingSource);
    } catch (e, s) {
      state = state.copyWith(isLoading: false, error: 'Failed to load funding source: $e\n$s');
    }
  }
}
