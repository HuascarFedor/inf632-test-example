import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:unit_test_app/main.dart';

void main() {
  // Inicializamos el binding para los tests de integración
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Incrementar el contador al presionar el botón',
      (WidgetTester tester) async {
    // Construye la aplicación completa
    await tester.pumpWidget(const MyApp());

    // Verifica que el contador inicializa en 0
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Presiona el botón de incremento
    await tester.tap(find.byTooltip('Increment'));
    await tester
        .pumpAndSettle(); // Espera a que se completen los cambios visuales

    // Verifica que el contador incrementó a 1
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
