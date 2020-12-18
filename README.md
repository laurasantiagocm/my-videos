# my-videos
## Teste Mercadapp - Ruby on Rails - Meus Vídeos

Objetivo: desenvolver aplicação MEUS VÍDEOS com primor.

Nesse teste você desenvolverá a aplicação MEUS VÍDEOS, que é uma forma customizada de ver o seus vídeos favoritos, categorizá-los e comentar sobre eles. Tente ser objetivo e criativo ao mesmo tempo. 

Você poderá escolher uma dentre duas formas de entrega:
- Vídeo mostrando a aplicação funcionando + código fonte;
- Link do projeto no ar + código fonte (*preferível*).

Você deverá fazer um fork neste repositório.

A entrega deverá ser efetuada até às **23:59 do dia combinado** (verificar com seu entrevistador). O prazo não deverá passar **2 dias**.

Para esse teste você deve usar o **Rails 4.2.10** e **PostgreSQL**.
O código deverá ser escrito em **inglês**.
Os commits deverão estar no imperativo, primeira letra maiúscula e em inglês.

Espera-se também que o código seja de fácil leitura, buscando seguir os princípios do clean code a fim de tornar mais fácil a manutenção do mesmo.

**Elementos básicos:**
- CATEGORIA: divisão que o vídeo se inclui, pode ser marcada como favorita;
- COMENTÁRIO: tem um autor (nome), o texto em si e data de criação.
- VIDEO - url do vídeo no youtube, título, com categoria associada e comentários (não são comentários do youtube e sim cadastrados na aplicação VíDEO FÁCIL)

**Funcionalidades básicas:**
- Cadastrar uma categoria, indicando se ela é favorita ou não;
- Cadastrar vídeo e associar com uma categoria;
- Na tela principal (root), mostrar uma lista de vídeos divididos por categoria, mas somente das categorias favoritas;
- Todas as categorias devem ter um link que leva para uma tela mostrando todos os vídeos da categoria;
- Clicar em um desses itens da tela principal leva para uma tela onde o vídeo pode ser executado. Nessa tela é possível visualizar os comentários associados e cadastrar novos comentários.

**Bônus - criar uma request GET (API)**
Parâmetros: id da Categoria.
Retorno: conjunto de vídeos (links, títulos) no formato JSON (sem comentários).

OBS: desde que a essência dos requisitos básicos sejam respeitados, aceitamos mudanças na arquitetura da informação proposta e nas disposições das telas.
Estaremos a disposição para tirar dúvidas sobre o projeto pelo Telegram: @phxev (Paulo Henrique) e @lorranmonteiro (Lorran). 

Boa sorte!
