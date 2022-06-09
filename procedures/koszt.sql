create procedure koszt(imie varchar(100), nazwisko varchar(100))
begin
    declare suma int default 0;
    declare obiad_cena int default 30;
    declare obiad_ilosc int default 0;
    declare tytul VARCHAR(30);
    declare pokoj VARCHAR(20);

    select count(obiad)
    into obiad_ilosc
    from rezerwacje as r
             inner join uczestnicy as u on r.uczestnik_id = u.uczestnik_id
    where u.imie = imie
      and u.nazwisko = nazwisko
    limit 1;

    set suma = obiad_cena * obiad_ilosc;

    select u.stopien_naukowy
    into tytul
    from uczestnicy as u
    where u.imie = imie
      and u.nazwisko = nazwisko
    limit 1;
    if tytul is null or tytul = 'student'
    then
        set suma = suma + 500;
    else
        set suma = suma + 1000;
    end if;

    select r.typ_pokoju
    into pokoj
    from rezerwacje as r
             inner join uczestnicy as u on r.uczestnik_id = u.uczestnik_id
    where u.imie = imie
      and u.nazwisko = nazwisko
    limit 1;
    if pokoj = 'jednoosobowy'
    then
        set suma = suma + 300;
    else
        set suma = suma + 200;
    end if;


    select suma;
end