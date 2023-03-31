USE cookpad;
INSERT INTO user(email, password, role, email_validate, status, last_login)
    VALUE (
           'admin@coba.com',
           'admincoba',
           'admin',
           'admin2@coba.com',
           'aktif',
           NOW()
    );
INSERT INTO user VALUE ('admin2@coba.com', 'admincoba', 'admin', 'admin3@coba.com', 'aktif', NOW());
INSERT INTO user VALUE ('admin3@coba.com', 'admincoba', 'admin', 'admin4@coba.com', 'aktif', NOW());
INSERT INTO user VALUE ('admin4@coba.com', 'admincoba', 'admin', 'admin5@coba.com', 'aktif', NOW());
INSERT INTO user VALUE ('admin5@coba.com', 'admincoba', 'admin', 'admin6@coba.com', 'aktif', NOW());

UPDATE user
SET email = 'admin6@coba.com'
WHERE email = 'admin5@coba.com';

DELETE FROM user WHERE email = 'admin6@coba.com' AND email_validate = 'admin6@coba.com';

TRUNCATE TABLE user;

USE cookpad;
ALTER TABLE user ADD PRIMARY KEY (email);
ALTER TABLE alat ADD PRIMARY KEY (idialat);
ALTER TABLE bahan ADD PRIMARY KEY (idbahan);
ALTER TABLE log ADD PRIMARY KEY (idlog);
ALTER TABLE rating ADD PRIMARY KEY (idrating);
ALTER TABLE resep ADD PRIMARY KEY (idresep);
ALTER TABLE resep_view ADD PRIMARY KEY (idresep_view);

ALTER TABLE rating MODIFY idresep INT;

ALTER TABLE alat ADD FOREIGN KEY (idresep) REFERENCES resep(idresep);
ALTER TABLE bahan ADD FOREIGN KEY (idresep) REFERENCES resep(idresep);
ALTER TABLE rating ADD FOREIGN KEY (idresep) REFERENCES resep(idresep);
ALTER TABLE resep_view ADD FOREIGN KEY (idresep) REFERENCES resep(idresep);

