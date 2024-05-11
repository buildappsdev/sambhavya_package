import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sambhavya_package/sambhavya_package.dart';
import 'package:sambhavya_package/src/modules/counsellors/infra/repositories/counsellor_db_repository.dart';

final counsellorAvailabilityProvider = FutureProvider.family
    .autoDispose<Map<int, List<int>>, Counsellor>((ref, counsellor) async {
  return await ref
      .read(counsellorDatabaseProvider)
      .getCounsellorAvailability(counsellor);
});
