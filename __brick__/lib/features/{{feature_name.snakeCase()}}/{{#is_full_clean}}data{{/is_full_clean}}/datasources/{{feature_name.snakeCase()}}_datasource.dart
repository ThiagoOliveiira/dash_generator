// Definimos a interface (contrato) do DataSource
abstract class {{feature_name.pascalCase()}}DataSource {
  Future<void> function();
}

// Implementação concreta
class {{feature_name.pascalCase()}}DataSourceImpl implements {{feature_name.pascalCase()}}DataSource {
  // Se você usar o Dio ou Http, injetaria o cliente aqui pelo construtor
  // final HttpClient client;
  // {{feature_name.pascalCase()}}DataSourceImpl(this.client);

  @override
  Future<void> function() async {
    try {
      // Exemplo de lógica de chamada de API:
      // final response = await client.get('/{{feature_name}}');
      // return response.data;
      
      // return {}; // Retorno mock para o template
    } catch (e) {
      // Aqui você lança exceções específicas de infraestrutura
      rethrow;
    }
  }
}