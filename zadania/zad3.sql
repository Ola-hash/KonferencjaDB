SELECT r.tytul
from referaty as r
         inner join dni_konferencji dk on r.dzien_id = dk.dzien_id
where dk.dzien = 'czwartek';

select u.nazwa
from uczelnie u
         inner join uczelnie_uczestnicy uu on u.uczelnia_id = uu.uczelnia_id
         inner join rezerwacje r on uu.uczestnik_id = r.uczestnik_id
         inner join dni_konferencji dk on r.dzien_id = dk.dzien_id
where dk.dzien = 'wtorek';

select count(referat_id)
from referaty;

select r.obiad
from rezerwacje r
         inner join dni_konferencji dk on r.dzien_id = dk.dzien_id
where dk.dzien = 'wtorek';
