-- TRILHAS (Conteúdo Rico para a tela de Detalhes)
INSERT INTO TB_SKILLBRIDGE_TRILHA (tx_titulo, tx_descricao, nm_autor, st_favorito, tx_conteudo)
VALUES ('Inteligência Artificial Generativa', 'Domine o ChatGPT e Midjourney para o dia a dia.', 'FIAP', 'N',
'A Inteligência Artificial Generativa refere-se a algoritmos capazes de criar novos conteúdos, incluindo texto, imagens, áudio e vídeo. Diferente da IA tradicional que analisa dados para classificação ou predição, a IA Generativa usa modelos como Transformers (GPT) para gerar respostas originais.

Pontos Chave:
1. LLMs (Large Language Models): Modelos treinados em vastas quantidades de texto.
2. Engenharia de Prompt: A arte de formular entradas para obter as melhores saídas da IA.
3. Ética: O uso responsável para evitar plágio e desinformação.

No futuro do trabalho, saber colaborar com a IA será mais importante do que competir com ela.');

INSERT INTO TB_SKILLBRIDGE_TRILHA (tx_titulo, tx_descricao, nm_autor, st_favorito, tx_conteudo)
VALUES ('React Native com Expo', 'Crie apps incríveis para Android e iOS.', 'Alura', 'Y',
'React Native é um framework que permite o desenvolvimento de aplicativos móveis nativos usando React (JavaScript). O Expo é um conjunto de ferramentas construído em torno do React Native que simplifica muito o processo de desenvolvimento, teste e deploy.

Principais Conceitos:
- Components: Blocos de construção da UI (View, Text, Image).
- Props: Dados passados de pai para filho.
- State: Dados internos que controlam o comportamento do componente.
- Hooks: Funções como useState e useEffect para gerenciar ciclo de vida.

Com Expo, você pode testar seu app em tempo real no seu dispositivo físico sem precisar instalar o Android Studio ou Xcode inicialmente.');

INSERT INTO TB_SKILLBRIDGE_TRILHA (tx_titulo, tx_descricao, nm_autor, st_favorito, tx_conteudo)
VALUES ('Liderança Inclusiva', 'Gestão de equipes diversas no futuro do trabalho.', 'Harvard', 'N',
'Liderança inclusiva é a capacidade de gerenciar equipes diversas de forma que todos se sintam valorizados e respeitados. Em um mundo globalizado e remoto, líderes precisam desenvolver empatia e inteligência cultural.

Pilares:
1. Consciência de Viés: Reconhecer seus próprios preconceitos inconscientes.
2. Curiosidade: Estar aberto a diferentes perspectivas.
3. Colaboração: Fomentar um ambiente onde todos têm voz.

Estudos mostram que equipes diversas e inclusivas são mais inovadoras e performam melhor financeiramente.');

INSERT INTO TB_SKILLBRIDGE_TRILHA (tx_titulo, tx_descricao, nm_autor, st_favorito, tx_conteudo)
VALUES ('DevOps & Cloud Computing', 'Escalabilidade com AWS e Azure.', 'Microsoft', 'N',
'DevOps não é apenas uma ferramenta, é uma cultura que une desenvolvimento (Dev) e operações (Ops) para encurtar o ciclo de desenvolvimento de sistemas e entregar software com maior qualidade.

A Computação em Nuvem (Cloud) é o alicerce dessa prática, permitindo recursos sob demanda.
Conceitos fundamentais:
- CI/CD (Integração e Entrega Contínuas): Automação de testes e deploy.
- IaC (Infraestrutura como Código): Gerenciar servidores através de arquivos de configuração.
- Containers (Docker): Empacotar aplicações para rodar em qualquer lugar.');

INSERT INTO TB_SKILLBRIDGE_TRILHA (tx_titulo, tx_descricao, nm_autor, st_favorito, tx_conteudo)
VALUES ('UX Design Futurista', 'Interfaces para VR e AR.', 'Google', 'Y',
'O User Experience (UX) Design está evoluindo das telas planas para ambientes imersivos. Com a chegada do Apple Vision Pro e Meta Quest, designers precisam pensar em interfaces espaciais.

Desafios do UX Imersivo:
- Ergonomia: Evitar fadiga física no usuário (ex: movimentos excessivos dos braços).
- Conforto Visual: Evitar enjoo de movimento (motion sickness).
- Interação Multimodal: Combinar olhar, gestos e voz.

O futuro do design é invisível e contextual, onde a tecnologia se adapta ao comportamento humano natural.');

-- QUESTOES DO QUIZ (Vinculadas pelo ID da trilha: 1, 2, 3, 4, 5)

-- Trilha 1 (IA Generativa)
INSERT INTO TB_SKILLBRIDGE_QUESTAO (trilha_id, enunciado, opcaoA, opcaoB, opcaoC, resposta_correta)
VALUES (1, 'Qual o foco principal da IA Generativa?', 'Classificar dados apenas', 'Criar novos conteúdos', 'Armazenar arquivos', 'B');

INSERT INTO TB_SKILLBRIDGE_QUESTAO (trilha_id, enunciado, opcaoA, opcaoB, opcaoC, resposta_correta)
VALUES (1, 'O que significa a sigla LLM?', 'Large Language Model', 'Low Latency Mode', 'Long Learning Method', 'A');

INSERT INTO TB_SKILLBRIDGE_QUESTAO (trilha_id, enunciado, opcaoA, opcaoB, opcaoC, resposta_correta)
VALUES (1, 'O que é Engenharia de Prompt?', 'Consertar hardware', 'Saber dar comandos à IA', 'Criar sites', 'B');

-- Trilha 2 (React Native)
INSERT INTO TB_SKILLBRIDGE_QUESTAO (trilha_id, enunciado, opcaoA, opcaoB, opcaoC, resposta_correta)
VALUES (2, 'Qual ferramenta facilita o uso do React Native?', 'Angular', 'Expo', 'Vue.js', 'B');

INSERT INTO TB_SKILLBRIDGE_QUESTAO (trilha_id, enunciado, opcaoA, opcaoB, opcaoC, resposta_correta)
VALUES (2, 'Qual Hook é usado para gerenciar estado?', 'useEffect', 'useRouter', 'useState', 'C');

INSERT INTO TB_SKILLBRIDGE_QUESTAO (trilha_id, enunciado, opcaoA, opcaoB, opcaoC, resposta_correta)
VALUES (2, 'React Native renderiza componentes nativos?', 'Sim, nativos reais', 'Não, é apenas um site', 'Só no iPhone', 'A');

-- Trilha 3 (Liderança)
INSERT INTO TB_SKILLBRIDGE_QUESTAO (trilha_id, enunciado, opcaoA, opcaoB, opcaoC, resposta_correta)
VALUES (3, 'O que é viés inconsciente?', 'Preconceito proposital', 'Associações automáticas mentais', 'Um erro de cálculo', 'B');

INSERT INTO TB_SKILLBRIDGE_QUESTAO (trilha_id, enunciado, opcaoA, opcaoB, opcaoC, resposta_correta)
VALUES (3, 'Equipes diversas tendem a ser:', 'Mais lentas', 'Menos criativas', 'Mais inovadoras', 'C');

INSERT INTO TB_SKILLBRIDGE_QUESTAO (trilha_id, enunciado, opcaoA, opcaoB, opcaoC, resposta_correta)
VALUES (3, 'Qual competência é chave na liderança inclusiva?', 'Saber Java', 'Empatia', 'Falar rápido', 'B');

-- Trilha 4 (DevOps)
INSERT INTO TB_SKILLBRIDGE_QUESTAO (trilha_id, enunciado, opcaoA, opcaoB, opcaoC, resposta_correta)
VALUES (4, 'O que significa a sigla CI?', 'Código Interno', 'Continuous Integration', 'Cloud Interface', 'B');

INSERT INTO TB_SKILLBRIDGE_QUESTAO (trilha_id, enunciado, opcaoA, opcaoB, opcaoC, resposta_correta)
VALUES (4, 'Qual ferramenta é famosa por Containers?', 'Word', 'Excel', 'Docker', 'C');

INSERT INTO TB_SKILLBRIDGE_QUESTAO (trilha_id, enunciado, opcaoA, opcaoB, opcaoC, resposta_correta)
VALUES (4, 'DevOps une quais áreas?', 'Design e Vendas', 'Dev e Ops (Operações)', 'RH e Financeiro', 'B');

-- Trilha 5 (UX Design)
INSERT INTO TB_SKILLBRIDGE_QUESTAO (trilha_id, enunciado, opcaoA, opcaoB, opcaoC, resposta_correta)
VALUES (5, 'O que significa UX?', 'User Experience', 'Unit Example', 'Ultra Xylophone', 'A');

INSERT INTO TB_SKILLBRIDGE_QUESTAO (trilha_id, enunciado, opcaoA, opcaoB, opcaoC, resposta_correta)
VALUES (5, 'Em VR, o que deve ser evitado?', 'Gráficos 3D', 'Fadiga física e enjoo', 'Sons imersivos', 'B');

INSERT INTO TB_SKILLBRIDGE_QUESTAO (trilha_id, enunciado, opcaoA, opcaoB, opcaoC, resposta_correta)
VALUES (5, 'Computação Espacial usa:', 'Apenas mouse', 'Gestos, olhar e voz', 'Teclado físico apenas', 'B');

-- SKILLS INICIAIS (Para teste)
INSERT INTO TB_SKILLBRIDGE_SKILL (nm_skill, ds_nivel) VALUES ('Java', 'Avançado');
INSERT INTO TB_SKILLBRIDGE_SKILL (nm_skill, ds_nivel) VALUES ('React Native', 'Intermediário');

-- VAGAS (Novas tabelas)
-- Note que os requisitos são separados por vírgula e espaço
INSERT INTO TB_SKILLBRIDGE_VAGA (titulo, empresa, nivel, localizacao, requisitos)
VALUES ('Desenvolvedor Java Back-end', 'Banco Itaú', 'Júnior', 'São Paulo (Híbrido)', 'Java,Spring Boot,SQL');

INSERT INTO TB_SKILLBRIDGE_VAGA (titulo, empresa, nivel, localizacao, requisitos)
VALUES ('Desenvolvedor Mobile React', 'Ifood', 'Pleno', 'Remoto', 'React Native,JavaScript,Expo');

INSERT INTO TB_SKILLBRIDGE_VAGA (titulo, empresa, nivel, localizacao, requisitos)
VALUES ('Analista de Dados Jr', 'Nubank', 'Júnior', 'São Paulo', 'Python,SQL,Inglês');

INSERT INTO TB_SKILLBRIDGE_VAGA (titulo, empresa, nivel, localizacao, requisitos)
VALUES ('DevOps Engineer', 'Mercado Livre', 'Sênior', 'Remoto', 'AWS,Docker,Java');

INSERT INTO TB_SKILLBRIDGE_VAGA (titulo, empresa, nivel, localizacao, requisitos)
VALUES ('Estágio em Desenvolvimento', 'FIAP', 'Estágio', 'Vila Olímpia', 'Lógica,Java,Comunicação');