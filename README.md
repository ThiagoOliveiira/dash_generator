# 🚀 Flutter Architecture Pro & Design System

Este projeto é um **Boilerplate de Alta Performance** e um gerador de código (Mason) projetado para acelerar o desenvolvimento de aplicativos Flutter profissionais. Ele une o rigor da **Clean Architecture** com a flexibilidade de um **Design System (DS)** escalável.

## 🎯 Para que serve?

Este projeto resolve o problema da "página em branco" e da falta de padronização em equipes. Com ele, você gera funcionalidades completas (Feature-Driven) em segundos, garantindo que todo o time siga as mesmas regras de:

  * **Injeção de Dependências** (GetIt)
  * **Gerenciamento de Estado** (Bloc/Cubit)
  * **Navegação** (GoRouter)
  * **Tematização Dinâmica** (Design System com Dark/Light Mode)

## 🏗️ A Arquitetura

O projeto segue os princípios da **Clean Architecture** segmentada por Features:

  * **Data:** Repositórios, Models e DataSources (integração com APIs/Local).
  * **Domain:** Entidades e Casos de Uso (a regra de negócio pura).
  * **Presentation:** UI, Blocs/Cubits e Widgets.
  * **Design System:** Tokens de cores, tipografia e espaçamentos centralizados.

## 🛠️ Como usar o Gerador (Mason)

Não criamos arquivos manualmente. Utilizamos o **Mason** para manter a consistência.

1.  Tenha o Mason instalado: `dart pub global activate mason_cli`
2.  Inicie o brick: `mason make feature_base`
3.  Responda às perguntas no terminal:
      * *Nome da feature?* (ex: login)
      * *Tipo?* (full\_clean ou ui\_only)
      * *Estado?* (bloc ou cubit)

O gerador criará todas as pastas, arquivos, contratos e até uma página de exemplo (Showcase) integrada ao Design System.

-----

## 🎨 O Design System

Esqueça o uso de cores fixas como `Colors.blue`. Nosso DS utiliza **Tokens Semânticos**:

```dart
// Exemplo de uso profissional
Text(
  'Olá Mundo',
  style: context.ds.typography.h1.copyWith(
    color: context.ds.colors.primary,
  ),
)
```

O app reage automaticamente ao tema do sistema (Dark/Light) graças aos pares de cores de contraste (`onPrimary`, `onSurface`, etc.).

-----

## 👨‍💻 Sobre o Criador

**Thiago Oliveira**
*Flutter Developer & Architect*

Sou um desenvolvedor focado em criar soluções escaláveis e ferramentas que otimizam o fluxo de trabalho de times de tecnologia. Acredito que a boa arquitetura não deve ser um fardo, mas sim uma aliada da velocidade de entrega.


<a href="https://www.linkedin.com/in/thiago-oliveira-3a93a1181/">
  <img src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/linked-in-alt.svg" alt="linkedin" width="35" height="35" />
</a>&nbsp;&nbsp;&nbsp;
<a href="https://github.com/ThiagoOliveiira](https://github.com/ThiagoOliveiira">
  <img src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/github.svg" alt="github" width="35" height="35" />
</a>


-----

### 📝 Licença

Este projeto está sob a licença MIT. Sinta-se à vontade para usar, modificar e distribuir.

-----# dash_generator
