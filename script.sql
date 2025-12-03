SELECT T0.Nome AS Colaborador, T0.Salario, T1.Nome AS Departamento 
FROM Pessoa T0 
JOIN Departamento T1 ON T0.DeptId = T1.Id 
WHERE T0.Salario = ( 
    SELECT MAX(T2.Salario) 
    FROM Pessoa T2 WHERE T0.DeptId = T2.DeptId 
);