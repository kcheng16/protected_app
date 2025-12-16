SELECT Is_Blanket_FIRB_Approval,
       Date_Blanket_FIRB
FROM dbo.GF_Chklist_DEV
WHERE GF_ID =
(
    SELECT TOP 1
           GF_ID
    FROM dbo.GF_Lots
    WHERE ID = {{ urlparams.hash.ID }}
);