INSERT INTO resep (idresep, judul, gambar, cara_pembuatan, vidio, status_resep, email_create, user_email) VALUES
(1, 'SIOMAY', 'SIOMAY.JPG', 'A', 'SIOMAY.MP4', 'draf', 'IMAN@GMAIL.COM', 'IMAN@GMAIL.COM'),
(2, 'SIOMAY', 'SIOMAY.JPG', 'A', 'SIOMAY.MP4', 'draf', 'IMAN@GMAIL.COM', 'IMAN@GMAIL.COM'),
(3, 'SIOMAY', 'SIOMAY.JPG', 'A', 'SIOMAY.MP4', 'draf', 'ridho@gmail.com', 'ridho@gmamil.COM'),
(4, 'Bubur kacang', 'buburkacang.JPG', 'A', 'buburkacang.MP4', 'submit', 'ido@gmail.com', 'ido@gmamil.COM'),
(5, 'Cimol', 'Cimol.JPG', 'A', 'Cimol.MP4', 'draf', 'dho@gmail.com', 'dho@gmamil.COM'),
(6, 'Seblak', 'seblak.JPG', 'A', 'seblak.MP4', 'draf', 'dudung@gmail.com', 'dudung@gmamil.COM'),
(7, 'Lontong', 'lontong.JPG', 'A', 'lontong.MP4', 'draf', 'dadang@gmail.com', 'dadang@gmamil.COM'),
(8, 'Cuanki', 'Cuanki.JPG', 'A', 'Cuanki.MP4', 'draf', 'dedeng@gmail.com', 'dedeng@gmamil.COM'),
(9, 'Baso', 'Baso.JPG', 'A', 'Baso.MP4', 'draf', 'maman@gmail.com', 'maman@gmamil.COM'),
(10, 'Cireng', 'cireng.JPG', 'A', 'cireng.MP4', 'draf', 'mimin@gmail.com', 'mimin@gmamil.COM'),
(11, 'Lumpia', 'lumpia.JPG', 'A', 'lumpia.MP4', 'draf', 'mumun@gmail.com', 'mumungmamil.COM'),
(12, 'Risol', 'risol.JPG', 'A', 'risol.MP4', 'draf', 'memen@gmail.com', 'memen@gmamil.COM'),
(13, 'SIOMAY', 'SIOMAY.JPG', 'A', 'SIOMAY.MP4', 'draf', 'RIGGER@GMAIL.COM', 'RIGGER@GMAIL.COM'),
(14, 'BATAGOR', 'BATAGOR.JPG', 'A', 'BATAGOR.MP4', 'submit', 'RI@GMAIL.COM', 'RIR@GMAIL.COM'),
(15, 'CILOR', 'CILOR.JPG', 'A', 'CILOR.MP4', 'publish', 'GER@GMAIL.COM', 'GER@GMAIL.COM'),
(16, 'CIMOL', 'CIMOL.JPG', 'A', 'CIMOL.MP4', 'draf', 'RIJER@GMAIL.COM', 'RIJER@GMAIL.COM'),
(17, 'MILOR', 'MILOR.JPG', 'A', 'MILOR.MP4', 'publish', 'RIG@GMAIL.COM', 'RIG@GMAIL.COM'),
(18, 'CILOK', 'CILOK.JPG', 'A', 'CILOK.MP4', 'unpublished', 'GERR@GMAIL.COM', 'GERR@GMAIL.COM'),
(19, 'CILUNG', 'CILUNG.JPG', 'A', 'CILUNG.MP4', 'draf', 'RIGGR@GMAIL.COM', 'RIGG@GMAIL.COM'),
(20, 'BASRENG', 'BASRENG.JPG', 'A', 'BASRENG.MP4', 'unpublished', 'R@GMAIL.COM', 'R@GMAIL.COM'),
(21, 'BASKAR', 'BASKAR.JPG', 'A', 'BASKAR.MP4', 'submit', 'RIGER@GMAIL.COM', 'RIGER@GMAIL.COM'),
(22, 'BASKARPEDES', 'BASKARPEDES.JPG', 'A', 'BASKARPEDES.MP4', 'submit', 'RIGERYGY@GMAIL.COM', 'RIGERYGY@GMAIL.COM'),
(23, 'Siomay', 'Siomay.jpg', 'A', 'Siomay.mp4', 'draf', 'farhan@gmail.com', 'farhan@gmail.com'),
(24, 'Batagor', 'Batagor.jpg', 'B', 'Batagor.mp4', 'submit', 'bariz@gmail.com', 'bariz@gmail.com'),
(25, 'Baso', 'Baso.jpg', 'C', 'Baso.mp4', 'publish', 'ridho@gmail.com', 'ridho@gmail.com'),
(26, 'Cuanki', 'Cuanki.jpg', 'D', 'Cuanki.mp4', 'unpublished', 'rakha@gmail.com', 'rakha@gmail.com'),
(27, 'Ranginang', 'Ranginang.jpg', 'E', 'Ranginang.mp4', 'delete', 'amin@gmail.com', 'amin@gmail.com'),
(28, 'Surabi', 'Surabi.jpg', 'F', 'Surabi.mp4', 'draf', 'rahma@gmail.com', 'rahma@gmail.com'),
(29, 'Ayam', 'Ayam.jpg', 'G', 'Ayam.mp4', 'submit', 'nova@gmail.com', 'nova@gmail.com'),
(30, 'Bebek', 'Bebek.jpg', 'H', 'Bebek.mp4', 'publish', 'rigger@gmail.com', 'rigger@gmail.com'),
(31, 'Cimol', 'Cimol.jpg', 'I', 'Cimol.mp4', 'unpublished', 'badrio@gmail.com', 'badrio@gmail.com'),
(32, 'Cilok', 'Cilok.jpg', 'J', 'Cilok.mp4', 'delete', 'ibnu@gmail.com', 'ibnu@gmail.com'),
(33, 'Batagor', 'Batagor.jpg', '1,2,3,4,5', 'Batagor.mp4', 'draf', 'Deandra1@gmail.com', 'Deandra1@gmail.com'),
(34, 'Somay', 'Somay.jpg', '1,2,3,4,5', 'Somay.mp4', 'submit', 'Deandra2@gmail.com', 'Deandra2@gmail.com'),
(35, 'Bakwan', 'Bakwan.jpg', '1,2,3,4,5', 'Bakwan.mp4', 'publish', 'Deandra3@gmail.com', 'Deandra3@gmail.com'),
(36, 'Ayam Goreng', 'AyamGR.jpg', '1,2,3,4,5', 'AyamGR.mp4', 'unpublished', 'Deandra4@gmail.com', 'Deandr41@gmail.com'),
(37, 'Ayam Bakar', 'AyamBK.jpg', '1,2,3,4,5', 'AyamBK.mp4', 'delete', 'Deandra5@gmail.com', 'Deandra5@gmail.com'),
(38, 'Ayam Panggang', 'AyamPG.jpg', '1,2,3,4,5', 'AyamPG.mp4', 'draf', 'Deandra6@gmail.com', 'Deandra6@gmail.com'),
(39, 'Martabak Manis', 'MartabakMN.jpg', '1,2,3,4,5', 'MartabakMN.mp4', 'submit', 'Deandra7@gmail.com', 'Deandra7@gmail.com'),
(40, 'Martabak Telor', 'MartabakTL.jpg', '1,2,3,4,5', 'MartabakTL.mp4', 'publish', 'Deandra8@gmail.com', 'Deandra8@gmail.com'),
(41, 'Cimol', 'Cimol.jpg', '1,2,3,4,5', 'Cimol.mp4', 'unpublished', 'Deandra9@gmail.com', 'Deandra9@gmail.com'),
(42, 'Cireng', 'Cireng.jpg', '1,2,3,4,5', 'Cireng.mp4', 'delete', 'Deandra10@gmail.com', 'Deandra10@gmail.com'),
(43, 'BAKSO', 'bakso.jpg', 'A', 'bakso.mp4', 'draf', 'abi@gmail.com', 'abi@gmail.com'),
(44, 'RAMEN', 'ramen.jpg', 'B', 'ramen.mp4', 'publish', 'abo@gmail.com', 'abo@gmail.com'),
(45, 'BAKSO', 'bakso.jpg', 'A', 'bakso.mp4', 'draf', 'abi@gmail.com', 'abi@gmail.com'),
(46, 'RAMEN', 'ramen.jpg', 'B', 'ramen.mp4', 'publish', 'abo@gmail.com', 'abo@gmail.com'),
(47, 'PECEL', 'pecel.jpg', 'C', 'pecel.mp4', 'unpublished', 'aba@gmail.com', 'aba@gmail.com'),
(48, 'AYAM GORENG', 'ayamgoreng.jpg', 'D', 'ayamgoreng.mp4', 'submit', 'abe@gmail.com', 'abe@gmail.com'),
(49, 'MIE AYAM', 'mieayam.jpg', 'E', 'mieayam.mp4', 'delete', 'rakha@gmail.com', 'rakha@gmail.com'),
(50, 'BAKWAN', 'bakwan.jpg', 'F', 'bakwan.mp4', 'submit', 'rakhi@gmail.com', 'rakhi@gmail.com'),
(51, 'RISOLES', 'risoles.jpg', 'G', 'risoles.mp4', 'publish', 'rakho@gmail.com', 'rakho@gmail.com'),
(52, 'SEBLAK', 'seblak.jpg', 'H', 'seblak.mp4', 'publish', 'rakhe@gmail.com', 'rakhe@gmail.com'),
(53, 'ES TEH', 'esteh.jpg', 'H', 'esteh.mp4', 'publish', 'idho@gmail.com', 'idho@gmail.com'),
(54, 'ES CAMPUR', 'escampur.jpg', 'I', 'escampur.mp4', 'draf', 'ahan@gmail.com', '
ahan@gmail.com');