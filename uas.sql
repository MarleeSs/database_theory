create database uas;

create table buku
(
    id           int primary key auto_increment,
    judul        varchar(100),
    pengarang    varchar(100),
    penerbit     varchar(100),
    tahun_terbit int
);

create table anggota
(
    id   int primary key auto_increment,
    nama varchar(100)
);

create table peminjaman
(
    id             int primary key auto_increment,
    id_buku        int,
    id_anggota     int,
    tanggal_pinjam date,
    foreign key (id_buku) references buku (id) on delete cascade,
    foreign key (id_anggota) references anggota (id) on delete cascade
);


insert into buku(judul, pengarang, penerbit, tahun_terbit)
values ('Pemrograman Web', 'Abdul Kadir', 'Andi Offset', 2017),
       ('Pemrograman Java', 'Abdul Kadir', 'Andi Offset', 2017),
       ('Pemrograman PHP', 'Abdul Kadir', 'Andi Offset', 2017),
       ('Pemrograman C++', 'Abdul Kadir', 'Andi Offset', 2017),
       ('Pemrograman C#', 'Abdul Kadir', 'Andi Offset', 2017),
       ('Pemrograman Python', 'Abdul Kadir', 'Andi Offset', 2017),
       ('Pemrograman Javascript', 'Abdul Kadir', 'Andi Offset', 2017),
       ('Pemrograman C', 'Abdul Kadir', 'Andi Offset', 2017),
       ('Pemrograman Pascal', 'Abdul Kadir', 'Andi Offset', 2017),
       ('Pemrograman Visual Basic', 'Abdul Kadir', 'Andi Offset', 2017);

insert into anggota(nama)
values ('Marli'),
       ('Reni'),
       ('Nessa'),
       ('Dandi'),
       ('Rizal'),
       ('Rizky'),
       ('Rizka'),
       ('Rizwan'),
       ('Rizaldi'),
       ('Rizma');

create view anggota_peminjaman as
select a.id, a.nama, count(p.id) as jumlah_peminjaman
from anggota a
         left join peminjaman p on a.id = p.id_anggota
group by a.id;
