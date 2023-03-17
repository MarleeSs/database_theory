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