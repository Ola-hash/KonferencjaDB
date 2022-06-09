create trigger before_uczestnik_insert
    before insert
    on uczestnicy
    for each row
begin
    if new.email NOT REGEXP '^[a-z]+@[a-z]+(\.[a-z]+)*$' then
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Niepoprawny email';
    end if;
end;

drop trigger before_uczestnik_insert