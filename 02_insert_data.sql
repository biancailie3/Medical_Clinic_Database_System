-- Ștergem datele vechi din tabele (pentru a evita duplicări la re-rulare)
DELETE FROM cbReteta;
DELETE FROM cbProgramare;
DELETE FROM cbMedic;
DELETE FROM cbSpecialitate;
DELETE FROM cbGrad;

-- Inserăm date în cbSpecialitate
INSERT INTO cbSpecialitate VALUES ('cardio', 'Cardiologie', 1.5);
INSERT INTO cbSpecialitate VALUES ('derma', 'Dermatologie', 1.3);
INSERT INTO cbSpecialitate VALUES ('gastro', 'Gastroenterologie', 1.4);
INSERT INTO cbSpecialitate VALUES ('pedia', 'Pediatrie', 1.2);

-- Inserăm date în cbGrad
INSERT INTO cbGrad VALUES ('R', 'Rezident', 80);
INSERT INTO cbGrad VALUES ('S', 'Specialist', 120);
INSERT INTO cbGrad VALUES ('P', 'Primar', 160);

-- Inserăm date în cbMedic
INSERT INTO cbMedic VALUES ('M001', 'Popescu Andrei', 'cardio', 'P');
INSERT INTO cbMedic VALUES ('M002', 'Ionescu Maria', 'derma', 'S');
INSERT INTO cbMedic VALUES ('M003', 'Vasilescu Ioana', 'pedia', 'R');
INSERT INTO cbMedic VALUES ('M004', 'Grigore Alina', 'gastro', 'S');
INSERT INTO cbMedic VALUES ('M005', 'Stan Mihai', 'cardio', 'S');
INSERT INTO cbMedic VALUES ('M006', 'Petrescu Elena', 'derma', 'R');
INSERT INTO cbMedic VALUES ('M007', 'Barbu Tudor', 'gastro', 'P');
INSERT INTO cbMedic VALUES ('M008', 'Nistor Dana', 'pedia', 'S');

-- Inserăm date în cbProgramare
INSERT INTO cbProgramare VALUES ('P001', TO_DATE('24.04.2023', 'DD.MM.YYYY'), '2890821395199', 'Popescu Ion', 'M004', 'C104');
INSERT INTO cbProgramare VALUES ('P002', TO_DATE('25.04.2023', 'DD.MM.YYYY'), '2870523395123', 'Georgescu Ana', 'M001', 'C101');
INSERT INTO cbProgramare VALUES ('P003', TO_DATE('26.04.2023', 'DD.MM.YYYY'), '2930101456789', 'Mihai Elena', 'M003', 'C105');
INSERT INTO cbProgramare VALUES ('P004', TO_DATE('27.04.2023', 'DD.MM.YYYY'), '2900154789632', 'Ionut Radu', 'M002', 'C103');
INSERT INTO cbProgramare VALUES ('P005', TO_DATE('28.04.2023', 'DD.MM.YYYY'), '2950123456789', 'Ana Popa', 'M005', 'C102');
INSERT INTO cbProgramare VALUES ('P006', TO_DATE('29.04.2023', 'DD.MM.YYYY'), '2910987654321', 'Maria Ionescu', 'M006', 'C106');
INSERT INTO cbProgramare VALUES ('P007', TO_DATE('30.04.2023', 'DD.MM.YYYY'), '2890876543210', 'Radu Marin', 'M007', 'C101');
INSERT INTO cbProgramare VALUES ('P008', TO_DATE('01.05.2023', 'DD.MM.YYYY'), '2870654321987', 'Elena Georgescu', 'M008', 'C107');
INSERT INTO cbProgramare VALUES ('P009', TO_DATE('02.05.2023', 'DD.MM.YYYY'), '2900123456798', 'Cristian Popescu', 'M004', 'C104');
INSERT INTO cbProgramare VALUES ('P010', TO_DATE('03.05.2023', 'DD.MM.YYYY'), '2920987654312', 'Ioana Vasilescu', 'M002', 'C103');

-- Inserăm date în cbReteta
INSERT INTO cbReteta VALUES ('P001', 1, 'Fervex', '4x1', 6);
INSERT INTO cbReteta VALUES ('P001', 2, 'Strepsil', '3x1', 6);
INSERT INTO cbReteta VALUES ('P002', 1, 'Nurofen', '2x1', 5);
INSERT INTO cbReteta VALUES ('P003', 1, 'Paracetamol', '3x1', 4);
INSERT INTO cbReteta VALUES ('P004', 1, 'Ibuprofen', '3x1', 7);
INSERT INTO cbReteta VALUES ('P005', 1, 'Augmentin', '2x2', 10);
INSERT INTO cbReteta VALUES ('P006', 1, 'Aspirina', '1x1', 5);
INSERT INTO cbReteta VALUES ('P007', 1, 'Strepsils', '3x1', 6);
INSERT INTO cbReteta VALUES ('P008', 1, 'Ospen', '2x1', 7);
INSERT INTO cbReteta VALUES ('P009', 1, 'Fervex', '4x1', 6);
INSERT INTO cbReteta VALUES ('P010', 1, 'Paracetamol', '3x1', 5);
INSERT INTO cbReteta VALUES ('P010', 2, 'Nurofen', '2x1', 7);
INSERT INTO cbReteta VALUES ('P005', 2, 'Aspirina', '1x1', 5);
INSERT INTO cbReteta VALUES ('P003', 2, 'Ospen', '2x1', 10);
INSERT INTO cbReteta VALUES ('P007', 2, 'Ibuprofen', '3x1', 7);
