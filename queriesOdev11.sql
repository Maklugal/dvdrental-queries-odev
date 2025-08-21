Tekrarsız sonuçlar (SET işlemleri)
1) Her iki tablodaki tüm isimler (birleşim, tekrarsız):

(
  SELECT first_name FROM actor
  UNION
  SELECT first_name FROM customer
)
ORDER BY first_name;


2) Kesişim (iki tabloda da olan isimler, tekrarsız):
(
  SELECT first_name FROM actor
  INTERSECT
  SELECT first_name FROM customer
)
ORDER BY first_name;

3) Sadece ilk tabloda olanlar (actor − customer, tekrarsız):

(
  SELECT first_name FROM actor
  EXCEPT
  SELECT first_name FROM customer
)
ORDER BY first_name;


Tekrarları koruyan sonuçlar (MULTISET işlemleri)

4) Her iki tablodaki tüm isimler (birleşim, tekrarları KORUR):
(
  SELECT first_name FROM actor
  UNION ALL
  SELECT first_name FROM customer
)
ORDER BY first_name;

5) Kesişim (tekrarları KORUR):
(İsim, iki tabloda kaç kez ortaksa min(sayım) kadar döner.)
(
  SELECT first_name FROM actor
  INTERSECT ALL
  SELECT first_name FROM customer
)
ORDER BY first_name;

6) Sadece ilk tabloda olanlar (tekrarları KORUR):
(İsim, actor’daki sayısından customer’daki sayısı kadar düşülerek döner.)
(
  SELECT first_name FROM actor
  EXCEPT ALL
  SELECT first_name FROM customer
)
ORDER BY first_name;

