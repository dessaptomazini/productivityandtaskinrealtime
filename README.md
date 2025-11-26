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
Disparo de lembretes e alertas automatizado
 Para a equipe: informando prazos em aberto e prazos que estão vencendo no dia
 Para Controladoria e Coordenação: alerta de prazos não concluídos no dia do vencimento às 15h e 17h.

3. Inteligência de Dados (Power BI)
Conexão direta com a lista do SharePoint (SharePoint.Tables) para leitura dos dados em tempo real.

Engenharia de Dados (ETL):
Expansão e tratamento de registros complexos do SharePoint (usuários, datas, metadados).
Conversão de tipos para cálculos de data/hora precisos.

🚀 Resultados e Impacto no Negócio
A implementação deste ecossistema de produtividade transformou a gestão do departamento, permitindo a transição de um controle reativo (baseado em "apagar incêndios") para uma gestão proativa baseada em dados.

Principais Decisões Habilitadas pelos Dashboards:

Balanceamento de Carga de Trabalho (Workload Balancing):
Antes: A distribuição de tarefas era feita por intuição ou disponibilidade imediata, gerando sobrecarga em alguns advogados e ociosidade em outros.
Agora: O painel mostra em tempo real a Qtd Prazos por Responsável. Gestores podem realocar demandas instantaneamente para equilibrar a equipe e evitar burnout.

Mitigação de Risco de Perda de Prazos:
Antes: Dependia-se de controles manuais e memória para acompanhar vencimentos críticos.
Agora: O visual de Prazos Vencendo Próximos 7 Dias e alertas automáticos garantem que nenhuma demanda crítica seja esquecida, reduzindo drasticamente o risco jurídico e financeiro para a empresa.

Otimização de Processos (Eficiência):
Antes: Não se sabia quanto tempo levava para elaborar uma defesa ou protocolo.
Agora: Com o indicador de Tempo Médio de Execução, foi possível identificar que certos tipos de demanda estavam demorando 40% a mais do que o previsto. Isso motivou a criação de novos modelos (templates) e treinamentos específicos, aumentando a produtividade geral.

Avaliação de Performance Baseada em Dados:
Antes: Avaliações subjetivas.
Agora: Métricas claras de % Cumprimento de Prazo e volume de entregas por advogado permitem feedbacks objetivos e reconhecimento de alta performance.

Ganhos Quantitativos:
Redução de 100% no uso de planilhas manuais paralelas para controle de prazos.
Visibilidade em Tempo Real do status de todas as demandas do departamento.
Eliminação de Perda de Prazos por falha de monitoramento.
