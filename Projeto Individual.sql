CREATE TABLE `Alunos` (
  `ID` int PRIMARY KEY,
  `Nome` varchar(255),
  `Matricula` int,
  `cpf` varchar(11)
);

CREATE TABLE `Turmas` (
  `ID` int PRIMARY KEY,
  `Nome` varchar(255),
  `Turno` varchar(255),
  `id_aluno` int,
  `Horario` int
);

CREATE TABLE `Cursos` (
  `ID` int PRIMARY KEY,
  `Nome` varchar(255),
  `Turno` varchar(255),
  `Presenca` varchar(255),
  `id_turma` int
);

ALTER TABLE `Turmas` ADD FOREIGN KEY (`id_aluno`) REFERENCES `Alunos` (`ID`);

ALTER TABLE `Cursos` ADD FOREIGN KEY (`id_turma`) REFERENCES `Turmas` (`ID`);
