![Power Bi](https://img.shields.io/badge/power_bi-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![Power Automate](https://img.shields.io/badge/Power_Automate-3A96DD?style=for-the-badge&logo=power-automate&logoColor=white)
![Microsoft Lists](https://img.shields.io/badge/Microsoft_Lists-57A4FF?style=for-the-badge&logo=microsoft-lists&logoColor=white)
![SharePoint](https://img.shields.io/badge/SharePoint-0078D4?style=for-the-badge&logo=microsoft-sharepoint&logoColor=white)

⚡ Projeto de Monitoramento de Produtividade & Prazos em Tempo Real

📌 Visão Geral
Este projeto visou solucionar a falta de visibilidade sobre a produtividade da equipe jurídica e o controle de prazos operacionais. Foi desenvolvido um ecossistema integrado utilizando Microsoft Lists, Power Automate e Power BI para criar uma ferramenta de gestão "live" (tempo real).

O sistema não apenas visualiza os dados, mas participa ativamente do fluxo de trabalho, capturando o início e o fim das tarefas automaticamente para gerar métricas precisas de eficiência.

🎯 Desafios Enfrentados
"Caixa Preta" Operacional: Gestores não sabiam quanto tempo cada tarefa levava para ser executada ou qual era a carga de trabalho real de cada advogado em tempo real.
Controle de Prazos Manual: Risco de perda de prazos devido à falta de alertas e visão centralizada.
Falta de Métricas de Performance: Impossibilidade de medir o SLA (Service Level Agreement) de atendimento ou a eficiência individual.

🛠️ Solução Técnica Implementada: O "Triângulo de Produtividade"
1. Backend Operacional (Microsoft Lists + Planner)
Estruturação de uma lista no SharePoint como banco de dados centralizado para gestão de demandas.
Integração com o Microsoft Planner para distribuição de tarefas visuais para a equipe (estilo Trello).

2. Automação de Processos (Power Automate)
Desenvolvi dois fluxos de automação (RPA) críticos para garantir a precisão dos dados sem esforço manual:
Fluxo de "Início de Execução": Gatilho acionado quando uma tarefa é movida para "Em Andamento". O sistema registra automaticamente o Timestamp de início.
Fluxo de "Conclusão": Gatilho acionado na finalização da tarefa. O sistema registra o Timestamp final e calcula a duração preliminar, garantindo que o tempo medido seja o tempo real de trabalho, não apenas a data de entrega.
Ambos com atualização automática da status daquela tarefa seguindo o fluxo: Caixa de Entrada -> Em andamento -> Concluído/Protocolado 

3. Inteligência de Dados (Power BI)
Conexão direta com a lista do SharePoint (SharePoint.Tables) para leitura dos dados em tempo real.

Engenharia de Dados (ETL):
Expansão e tratamento de registros complexos do SharePoint (usuários, datas, metadados).
Conversão de tipos para cálculos de data/hora precisos.

📊 Decisões de Negócio
O painel oferece uma visão de "Torre de Controle" para a gestão:

Gestão de Capacidade: Visualização de Qtd Prazos por Responsável permite balancear a carga de trabalho instantaneamente.
Monitoramento de Risco: Alertas visuais para Prazos Vencidos e Vencendo Próximos 7 Dias.
Análise de Eficiência: O gráfico de Tempo Médio de Conclusão por tipo de demanda ajuda a identificar gargalos no processo ou necessidade de treinamento.
