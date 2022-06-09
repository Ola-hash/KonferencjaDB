CREATE TABLE dni_konferencji
(
    dzien_id INT PRIMARY KEY AUTO_INCREMENT,
    dzien    VARCHAR(50) UNIQUE CHECK (dzien = 'poniedziałek'
        OR dzien = 'wtorek'
        OR dzien = 'środa'
        OR dzien = 'czwartek'
        OR dzien = 'piątek')
);