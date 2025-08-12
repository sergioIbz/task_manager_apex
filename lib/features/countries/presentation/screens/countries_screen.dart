import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:task_manager_apex/features/countries/presentation/providers/get_country_name_and_flag_provider.dart';

class CountriesScreen extends ConsumerWidget {
  const CountriesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(getCountryNameAndFlagProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Países')),
      body: state.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
        data: (either) => either.fold(
          (failure) => Center(child: Text('Error: ${failure.toString()}')),
          (countries) => ListView.builder(
            itemCount: countries.length,
            itemBuilder: (context, index) {
              final c = countries[index];
              return ListTile(
                onTap: () => context.push('/country',extra: c.countryCode),
                leading: Text(c.flagIcon, style: const TextStyle(fontSize: 24)),
                title: Text(c.countryName),
                subtitle: Text(c.countryCode),
              );
            },
          ),
        ),
      ),
    );
  }
}
