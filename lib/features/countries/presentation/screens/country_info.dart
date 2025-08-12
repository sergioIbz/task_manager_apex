import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/get_country_info_provider.dart';

class CountryInfo extends ConsumerWidget {
  final String countryCode;
  const CountryInfo(this.countryCode, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(getCountryInfoProvider(countryCode));
    return Scaffold(
      appBar: AppBar(title: const Text('Información del país')),
      body: state.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => _ErrorWidget(),
        data: (either) => either.fold(
          (failure) => _ErrorWidget(),
          (country) => ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Row(
                children: [
                  Text(country.emoji, style: const TextStyle(fontSize: 40)),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      country.name,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              _item(context, 'Código', country.code),
              _item(context, 'Nativo', country.native),
              _item(context, 'Teléfono', '+${country.phone}'),
              _item(context, 'Continente', country.continent.name),
              _item(context, 'Capital', country.capital),
              _item(context, 'Moneda', country.currency),
              _item(context, 'Idiomas', country.languages.map((e) => e.name).join(', ')),
              _item(context, 'Emoji Unicode', country.emojiU),
            ],
          ),
        ),
      ),
    );
  }

  Widget _item(BuildContext context, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 110,
            child: Text(
              label,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}

class _ErrorWidget extends StatelessWidget {
  const _ErrorWidget();

  @override
  Widget build(BuildContext context) {
    return Center(child: Padding(
      padding: const EdgeInsets.all(20),
      child: Text('No hay suficiente información para este país'),
    ));
  }
}
