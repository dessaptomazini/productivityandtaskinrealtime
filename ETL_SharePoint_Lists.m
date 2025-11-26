let
    Fonte = SharePoint.Tables("https://empresa.sharepoint.com/sites/CONTROLADORIA", [Implementation="2.0", ViewMode="All"]),
    #"8a278ca7-b867-4b4f-a468-3a54a957be70" = Fonte{[Id="8a278ca7-b867-4b4f-a468-3a54a957be70"]}[Items],
    #"Outras Colunas Removidas1" = Table.SelectColumns(#"8a278ca7-b867-4b4f-a468-3a54a957be70",{"Título da Demanda", "Situação", "Tipo de prazo", "Responsável", "Time", "CNPJ/CPF", "Razão Social", "Procuração", "Prazo", "Defesa", "Protocolo", "Responsável Conferência", "Envio para o robô", "Envio robô de CND", "Contador", "Data Conclusão", "Data Início Andamento", "Assistido por", "ID", "Modificado", "Criado", "Criado por", "Modificado por"}),
    #"Responsável Expandido" = Table.ExpandTableColumn(#"Outras Colunas Removidas1", "Responsável", {"value"}, {"Responsável.value"}),
    #"Responsável Conferência Expandido" = Table.ExpandListColumn(#"Responsável Expandido", "Responsável Conferência"),
    #"Responsável Conferência Expandido1" = Table.ExpandRecordColumn(#"Responsável Conferência Expandido", "Responsável Conferência", {"title"}, {"Responsável Conferência.title"}),
    #"Criado por Expandido" = Table.ExpandListColumn(#"Responsável Conferência Expandido1", "Criado por"),
    #"Criado por Expandido1" = Table.ExpandRecordColumn(#"Criado por Expandido", "Criado por", {"title"}, {"Criado por.title"}),
    #"Modificado por Expandido" = Table.ExpandListColumn(#"Criado por Expandido1", "Modificado por"),
    #"Modificado por Expandido1" = Table.ExpandRecordColumn(#"Modificado por Expandido", "Modificado por", {"title"}, {"Modificado por.title"}),
    #"Colunas Renomeadas" = Table.RenameColumns(#"Modificado por Expandido1",{{"Responsável.value", "Responsável"}, {"Criado", "Data Criação"}, {"Modificado", "Data Modificação"}, {"Modificado por.title", "Modificado por"}, {"Criado por.title", "Criado por"}}),
    #"Tipo Alterado" = Table.TransformColumnTypes(#"Colunas Renomeadas",{{"Prazo", type date}, {"Título da Demanda", type text}, {"CNPJ/CPF", type text}, {"Razão Social", type text}, {"Procuração", type text}, {"Defesa", type text}, {"Protocolo", type text}, {"Responsável", type text}, {"Modificado por", type text}, {"Criado por", type text}, {"Data Criação", type date}, {"Data Modificação", type datetime}}),
    #"Colunas Renomeadas1" = Table.RenameColumns(#"Tipo Alterado",{{"Responsável Conferência.title", "Responsável Conferência"}})
in
    #"Colunas Renomeadas1"
