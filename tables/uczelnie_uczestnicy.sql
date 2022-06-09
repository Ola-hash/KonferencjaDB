create table uczelnie_uczestnicy
(
    uczelnia_id  INT,
    FOREIGN KEY (uczelnia_id)
        REFERENCES uczelnie (uczelnia_id),
    uczestnik_id INT,
    FOREIGN KEY (uczestnik_id)
        REFERENCES uczestnicy (uczestnik_id),
    primary key (uczelnia_id, uczestnik_id)
)