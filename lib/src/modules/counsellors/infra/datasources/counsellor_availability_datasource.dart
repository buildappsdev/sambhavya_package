import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sambhavya_package/sambhavya_package.dart';
import 'package:sambhavya_package/src/modules/counsellors/infra/repositories/counsellor_db_repository.dart';

final counsellorAvailabilityProvider =
    FutureProvider.family<Map<String, List<String>>, Counsellor>(
        (ref, counsellor) async {
  return await ref
      .read(counsellorDatabaseProvider)
      .getCounsellorAvailability(counsellor);
});
