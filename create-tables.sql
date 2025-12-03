
-- Create Table Departamento
CREATE TABLE Departamento (
    Id INT PRIMARY KEY,
    Nome VARCHAR(50)
);

-- Create Table Pessoa
CREATE TABLE Pessoa (
    Id INT PRIMARY KEY,
    Nome VARCHAR(100),
    Salario DECIMAL(10,2),
    DeptId INT,
    FOREIGN KEY (DeptId) REFERENCES Departamento(Id)
);

-- Insert
INSERT INTO Departamento (Id, Nome) VALUES
(1, 'TI'),
(2, 'Vendas');

INSERT INTO Pessoa (Id, Nome, Salario, DeptId) VALUES
(1, 'Joe',   70000, 1),
(2, 'Henry', 80000, 2),
(3, 'Sam',   60000, 2),
(4, 'Max',   90000, 1);
