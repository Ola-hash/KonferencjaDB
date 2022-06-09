CREATE TABLE rezerwacje
(
    rezerwacja_id INT PRIMARY KEY AUTO_INCREMENT,
    uczestnik_id  INT,
    FOREIGN KEY (uczestnik_id)
        REFERENCES uczestnicy (uczestnik_id),
    dzien_id      INT,
    FOREIGN KEY (dzien_id)
        REFERENCES dni_konferencji (dzien_id),
    typ_pokoju    VARCHAR(20) CHECK (typ_pokoju = 'jednoosobowy' OR typ_pokoju = 'dwuosobowy'),
    wspollokator  INT,
    FOREIGN KEY (wspollokator)
        REFERENCES uczestnicy (uczestnik_id),
    obiad         BIT,
    unique key `rezerwacja_uczestnika_na_dzien` (uczestnik_id, dzien_id),
    koszt         double
);
