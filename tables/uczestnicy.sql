CREATE TABLE uczestnicy
(
    uczestnik_id    INT PRIMARY KEY AUTO_INCREMENT,
    imie            VARCHAR(100),
    nazwisko        VARCHAR(100),
    stopien_naukowy VARCHAR(30),
    nr_tel          VARCHAR(15),
    email           VARCHAR(100)
);