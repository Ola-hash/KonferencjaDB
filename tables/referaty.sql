CREATE TABLE referaty
(
    referat_id   INT PRIMARY KEY AUTO_INCREMENT,
    tytul        VARCHAR(100),
    dzien_id     INT,
    FOREIGN KEY (dzien_id)
        REFERENCES dni_konferencji (dzien_id),
    uczestnik_id INT,
    FOREIGN KEY (uczestnik_id)
        REFERENCES uczestnicy (uczestnik_id)
);