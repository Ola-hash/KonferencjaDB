CREATE TABLE uczelnie
(
    uczelnia_id INT PRIMARY KEY AUTO_INCREMENT,
    nazwa       VARCHAR(100) UNIQUE,
    wydzial     VARCHAR(100),
    adres       VARCHAR(100),
    miasto      VARCHAR(100),
    kraj        VARCHAR(100)
);
