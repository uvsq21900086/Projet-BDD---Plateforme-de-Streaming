------------------------------------------------------------------

/* TABLE ABONNEMENT */

-- insertion des données
INSERT INTO ABONNEMENT VALUES (
    'Essentiel',
    0.00
);

INSERT INTO ABONNEMENT VALUES (
    'Etudiant',
    5.99
);

INSERT INTO ABONNEMENT VALUES (
    'Standard',
    9.49
);

INSERT INTO ABONNEMENT VALUES (
    'Famille',
    14.99
);

/

------------------------------------------------------------------

/* TABLE CLIENT */

-- Insertion 1
INSERT INTO CLIENT VALUES (
    1,
    'John Doe',
    'password1',
    TO_DATE('1990-05-15', 'YYYY-MM-DD'),
    'john.doe@email.com',
    SYSDATE,
    'IBAN123456789012345678901234567890123',
    TO_DATE('2024-01-01', 'YYYY-MM-DD'),
    'Essentiel'
);

-- Insertion 2
INSERT INTO CLIENT VALUES (
    2,
    'Jane Smith',
    'password2',
    TO_DATE('1985-08-22', 'YYYY-MM-DD'),
    'jane.smith@email.com',
    SYSDATE,
    'IBAN234567890123456789012345678901234',
    TO_DATE('2024-01-02', 'YYYY-MM-DD'),
    'Standard'
);

-- Insertion 3
INSERT INTO CLIENT VALUES (
    3,
    'Alice Johnson',
    'password3',
    TO_DATE('1993-02-10', 'YYYY-MM-DD'),
    'alice.johnson@email.com',
    SYSDATE,
    'IBAN345678901234567890123456789012345',
    TO_DATE('2024-01-03', 'YYYY-MM-DD'),
    'Etudiant'
);

-- Insertion 4
INSERT INTO CLIENT VALUES (
    4,
    'Bob Williams',
    'password4',
    TO_DATE('1980-11-28', 'YYYY-MM-DD'),
    'bob.williams@email.com',
    SYSDATE,
    'IBAN456789012345678901234567890123456',
    TO_DATE('2024-01-04', 'YYYY-MM-DD'),
    'Famille'
);

-- Insertion 5
INSERT INTO CLIENT VALUES (
    5,
    'Eva Davis',
    'password5',
    TO_DATE('1998-07-05', 'YYYY-MM-DD'),
    'eva.davis@email.com',
    SYSDATE,
    'IBAN567890123456789012345678901234567',
    TO_DATE('2024-01-05', 'YYYY-MM-DD'),
    'Standard'
);

-- Insertion 6
INSERT INTO CLIENT VALUES (
    6,
    'Michael Wilson',
    'password6',
    TO_DATE('1982-04-18', 'YYYY-MM-DD'),
    'michael.wilson@email.com',
    SYSDATE,
    'IBAN678901234567890123456789012345678',
    TO_DATE('2024-01-06', 'YYYY-MM-DD'),
    'Essentiel'
);

-- Insertion 7
INSERT INTO CLIENT VALUES (
    7,
    'Sophia Brown',
    'password7',
    TO_DATE('1995-09-27', 'YYYY-MM-DD'),
    'sophia.brown@email.com',
    SYSDATE,
    'IBAN789012345678901234567890123456789',
    TO_DATE('2024-01-07', 'YYYY-MM-DD'),
    'Famille'
);

-- Insertion 8
INSERT INTO CLIENT VALUES (
    8,
    'William White',
    'password8',
    TO_DATE('1987-03-14', 'YYYY-MM-DD'),
    'william.white@email.com',
    SYSDATE,
    'IBAN890123456789012345678901234567890',
    TO_DATE('2024-01-08', 'YYYY-MM-DD'),
    'Etudiant'
);

-- Insertion 9
INSERT INTO CLIENT VALUES (
    9,
    'Olivia Miller',
    'password9',
    TO_DATE('1991-06-30', 'YYYY-MM-DD'),
    'olivia.miller@email.com',
    SYSDATE,
    'IBAN901234567890123456789012345678901',
    TO_DATE('2024-01-09', 'YYYY-MM-DD'),
    'Standard'
);

-- Insertion 10
INSERT INTO CLIENT VALUES (
    10,
    'James Anderson',
    'password10',
    TO_DATE('1984-12-11', 'YYYY-MM-DD'),
    'james.anderson@email.com',
    SYSDATE,
    'IBAN012345678901234567890123456789012',
    TO_DATE('2024-01-10', 'YYYY-MM-DD'),
    'Essentiel'
);

-- Insertion 11
INSERT INTO CLIENT VALUES (
    11,
    'Emma Garcia',
    'password11',
    TO_DATE('1996-02-20', 'YYYY-MM-DD'),
    'emma.garcia@email.com',
    SYSDATE,
    'IBAN123456789012345678901234567890123',
    TO_DATE('2024-01-11', 'YYYY-MM-DD'),
    'Famille'
);

-- Insertion 12
INSERT INTO CLIENT VALUES (
    12,
    'Logan Martinez',
    'password12',
    TO_DATE('1989-10-07', 'YYYY-MM-DD'),
    'logan.martinez@email.com',
    SYSDATE,
    'IBAN234567890123456789012345678901234',
    TO_DATE('2024-01-12', 'YYYY-MM-DD'),
    'Etudiant'
);

-- Insertion 13
INSERT INTO CLIENT VALUES (
    13,
    'Ava Robinson',
    'password13',
    TO_DATE('1994-04-15', 'YYYY-MM-DD'),
    'ava.robinson@email.com',
    SYSDATE,
    'IBAN345678901234567890123456789012345',
    TO_DATE('2024-01-13', 'YYYY-MM-DD'),
    'Standard'
);

-- Insertion 14
INSERT INTO CLIENT VALUES (
    14,
    'Liam Stewart',
    'password14',
    TO_DATE('1981-11-29', 'YYYY-MM-DD'),
    'liam.stewart@email.com',
    SYSDATE,
    'IBAN456789012345678901234567890123456',
    TO_DATE('2024-01-14', 'YYYY-MM-DD'),
    'Essentiel'
);

-- Insertion 15
INSERT INTO CLIENT VALUES (
    15,
    'Isabella Taylor',
    'password15',
    TO_DATE('1997-07-06', 'YYYY-MM-DD'),
    'isabella.taylor@email.com',
    SYSDATE,
    'IBAN567890123456789012345678901234567',
    TO_DATE('2024-01-15', 'YYYY-MM-DD'),
    'Famille'
);

-- Insertion 16
INSERT INTO CLIENT VALUES (
    16,
    'Noah Moore',
    'password16',
    TO_DATE('1983-04-19', 'YYYY-MM-DD'),
    'noah.moore@email.com',
    SYSDATE,
    'IBAN678901234567890123456789012345678',
    TO_DATE('2024-01-16', 'YYYY-MM-DD'),
    'Etudiant'
);

-- Insertion 17
INSERT INTO CLIENT VALUES (
    17,
    'Mia Hall',
    'password17',
    TO_DATE('1992-10-01', 'YYYY-MM-DD'),
    'mia.hall@email.com',
    SYSDATE,
    'IBAN789012345678901234567890123456789',
    TO_DATE('2024-01-17', 'YYYY-MM-DD'),
    'Standard'
);

-- Insertion 18
INSERT INTO CLIENT VALUES (
    18,
    'Ethan Davis',
    'password18',
    TO_DATE('1986-03-15', 'YYYY-MM-DD'),
    'ethan.davis@email.com',
    SYSDATE,
    'IBAN890123456789012345678901234567890',
    TO_DATE('2024-01-18', 'YYYY-MM-DD'),
    'Essentiel'
);

-- Insertion 19
INSERT INTO CLIENT VALUES (
    19,
    'Ava Harris',
    'password19',
    TO_DATE('1988-06-29', 'YYYY-MM-DD'),
    'ava.harris@email.com',
    SYSDATE,
    'IBAN901234567890123456789012345678901',
    TO_DATE('2024-01-19', 'YYYY-MM-DD'),
    'Famille'
);

-- Insertion 20
INSERT INTO CLIENT VALUES (
    20,
    'Liam Clark',
    'password20',
    TO_DATE('1990-02-19', 'YYYY-MM-DD'),
    'liam.clark@email.com',
    SYSDATE,
    'IBAN012345678901234567890123456789012',
    TO_DATE('2024-01-20', 'YYYY-MM-DD'),
    'Etudiant'
);

-- Insertion 21
INSERT INTO CLIENT VALUES (
    21,
    'Olivia Robinson',
    'password21',
    TO_DATE('1984-04-16', 'YYYY-MM-DD'),
    'olivia.robinson@email.com',
    SYSDATE,
    'IBAN123456789012345678901234567890123',
    TO_DATE('2024-01-21', 'YYYY-MM-DD'),
    'Standard'
);

-- Insertion 22
INSERT INTO CLIENT VALUES (
    22,
    'James Wilson',
    'password22',
    TO_DATE('1991-11-30', 'YYYY-MM-DD'),
    'james.wilson@email.com',
    SYSDATE,
    'IBAN234567890123456789012345678901234',
    TO_DATE('2024-01-22', 'YYYY-MM-DD'),
    'Essentiel'
);

-- Insertion 23
INSERT INTO CLIENT VALUES (
    23,
    'Emma Garcia',
    'password23',
    TO_DATE('1980-09-28', 'YYYY-MM-DD'),
    'emma.garcia@email.com',
    SYSDATE,
    'IBAN345678901234567890123456789012345',
    TO_DATE('2024-01-23', 'YYYY-MM-DD'),
    'Famille'
);

-- Insertion 24
INSERT INTO CLIENT VALUES (
    24,
    'Logan Smith',
    'password24',
    TO_DATE('1987-03-13', 'YYYY-MM-DD'),
    'logan.smith@email.com',
    SYSDATE,
    'IBAN456789012345678901234567890123456',
    TO_DATE('2024-01-24', 'YYYY-MM-DD'),
    'Etudiant'
);

-- Insertion 25
INSERT INTO CLIENT VALUES (
    25,
    'Ava Davis',
    'password25',
    TO_DATE('1995-07-04', 'YYYY-MM-DD'),
    'ava.davis@email.com',
    SYSDATE,
    'IBAN567890123456789012345678901234567',
    TO_DATE('2024-01-25', 'YYYY-MM-DD'),
    'Standard'
);

-- Insertion 26
INSERT INTO CLIENT VALUES (
    26,
    'Liam Taylor',
    'password26',
    TO_DATE('1982-04-17', 'YYYY-MM-DD'),
    'liam.taylor@email.com',
    SYSDATE,
    'IBAN678901234567890123456789012345678',
    TO_DATE('2024-01-26', 'YYYY-MM-DD'),
    'Essentiel'
);

-- Insertion 27
INSERT INTO CLIENT VALUES (
    27,
    'Isabella Harris',
    'password27',
    TO_DATE('1998-02-21', 'YYYY-MM-DD'),
    'isabella.harris@email.com',
    SYSDATE,
    'IBAN789012345678901234567890123456789',
    TO_DATE('2024-01-27', 'YYYY-MM-DD'),
    'Famille'
);

-- Insertion 28
INSERT INTO CLIENT VALUES (
    28,
    'Noah Clark',
    'password28',
    TO_DATE('1983-10-06', 'YYYY-MM-DD'),
    'noah.clark@email.com',
    SYSDATE,
    'IBAN890123456789012345678901234567890',
    TO_DATE('2024-01-28', 'YYYY-MM-DD'),
    'Etudiant'
);

-- Insertion 29
INSERT INTO CLIENT VALUES (
    29,
    'Mia Hall',
    'password29',
    TO_DATE('1992-03-14', 'YYYY-MM-DD'),
    'mia.hall@email.com',
    SYSDATE,
    'IBAN901234567890123456789012345678901',
    TO_DATE('2024-01-29', 'YYYY-MM-DD'),
    'Standard'
);

-- Insertion 30
INSERT INTO CLIENT VALUES (
    30,
    'Ethan Wilson',
    'password30',
    TO_DATE('1986-06-28', 'YYYY-MM-DD'),
    'ethan.wilson@email.com',
    SYSDATE,
    'IBAN012345678901234567890123456789012',
    TO_DATE('2024-01-30', 'YYYY-MM-DD'),
    'Essentiel'
);

------------------------------------------------------------------

/* TABLE PROFIL */

-- Client 1 (Essentiel Subscription - 1 profile)
INSERT INTO PROFIL VALUES (
    1,
    1,
    'john_profile',
    EMPTY_BLOB(),
    '1234',
    TO_DATE('1990-05-20', 'YYYY-MM-DD'),
    'Adulte',
    'English',
    0
);

-- Client 2 (Standard Subscription - 2 profiles)
INSERT INTO PROFIL VALUES (
    2,
    1,
    'alice_profile',
    EMPTY_BLOB(),
    '5678',
    TO_DATE('1985-02-15', 'YYYY-MM-DD'),
    'Adulte',
    'French',
    1
);

INSERT INTO PROFIL VALUES (
    2,
    2,
    'bob_profile',
    EMPTY_BLOB(),
    '9012',
    TO_DATE('1992-11-10', 'YYYY-MM-DD'),
    'Enfant',
    'English',
    0
);

-- Client 3 (Famille Subscription - 4 profiles)
INSERT INTO PROFIL VALUES (
    3,
    1,
    'eva_profile',
    EMPTY_BLOB(),
    '3456',
    TO_DATE('1978-09-25', 'YYYY-MM-DD'),
    'Adulte',
    'Spanish',
    1
);

INSERT INTO PROFIL VALUES (
    3,
    2,
    'max_profile',
    EMPTY_BLOB(),
    '7890',
    TO_DATE('1980-06-30', 'YYYY-MM-DD'),
    'Enfant',
    'German',
    0
);

INSERT INTO PROFIL VALUES (
    3,
    3,
    'olivia_profile',
    EMPTY_BLOB(),
    '2345',
    TO_DATE('1995-08-12', 'YYYY-MM-DD'),
    'Adulte',
    'Italian',
    1
);

INSERT INTO PROFIL VALUES (
    3,
    4,
    'leo_profile',
    EMPTY_BLOB(),
    '6789',
    TO_DATE('1998-03-08', 'YYYY-MM-DD'),
    'Enfant',
    'Japanese',
    0
);

-- Client 4 (Etudiant Subscription - 1 profile)
INSERT INTO PROFIL VALUES (
    4,
    1,
    'sophia_profile',
    EMPTY_BLOB(),
    '0123',
    TO_DATE('1993-04-01', 'YYYY-MM-DD'),
    'Adulte',
    'Hindi',
    1
);

-- Client 5 (Essentiel Subscription - 1 profile)
INSERT INTO PROFIL VALUES (
    5,
    1,
    'logan_profile',
    EMPTY_BLOB(),
    '4567',
    TO_DATE('1991-12-17', 'YYYY-MM-DD'),
    'Adulte',
    'Spanish',
    0
);

-- Client 6 (Standard Subscription - 2 profiles)
INSERT INTO PROFIL VALUES (
    6,
    1,
    'lily_profile',
    EMPTY_BLOB(),
    '8901',
    TO_DATE('1987-07-22', 'YYYY-MM-DD'),
    'Adulte',
    'German',
    1
);

INSERT INTO PROFIL VALUES (
    6,
    2,
    'ethan_profile',
    EMPTY_BLOB(),
    '2345',
    TO_DATE('1994-10-03', 'YYYY-MM-DD'),
    'Enfant',
    'Japanese',
    0
);

-- Client 7 (Famille Subscription - 4 profiles)
INSERT INTO PROFIL VALUES (
    7,
    1,
    'mia_profile',
    EMPTY_BLOB(),
    '6789',
    TO_DATE('1983-05-28', 'YYYY-MM-DD'),
    'Adulte',
    'French',
    1
);

INSERT INTO PROFIL VALUES (
    7,
    2,
    'noah_profile',
    EMPTY_BLOB(),
    '0123',
    TO_DATE('1988-11-15', 'YYYY-MM-DD'),
    'Enfant',
    'English',
    0
);

INSERT INTO PROFIL VALUES (
    7,
    3,
    'ava_profile',
    EMPTY_BLOB(),
    '3456',
    TO_DATE('1996-03-19', 'YYYY-MM-DD'),
    'Adulte',
    'Spanish',
    1
);

INSERT INTO PROFIL VALUES (
    7,
    4,
    'liam_profile',
    EMPTY_BLOB(),
    '9012',
    TO_DATE('1999-09-05', 'YYYY-MM-DD'),
    'Enfant',
    'German',
    0
);

-- Client 8 (Etudiant Subscription - 1 profile)
INSERT INTO PROFIL VALUES (
    8,
    1,
    'emma_profile',
    EMPTY_BLOB(),
    '2345',
    TO_DATE('1992-08-02', 'YYYY-MM-DD'),
    'Adulte',
    'Italian',
    1
);

-- Client 9 (Essentiel Subscription - 1 profile)
INSERT INTO PROFIL VALUES (
    9,
    1,
    'oliver_profile',
    EMPTY_BLOB(),
    '6789',
    TO_DATE('1986-01-25', 'YYYY-MM-DD'),
    'Adulte',
    'Japanese',
    0
);

-- Client 10 (Standard Subscription - 2 profiles)
INSERT INTO PROFIL VALUES (
    10,
    1,
    'sophie_profile',
    EMPTY_BLOB(),
    '0123',
    TO_DATE('1989-04-10', 'YYYY-MM-DD'),
    'Adulte',
    'Hindi',
    1
);

INSERT INTO PROFIL VALUES (
    10,
    2,
    'jackson_profile',
    EMPTY_BLOB(),
    '3456',
    TO_DATE('1993-11-08', 'YYYY-MM-DD'),
    'Enfant',
    'English',
    0
);

-- Client 11 (Famille Subscription - 4 profiles)
INSERT INTO PROFIL VALUES (
    11,
    1,
    'aiden_profile',
    EMPTY_BLOB(),
    '7890',
    TO_DATE('1979-02-14', 'YYYY-MM-DD'),
    'Adulte',
    'Spanish',
    1
);

INSERT INTO PROFIL VALUES (
    11,
    2,
    'claire_profile',
    EMPTY_BLOB(),
    '2345',
    TO_DATE('1981-09-29', 'YYYY-MM-DD'),
    'Enfant',
    'German',
    0
);

INSERT INTO PROFIL VALUES (
    11,
    3,
    'leah_profile',
    EMPTY_BLOB(),
    '6789',
    TO_DATE('1994-06-12', 'YYYY-MM-DD'),
    'Adulte',
    'Italian',
    1
);

INSERT INTO PROFIL VALUES (
    11,
    4,
    'ryan_profile',
    EMPTY_BLOB(),
    '0123',
    TO_DATE('1997-03-08', 'YYYY-MM-DD'),
    'Enfant',
    'Japanese',
    0
);

-- Client 12 (Etudiant Subscription - 1 profile)
INSERT INTO PROFIL VALUES (
    12,
    1,
    'hannah_profile',
    EMPTY_BLOB(),
    '3456',
    TO_DATE('1990-04-01', 'YYYY-MM-DD'),
    'Adulte',
    'Hindi',
    1
);

-- Client 13 (Essentiel Subscription - 1 profile)
INSERT INTO PROFIL VALUES (
    13,
    1,
    'dylan_profile',
    EMPTY_BLOB(),
    '7890',
    TO_DATE('1988-12-17', 'YYYY-MM-DD'),
    'Adulte',
    'Spanish',
    0
);

-- Client 14 (Standard Subscription - 2 profiles)
INSERT INTO PROFIL VALUES (
    14,
    1,
    'emily_profile',
    EMPTY_BLOB(),
    '1234',
    TO_DATE('1985-07-22', 'YYYY-MM-DD'),
    'Adulte',
    'German',
    1
);

INSERT INTO PROFIL VALUES (
    14,
    2,
    'owen_profile',
    EMPTY_BLOB(),
    '5678',
    TO_DATE('1992-10-03', 'YYYY-MM-DD'),
    'Enfant',
    'Japanese',
    0
);

-- Client 15 (Famille Subscription - 4 profiles)
INSERT INTO PROFIL VALUES (
    15,
    1,
    'ella_profile',
    EMPTY_BLOB(),
    '9012',
    TO_DATE('1981-06-28', 'YYYY-MM-DD'),
    'Adulte',
    'French',
    1
);

INSERT INTO PROFIL VALUES (
    15,
    2,
    'mason_profile',
    EMPTY_BLOB(),
    '2345',
    TO_DATE('1986-12-15', 'YYYY-MM-DD'),
    'Enfant',
    'English',
    0
);

INSERT INTO PROFIL VALUES (
    15,
    3,
    'lily_profile',
    EMPTY_BLOB(),
    '6789',
    TO_DATE('1995-04-10', 'YYYY-MM-DD'),
    'Adulte',
    'Spanish',
    1
);

INSERT INTO PROFIL VALUES (
    15,
    4,
    'aiden_profile',
    EMPTY_BLOB(),
    '0123',
    TO_DATE('1998-11-08', 'YYYY-MM-DD'),
    'Enfant',
    'German',
    0
);

-- Client 16 (Etudiant Subscription - 1 profile)
INSERT INTO PROFIL VALUES (
    16,
    1,
    'olivia_profile',
    EMPTY_BLOB(),
    '3456',
    TO_DATE('1993-08-02', 'YYYY-MM-DD'),
    'Adulte',
    'Italian',
    1
);

-- Client 17 (Essentiel Subscription - 1 profile)
INSERT INTO PROFIL VALUES (
    17,
    1,
    'noah_profile',
    EMPTY_BLOB(),
    '7890',
    TO_DATE('1986-01-25', 'YYYY-MM-DD'),
    'Adulte',
    'Japanese',
    0
);

-- Client 18 (Standard Subscription - 2 profiles)
INSERT INTO PROFIL VALUES (
    18,
    1,
    'ava_profile',
    EMPTY_BLOB(),
    '2345',
    TO_DATE('1989-04-10', 'YYYY-MM-DD'),
    'Adulte',
    'Hindi',
    1
);

INSERT INTO PROFIL VALUES (
    18,
    2,
    'liam_profile',
    EMPTY_BLOB(),
    '6789',
    TO_DATE('1993-11-08', 'YYYY-MM-DD'),
    'Enfant',
    'English',
    0
);

-- Client 19 (Famille Subscription - 4 profiles)
INSERT INTO PROFIL VALUES (
    19,
    1,
    'emma_profile',
    EMPTY_BLOB(),
    '0123',
    TO_DATE('1982-05-28', 'YYYY-MM-DD'),
    'Adulte',
    'Spanish',
    1
);

INSERT INTO PROFIL VALUES (
    19,
    2,
    'jackson_profile',
    EMPTY_BLOB(),
    '3456',
    TO_DATE('1987-11-15', 'YYYY-MM-DD'),
    'Enfant',
    'German',
    0
);

INSERT INTO PROFIL VALUES (
    19,
    3,
    'sophie_profile',
    EMPTY_BLOB(),
    '7890',
    TO_DATE('1996-03-19', 'YYYY-MM-DD'),
    'Adulte',
    'Italian',
    1
);

INSERT INTO PROFIL VALUES (
    19,
    4,
    'ethan_profile',
    EMPTY_BLOB(),
    '2345',
    TO_DATE('1999-09-05', 'YYYY-MM-DD'),
    'Enfant',
    'Japanese',
    0
);

-- Client 20 (Etudiant Subscription - 1 profile)
INSERT INTO PROFIL VALUES (
    20,
    1,
    'oliver_profile',
    EMPTY_BLOB(),
    '6789',
    TO_DATE('1992-08-02', 'YYYY-MM-DD'),
    'Adulte',
    'Hindi',
    1
);

-- Client 21 (Essentiel Subscription - 1 profile)
INSERT INTO PROFIL VALUES (
    21,
    1,
    'mia_profile',
    EMPTY_BLOB(),
    '1234',
    TO_DATE('1987-04-15', 'YYYY-MM-DD'),
    'Adulte',
    'Italian',
    0
);

-- Client 22 (Standard Subscription - 2 profiles)
INSERT INTO PROFIL VALUES (
    22,
    1,
    'elijah_profile',
    EMPTY_BLOB(),
    '5678',
    TO_DATE('1990-09-30', 'YYYY-MM-DD'),
    'Adulte',
    'Japanese',
    1
);

INSERT INTO PROFIL VALUES (
    22,
    2,
    'scarlett_profile',
    EMPTY_BLOB(),
    '9012',
    TO_DATE('1995-01-20', 'YYYY-MM-DD'),
    'Enfant',
    'German',
    0
);

-- Client 23 (Famille Subscription - 4 profiles)
INSERT INTO PROFIL VALUES (
    23,
    1,
    'lucas_profile',
    EMPTY_BLOB(),
    '2345',
    TO_DATE('1980-07-12', 'YYYY-MM-DD'),
    'Adulte',
    'Hindi',
    1
);

INSERT INTO PROFIL VALUES (
    23,
    2,
    'amelia_profile',
    EMPTY_BLOB(),
    '6789',
    TO_DATE('1985-12-28', 'YYYY-MM-DD'),
    'Enfant',
    'English',
    0
);

INSERT INTO PROFIL VALUES (
    23,
    3,
    'aiden_profile',
    EMPTY_BLOB(),
    '0123',
    TO_DATE('1994-04-15', 'YYYY-MM-DD'),
    'Adulte',
    'Spanish',
    1
);

INSERT INTO PROFIL VALUES (
    23,
    4,
    'zoey_profile',
    EMPTY_BLOB(),
    '3456',
    TO_DATE('1997-11-20', 'YYYY-MM-DD'),
    'Enfant',
    'French',
    0
);

-- Client 24 (Etudiant Subscription - 1 profile)
INSERT INTO PROFIL VALUES (
    24,
    1,
    'jackson_profile',
    EMPTY_BLOB(),
    '7890',
    TO_DATE('1992-02-25', 'YYYY-MM-DD'),
    'Adulte',
    'German',
    1
);

-- Client 25 (Essentiel Subscription - 1 profile)
INSERT INTO PROFIL VALUES (
    25,
    1,
    'emma_profile',
    EMPTY_BLOB(),
    '2345',
    TO_DATE('1988-05-10', 'YYYY-MM-DD'),
    'Adulte',
    'Italian',
    0
);

-- Client 26 (Standard Subscription - 2 profiles)
INSERT INTO PROFIL VALUES (
    26,
    1,
    'liam_profile',
    EMPTY_BLOB(),
    '6789',
    TO_DATE('1991-08-22', 'YYYY-MM-DD'),
    'Adulte',
    'Japanese',
    1
);

INSERT INTO PROFIL VALUES (
    26,
    2,
    'olivia_profile',
    EMPTY_BLOB(),
    '0123',
    TO_DATE('1996-01-15', 'YYYY-MM-DD'),
    'Enfant',
    'Hindi',
    0
);

-- Client 27 (Famille Subscription - 4 profiles)
INSERT INTO PROFIL VALUES (
    27,
    1,
    'noah_profile',
    EMPTY_BLOB(),
    '3456',
    TO_DATE('1982-06-28', 'YYYY-MM-DD'),
    'Adulte',
    'English',
    1
);

INSERT INTO PROFIL VALUES (
    27,
    2,
    'ava_profile',
    EMPTY_BLOB(),
    '7890',
    TO_DATE('1987-12-15', 'YYYY-MM-DD'),
    'Enfant',
    'Spanish',
    0
);

INSERT INTO PROFIL VALUES (
    27,
    3,
    'isabella_profile',
    EMPTY_BLOB(),
    '1234',
    TO_DATE('1996-04-10', 'YYYY-MM-DD'),
    'Adulte',
    'French',
    1
);

INSERT INTO PROFIL VALUES (
    27,
    4,
    'mason_profile',
    EMPTY_BLOB(),
    '5678',
    TO_DATE('1999-11-08', 'YYYY-MM-DD'),
    'Enfant',
    'German',
    0
);

-- Client 28 (Etudiant Subscription - 1 profile)
INSERT INTO PROFIL VALUES (
    28,
    1,
    'sophia_profile',
    EMPTY_BLOB(),
    '9012',
    TO_DATE('1993-08-02', 'YYYY-MM-DD'),
    'Adulte',
    'Italian',
    1
);

-- Client 29 (Essentiel Subscription - 1 profile)
INSERT INTO PROFIL VALUES (
    29,
    1,
    'ethan_profile',
    EMPTY_BLOB(),
    '3456',
    TO_DATE('1986-01-25', 'YYYY-MM-DD'),
    'Adulte',
    'Japanese',
    0
);

-- Client 30 (Standard Subscription - 2 profiles)
INSERT INTO PROFIL VALUES (
    30,
    1,
    'amelia_profile',
    EMPTY_BLOB(),
    '7890',
    TO_DATE('1989-04-10', 'YYYY-MM-DD'),
    'Adulte',
    'Hindi',
    1
);

INSERT INTO PROFIL VALUES (
    30,
    2,
    'oliver_profile',
    EMPTY_BLOB(),
    '2345',
    TO_DATE('1993-11-08', 'YYYY-MM-DD'),
    'Enfant',
    'English',
    0
);

------------------------------------------------------------------

/* TABLE CONTENU */
-- Contenu 1
INSERT INTO CONTENU VALUES (
    1,
    'La La Land',
    'Tous publics',
    'Une comédie musicale romantique pleine de passion et de rêves.',
    'Payant',
    'English',
    'Film',
    TO_DATE('2016-12-25', 'YYYY-MM-DD'),
    123,
    NULL
);

-- Contenu 2
INSERT INTO CONTENU VALUES (
    2,
    'Inception',
    '-12 ans',
    'Un film de science-fiction captivant sur les rêves et la réalité.',
    'Payant',
    'English',
    'Film',
    TO_DATE('2010-07-16', 'YYYY-MM-DD'),
    148,
    NULL
);

-- Contenu 3
INSERT INTO CONTENU VALUES (
    3,
    'The Shawshank Redemption',
    '-16 ans',
    'Un drame carcéral émouvant basé sur une nouvelle de Stephen King.',
    'Payant',
    'English',
    'Film',
    TO_DATE('1994-09-23', 'YYYY-MM-DD'),
    142,
    NULL
);

-- Contenu 4
INSERT INTO CONTENU VALUES (
    4,
    'The Dark Knight',
    '-12 ans',
    'Un chef-d''œuvre de super-héros mettant en vedette Batman et le Joker.',
    'Payant',
    'English',
    'Film',
    TO_DATE('2008-07-18', 'YYYY-MM-DD'),
    152,
    NULL
);

-- Contenu 5
INSERT INTO CONTENU VALUES (
    5,
    'Forrest Gump',
    'Tous publics',
    'L''histoire inspirante de Forrest Gump à travers les décennies.',
    'Payant',
    'English',
    'Film',
    TO_DATE('1994-07-06', 'YYYY-MM-DD'),
    142,
    NULL
);

-- Contenu 6
INSERT INTO CONTENU VALUES (
    6,
    'Fight Club',
    '-16 ans',
    'Un thriller psychologique explorant la vie d''un homme en lutte contre lui-même.',
    'Payant',
    'English',
    'Film',
    TO_DATE('1999-10-15', 'YYYY-MM-DD'),
    139,
    NULL
);

-- Contenu 7
INSERT INTO CONTENU VALUES (
    7,
    'The Godfather',
    '-16 ans',
    'Le classique du crime mettant en scène la famille mafieuse Corleone.',
    'Payant',
    'English',
    'Film',
    TO_DATE('1972-03-15', 'YYYY-MM-DD'),
    175,
    NULL
);

-- Contenu 8
INSERT INTO CONTENU VALUES (
    8,
    'Pulp Fiction',
    '-18 ans',
    'Une histoire entrelacée de gangsters, de boxeurs et de danse.',
    'Payant',
    'English',
    'Film',
    TO_DATE('1994-05-12', 'YYYY-MM-DD'),
    154,
    NULL
);

-- Contenu 9
INSERT INTO CONTENU VALUES (
    9,
    'The Matrix',
    '-12 ans',
    'Un film de science-fiction révolutionnaire explorant la réalité virtuelle.',
    'Payant',
    'English',
    'Film',
    TO_DATE('1999-03-31', 'YYYY-MM-DD'),
    136,
    NULL
);

-- Contenu 10
INSERT INTO CONTENU VALUES (
    10,
    'The Lord of the Rings: The Fellowship of the Ring',
    'Tous publics',
    'Le premier volet de l''épopée fantastique basée sur les livres de J.R.R. Tolkien.',
    'Payant',
    'English',
    'Film',
    TO_DATE('2001-12-19', 'YYYY-MM-DD'),
    178,
    NULL
);

-- Contenu 11
INSERT INTO CONTENU VALUES (
    11,
    'Schindler''s List',
    '-16 ans',
    'L''histoire poignante d''Oskar Schindler pendant la Seconde Guerre mondiale.',
    'Payant',
    'English',
    'Film',
    TO_DATE('1993-11-30', 'YYYY-MM-DD'),
    195,
    NULL
);

-- Contenu 12
INSERT INTO CONTENU VALUES (
    12,
    'The Silence of the Lambs',
    '-18 ans',
    'Un thriller psychologique mettant en scène le Dr Hannibal Lecter.',
    'Payant',
    'English',
    'Film',
    TO_DATE('1991-01-30', 'YYYY-MM-DD'),
    118,
    NULL
);

-- Contenu 13
INSERT INTO CONTENU VALUES (
    13,
    'Gladiator',
    '-16 ans',
    'Un film épique sur la vengeance dans la Rome antique.',
    'Payant',
    'English',
    'Film',
    TO_DATE('2000-05-01', 'YYYY-MM-DD'),
    155,
    NULL
);

-- Contenu 14
INSERT INTO CONTENU VALUES (
    14,
    'The Departed',
    '-18 ans',
    'Un thriller policier impliquant des infiltrations dans la mafia irlandaise.',
    'Payant',
    'English',
    'Film',
    TO_DATE('2006-10-06', 'YYYY-MM-DD'),
    151,
    NULL
);

-- Contenu 15
INSERT INTO CONTENU VALUES (
    15,
    'The Green Mile',
    '-16 ans',
    'Un drame fantastique basé sur le roman de Stephen King.',
    'Payant',
    'English',
    'Film',
    TO_DATE('1999-12-10', 'YYYY-MM-DD'),
    189,
    NULL
);

-- Contenu 16
INSERT INTO CONTENU VALUES (
    16,
    'The Social Network',
    '-12 ans',
    'L''histoire de la création de Facebook et de ses conséquences.',
    'Payant',
    'English',
    'Film',
    TO_DATE('2010-09-24', 'YYYY-MM-DD'),
    120,
    NULL
);

-- Contenu 17
INSERT INTO CONTENU VALUES (
    17,
    'Inglourious Basterds',
    '-16 ans',
    'Un film de guerre alternatif dirigé par Quentin Tarantino.',
    'Payant',
    'English',
    'Film',
    TO_DATE('2009-05-20', 'YYYY-MM-DD'),
    153,
    NULL
);

-- Contenu 18
INSERT INTO CONTENU VALUES (
    18,
    'The Pianist',
    '-16 ans',
    'L''histoire vraie d''un pianiste juif pendant la Seconde Guerre mondiale.',
    'Payant',
    'English',
    'Film',
    TO_DATE('2002-09-02', 'YYYY-MM-DD'),
    150,
    NULL
);

-- Contenu 19
INSERT INTO CONTENU VALUES (
    19,
    'The Dark Knight Rises',
    '-12 ans',
    'La conclusion épique de la trilogie Batman de Christopher Nolan.',
    'Payant',
    'English',
    'Film',
    TO_DATE('2012-07-20', 'YYYY-MM-DD'),
    164,
    NULL
);

-- Contenu 20
INSERT INTO CONTENU VALUES (
    20,
    'The Shining',
    '-16 ans',
    'Un thriller d''horreur psychologique basé sur le roman de Stephen King.',
    'Payant',
    'English',
    'Film',
    TO_DATE('1980-05-23', 'YYYY-MM-DD'),
    146,
    NULL
);

-- Contenu 21
INSERT INTO CONTENU VALUES (
    21,
    'The Revenant',
    '-16 ans',
    'Un thriller d''aventure mettant en scène un homme cherchant à survivre dans la nature sauvage.',
    'Payant',
    'English',
    'Film',
    TO_DATE('2015-12-16', 'YYYY-MM-DD'),
    156,
    NULL
);

-- Contenu 22
INSERT INTO CONTENU VALUES (
    22,
    'The Great Gatsby',
    '-12 ans',
    'Une adaptation cinématographique du classique littéraire de F. Scott Fitzgerald.',
    'Payant',
    'English',
    'Film',
    TO_DATE('2013-05-01', 'YYYY-MM-DD'),
    143,
    NULL
);

-- Contenu 23
INSERT INTO CONTENU VALUES (
    23,
    'The Wolf of Wall Street',
    '-18 ans',
    'Un film comique criminel basé sur les mémoires de Jordan Belfort.',
    'Payant',
    'English',
    'Film',
    TO_DATE('2013-12-17', 'YYYY-MM-DD'),
    180,
    NULL
);

-- Contenu 24
INSERT INTO CONTENU VALUES (
    24,
    'American Beauty',
    '-16 ans',
    'Un drame satirique explorant la vie d''une famille américaine.',
    'Payant',
    'English',
    'Film',
    TO_DATE('1999-09-08', 'YYYY-MM-DD'),
    122,
    NULL
);

-- Contenu 25
INSERT INTO CONTENU VALUES (
    25,
    'The Truman Show',
    'Tous publics',
    'Une comédie dramatique sur la vie d''un homme constamment surveillé.',
    'Payant',
    'English',
    'Film',
    TO_DATE('1998-06-05', 'YYYY-MM-DD'),
    103,
    NULL
);

-- Contenu 26
INSERT INTO CONTENU VALUES (
    26,
    'Breaking Bad',
    '-18 ans',
    'Une série dramatique sur la transformation d''un professeur en producteur de méthamphétamine.',
    'Payant',
    'English',
    'Série',
    TO_DATE('2008-01-20', 'YYYY-MM-DD'),
    NULL,
    2008
);

-- Contenu 27
INSERT INTO CONTENU VALUES (
    27,
    'Game of Thrones',
    '-18 ans',
    'Une série épique basée sur les romans de George R.R. Martin.',
    'Payant',
    'English',
    'Série',
    TO_DATE('2011-04-17', 'YYYY-MM-DD'),
    NULL,
    2011
);

-- Contenu 28
INSERT INTO CONTENU VALUES (
    28,
    'Stranger Things',
    '-12 ans',
    'Une série de science-fiction mettant en scène des phénomènes surnaturels dans une petite ville.',
    'Payant',
    'English',
    'Série',
    TO_DATE('2016-07-15', 'YYYY-MM-DD'),
    NULL,
    2016
);

-- Contenu 29
INSERT INTO CONTENU VALUES (
    29,
    'Black Mirror',
    '-16 ans',
    'Une série anthologique explorant les implications sombres de la technologie.',
    'Payant',
    'English',
    'Série',
    TO_DATE('2011-12-04', 'YYYY-MM-DD'),
    NULL,
    2011
);

-- Contenu 30
INSERT INTO CONTENU VALUES (
    30,
    'The Crown',
    '-16 ans',
    'Une série dramatique retraçant le règne de la Reine Elizabeth II.',
    'Payant',
    'English',
    'Série',
    TO_DATE('2016-11-04', 'YYYY-MM-DD'),
    NULL,
    2016
);

------------------------------------------------------------------

/* TABLE EPISODE */
-- Episode 1 (Série)
INSERT INTO EPISODE VALUES (
    26,
    1,
    1,
    'Pilot',
    50,
    TO_DATE('2008-01-20', 'YYYY-MM-DD')
);

-- Episode 2 (Série)
INSERT INTO EPISODE VALUES (
    26,
    1,
    2,
    'Cat''s in the Bag...',
    48,
    TO_DATE('2008-01-27', 'YYYY-MM-DD')
);

-- Episode 3 (Série)
INSERT INTO EPISODE VALUES (
    26,
    1,
    3,
    '...And the Bag''s in the River',
    47,
    TO_DATE('2008-02-10', 'YYYY-MM-DD')
);

-- Episode 4 (Série)
INSERT INTO EPISODE VALUES (
    26,
    1,
    4,
    'Cancer Man',
    46,
    TO_DATE('2008-02-17', 'YYYY-MM-DD')
);

-- Episode 5 (Série)
INSERT INTO EPISODE VALUES (
    26,
    1,
    5,
    'Gray Matter',
    45,
    TO_DATE('2008-02-24', 'YYYY-MM-DD')
);

-- Episode 1 (Série)
INSERT INTO EPISODE VALUES (
    27,
    1,
    1,
    'Winter Is Coming',
    60,
    TO_DATE('2011-04-17', 'YYYY-MM-DD')
);

-- Episode 2 (Série)
INSERT INTO EPISODE VALUES (
    27,
    1,
    2,
    'The Kingsroad',
    58,
    TO_DATE('2011-04-24', 'YYYY-MM-DD')
);

-- Episode 3 (Série)
INSERT INTO EPISODE VALUES (
    27,
    1,
    3,
    'Lord Snow',
    55,
    TO_DATE('2011-05-01', 'YYYY-MM-DD')
);

-- Episode 4 (Série)
INSERT INTO EPISODE VALUES (
    27,
    1,
    4,
    'Cripples, Bastards, and Broken Things',
    57,
    TO_DATE('2011-05-08', 'YYYY-MM-DD')
);

-- Episode 5 (Série)
INSERT INTO EPISODE VALUES (
    27,
    1,
    5,
    'The Wolf and the Lion',
    59,
    TO_DATE('2011-05-15', 'YYYY-MM-DD')
);

-- Episode 1 (Série)
INSERT INTO EPISODE VALUES (
    28,
    1,
    1,
    'Chapter One: The Vanishing of Will Byers',
    50,
    TO_DATE('2016-07-15', 'YYYY-MM-DD')
);

-- Episode 2 (Série)
INSERT INTO EPISODE VALUES (
    28,
    1,
    2,
    'Chapter Two: The Weirdo on Maple Street',
    48,
    TO_DATE('2016-07-15', 'YYYY-MM-DD')
);

-- Episode 3 (Série)
INSERT INTO EPISODE VALUES (
    28,
    1,
    3,
    'Chapter Three: Holly, Jolly',
    46,
    TO_DATE('2016-07-15', 'YYYY-MM-DD')
);

-- Episode 4 (Série)
INSERT INTO EPISODE VALUES (
    28,
    1,
    4,
    'Chapter Four: The Body',
    45,
    TO_DATE('2016-07-15', 'YYYY-MM-DD')
);

-- Episode 5 (Série)
INSERT INTO EPISODE VALUES (
    28,
    1,
    5,
    'Chapter Five: The Flea and the Acrobat',
    47,
    TO_DATE('2016-07-15', 'YYYY-MM-DD')
);

-- Episode 1 (Série)
INSERT INTO EPISODE VALUES (
    29,
    1,
    1,
    'The National Anthem',
    60,
    TO_DATE('2011-12-04', 'YYYY-MM-DD')
);

-- Episode 2 (Série)
INSERT INTO EPISODE VALUES (
    29,
    1,
    2,
    'Fifteen Million Merits',
    58,
    TO_DATE('2011-12-11', 'YYYY-MM-DD')
);

-- Episode 3 (Série)
INSERT INTO EPISODE VALUES (
    29,
    1,
    3,
    'The Entire History of You',
    55,
    TO_DATE('2011-12-18', 'YYYY-MM-DD')
);

-- Episode 4 (Série)
INSERT INTO EPISODE VALUES (
    29,
    1,
    4,
    'Be Right Back',
    57,
    TO_DATE('2011-12-26', 'YYYY-MM-DD')
);

-- Episode 5 (Série)
INSERT INTO EPISODE VALUES (
    29,
    1,
    5,
    'White Christmas',
    59,
    TO_DATE('2011-12-30', 'YYYY-MM-DD')
);

-- Episode 1 (Série)
INSERT INTO EPISODE VALUES (
    30,
    1,
    1,
    'Wolferton Splash',
    60,
    TO_DATE('2016-11-04', 'YYYY-MM-DD')
);

-- Episode 2 (Série)
INSERT INTO EPISODE VALUES (
    30,
    1,
    2,
    'Hyde Park Corner',
    58,
    TO_DATE('2016-11-04', 'YYYY-MM-DD')
);

-- Episode 3 (Série)
INSERT INTO EPISODE VALUES (
    30,
    1,
    3,
    'Windsor',
    55,
    TO_DATE('2016-11-04', 'YYYY-MM-DD')
);

-- Episode 4 (Série)
INSERT INTO EPISODE VALUES (
    30,
    1,
    4,
    'Act of God',
    57,
    TO_DATE('2016-11-04', 'YYYY-MM-DD')
);

-- Episode 5 (Série)
INSERT INTO EPISODE VALUES (
    30,
    1,
    5,
    'Smoke and Mirrors',
    59,
    TO_DATE('2016-11-04', 'YYYY-MM-DD')
);

------------------------------------------------------------------

/* TABLE PROFESSIONNEL */


-- Professionnel 1
INSERT INTO PROFESSIONNEL VALUES (
    1,
    'Nolan',
    'Christopher',
    'British',
    TO_DATE('1970-07-30', 'YYYY-MM-DD')
);

-- Professionnel 2
INSERT INTO PROFESSIONNEL VALUES (
    2,
    'Scorsese',
    'Martin',
    'American',
    TO_DATE('1942-11-17', 'YYYY-MM-DD')
);

-- Professionnel 3
INSERT INTO PROFESSIONNEL VALUES (
    3,
    'Spielberg',
    'Steven',
    'American',
    TO_DATE('1946-12-18', 'YYYY-MM-DD')
);

-- Professionnel 4
INSERT INTO PROFESSIONNEL VALUES (
    4,
    'Tarantino',
    'Quentin',
    'American',
    TO_DATE('1963-03-27', 'YYYY-MM-DD')
);

-- Professionnel 5
INSERT INTO PROFESSIONNEL VALUES (
    5,
    'Cameron',
    'James',
    'Canadian',
    TO_DATE('1954-08-16', 'YYYY-MM-DD')
);

-- Professionnel 6
INSERT INTO PROFESSIONNEL VALUES (
    6,
    'Wright',
    'Edgar',
    'British',
    TO_DATE('1974-04-18', 'YYYY-MM-DD')
);

-- Professionnel 7
INSERT INTO PROFESSIONNEL VALUES (
    7,
    'Villeneuve',
    'Denis',
    'Canadian',
    TO_DATE('1967-10-03', 'YYYY-MM-DD')
);

-- Professionnel 8
INSERT INTO PROFESSIONNEL VALUES (
    8,
    'Coen',
    'Joel',
    'American',
    TO_DATE('1954-11-29', 'YYYY-MM-DD')
);

-- Professionnel 9
INSERT INTO PROFESSIONNEL VALUES (
    9,
    'Nolan',
    'Jonathan',
    'American',
    TO_DATE('1976-06-06', 'YYYY-MM-DD')
);

-- Professionnel 10
INSERT INTO PROFESSIONNEL VALUES (
    10,
    'Kubrick',
    'Stanley',
    'American',
    TO_DATE('1928-07-26', 'YYYY-MM-DD')
);

-- Professionnel 11
INSERT INTO PROFESSIONNEL VALUES (
    11,
    'Fincher',
    'David',
    'American',
    TO_DATE('1962-08-28', 'YYYY-MM-DD')
);

-- Professionnel 12
INSERT INTO PROFESSIONNEL VALUES (
    12,
    'Hitchcock',
    'Alfred',
    'British',
    TO_DATE('1899-08-13', 'YYYY-MM-DD')
);

-- Professionnel 13
INSERT INTO PROFESSIONNEL VALUES (
    13,
    'Coppola',
    'Francis Ford',
    'American',
    TO_DATE('1939-04-07', 'YYYY-MM-DD')
);

-- Professionnel 14
INSERT INTO PROFESSIONNEL VALUES (
    14,
    'Anderson',
    'Paul Thomas',
    'American',
    TO_DATE('1970-06-26', 'YYYY-MM-DD')
);

-- Professionnel 15
INSERT INTO PROFESSIONNEL VALUES (
    15,
    'Burton',
    'Tim',
    'American',
    TO_DATE('1958-08-25', 'YYYY-MM-DD')
);

-- Professionnel 16
INSERT INTO PROFESSIONNEL VALUES (
    16,
    'Smith',
    'Kevin',
    'American',
    TO_DATE('1970-08-02', 'YYYY-MM-DD')
);

-- Professionnel 17
INSERT INTO PROFESSIONNEL VALUES (
    17,
    'Del Toro',
    'Guillermo',
    'Mexican',
    TO_DATE('1964-10-09', 'YYYY-MM-DD')
);

-- Professionnel 18
INSERT INTO PROFESSIONNEL VALUES (
    18,
    'Eastwood',
    'Clint',
    'American',
    TO_DATE('1930-05-31', 'YYYY-MM-DD')
);

-- Professionnel 19
INSERT INTO PROFESSIONNEL VALUES (
    19,
    'Gilliam',
    'Terry',
    'American',
    TO_DATE('1940-11-22', 'YYYY-MM-DD')
);

-- Professionnel 20
INSERT INTO PROFESSIONNEL VALUES (
    20,
    'Allen',
    'Woody',
    'American',
    TO_DATE('1935-12-01', 'YYYY-MM-DD')
);

-- Professionnel 21
INSERT INTO PROFESSIONNEL VALUES (
    21,
    'Soderbergh',
    'Steven',
    'American',
    TO_DATE('1963-01-14', 'YYYY-MM-DD')
);

-- Professionnel 22
INSERT INTO PROFESSIONNEL VALUES (
    22,
    'Stone',
    'Oliver',
    'American',
    TO_DATE('1946-09-15', 'YYYY-MM-DD')
);

-- Professionnel 23
INSERT INTO PROFESSIONNEL VALUES (
    23,
    'Lee',
    'Ang',
    'Taiwanese',
    TO_DATE('1954-10-23', 'YYYY-MM-DD')
);

-- Professionnel 24
INSERT INTO PROFESSIONNEL VALUES (
    24,
    'Howard',
    'Ron',
    'American',
    TO_DATE('1954-03-01', 'YYYY-MM-DD')
);

-- Professionnel 25
INSERT INTO PROFESSIONNEL VALUES (
    25,
    'Cuarón',
    'Alfonso',
    'Mexican',
    TO_DATE('1961-11-28', 'YYYY-MM-DD')
);

-- Professionnel 26
INSERT INTO PROFESSIONNEL VALUES (
    26,
    'Zemeckis',
    'Robert',
    'American',
    TO_DATE('1952-05-14', 'YYYY-MM-DD')
);

-- Professionnel 27
INSERT INTO PROFESSIONNEL VALUES (
    27,
    'Cronenberg',
    'David',
    'Canadian',
    TO_DATE('1943-03-15', 'YYYY-MM-DD')
);

-- Professionnel 28
INSERT INTO PROFESSIONNEL VALUES (
    28,
    'Spielberg',
    'Sasha',
    'American',
    TO_DATE('1990-05-14', 'YYYY-MM-DD')
);

-- Professionnel 29
INSERT INTO PROFESSIONNEL VALUES (
    29,
    'Gondry',
    'Michel',
    'French',
    TO_DATE('1963-05-08', 'YYYY-MM-DD')
);

-- Professionnel 30
INSERT INTO PROFESSIONNEL VALUES (
    30,
    'Lynch',
    'David',
    'American',
    TO_DATE('1946-01-20', 'YYYY-MM-DD')
);

------------------------------------------------------------------

/* TABLE CATEGORIE */

-- insertion des données
DECLARE
    TYPE CATEGORIE_LIST IS
        TABLE OF VARCHAR2(30);
    CATEGORIES CATEGORIE_LIST := CATEGORIE_LIST( 'Action', 'Anime', 'Asie', 'Aventure', 'Comédie', 'Court-métrage', 'Cuisine et voyages', 'Documentaire', 'Drame', 'Droit', 'Emotions', 'Fantastique', 'Guerre', 'Histoire', 'Horreur', 'Indépendant', 'Jeunesse et Famille', 'LGBTQ+', 'Médical', 'Musique et Comédie musicale', 'Policier', 'Primé', 'Psychologique', 'Romance', 'Sciences et nature', 'Science-fiction', 'Sport', 'Stand-up et talk-show', 'Téléréalité', 'Thriller' );
BEGIN
    FOR I IN 1..CATEGORIES.COUNT LOOP
        INSERT INTO CATEGORIE(
            NOMCATEGORIE
        ) VALUES (
            CATEGORIES(I)
        );
    END LOOP;
END;
/

------------------------------------------------------------------
------------------------------------------------------------------

/* TABLE LECTUREFILM */

-- Client 1, Profil 1
INSERT INTO LECTUREFILM VALUES (
    1,
    1,
    2,
    TO_DATE('2023-01-15', 'YYYY-MM-DD'),
    TO_DATE('2023-01-15 20:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-01-15 22:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    'English',
    1
);

-- Client 1, Profil 2
INSERT INTO LECTUREFILM VALUES (
    1,
    2,
    15,
    TO_DATE('2023-02-10', 'YYYY-MM-DD'),
    TO_DATE('2023-02-10 19:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-02-10 22:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'French',
    0
);

-- Client 2, Profil 1
INSERT INTO LECTUREFILM VALUES (
    2,
    1,
    8,
    TO_DATE('2023-03-15', 'YYYY-MM-DD'),
    TO_DATE('2023-03-15 19:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-03-15 22:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'English',
    1
);

-- Client 2, Profil 2
INSERT INTO LECTUREFILM VALUES (
    2,
    2,
    18,
    TO_DATE('2023-02-20', 'YYYY-MM-DD'),
    TO_DATE('2023-02-20 20:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-02-20 22:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Spanish',
    0
);

-- Client 3, Profil 1
INSERT INTO LECTUREFILM VALUES (
    3,
    1,
    21,
    TO_DATE('2023-01-10', 'YYYY-MM-DD'),
    TO_DATE('2023-01-10 18:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-01-10 20:15:00', 'YYYY-MM-DD HH24:MI:SS'),
    'German',
    1
);

-- Client 3, Profil 2
INSERT INTO LECTUREFILM VALUES (
    3,
    2,
    5,
    TO_DATE('2023-02-28', 'YYYY-MM-DD'),
    TO_DATE('2023-02-28 21:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-02-28 23:15:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Italian',
    0
);

-- Client 4, Profil 1
INSERT INTO LECTUREFILM VALUES (
    4,
    1,
    14,
    TO_DATE('2023-04-05', 'YYYY-MM-DD'),
    TO_DATE('2023-04-05 20:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-04-05 22:15:00', 'YYYY-MM-DD HH24:MI:SS'),
    'French',
    1
);

-- Client 4, Profil 2
INSERT INTO LECTUREFILM VALUES (
    4,
    2,
    25,
    TO_DATE('2023-03-01', 'YYYY-MM-DD'),
    TO_DATE('2023-03-01 19:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-03-01 21:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    'English',
    0
);

-- Client 5, Profil 1
INSERT INTO LECTUREFILM VALUES (
    5,
    1,
    11,
    TO_DATE('2023-02-15', 'YYYY-MM-DD'),
    TO_DATE('2023-02-15 19:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-02-15 22:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Spanish',
    1
);

-- Client 5, Profil 2
INSERT INTO LECTUREFILM VALUES (
    5,
    2,
    16,
    TO_DATE('2023-01-20', 'YYYY-MM-DD'),
    TO_DATE('2023-01-20 18:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-01-20 20:15:00', 'YYYY-MM-DD HH24:MI:SS'),
    'German',
    0
);

-- Client 6, Profil 1
INSERT INTO LECTUREFILM VALUES (
    6,
    1,
    7,
    TO_DATE('2023-03-25', 'YYYY-MM-DD'),
    TO_DATE('2023-03-25 20:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-03-25 22:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Italian',
    1
);

-- Client 6, Profil 2
INSERT INTO LECTUREFILM VALUES (
    6,
    2,
    20,
    TO_DATE('2023-02-10', 'YYYY-MM-DD'),
    TO_DATE('2023-02-10 19:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-02-10 22:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'French',
    0
);

-- Client 7, Profil 1
INSERT INTO LECTUREFILM VALUES (
    7,
    1,
    19,
    TO_DATE('2023-01-15', 'YYYY-MM-DD'),
    TO_DATE('2023-01-15 19:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-01-15 21:15:00', 'YYYY-MM-DD HH24:MI:SS'),
    'English',
    1
);

-- Client 7, Profil 2
INSERT INTO LECTUREFILM VALUES (
    7,
    2,
    3,
    TO_DATE('2023-02-20', 'YYYY-MM-DD'),
    TO_DATE('2023-02-20 20:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-02-20 22:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    'French',
    0
);

-- Client 8, Profil 1
INSERT INTO LECTUREFILM VALUES (
    8,
    1,
    9,
    TO_DATE('2023-03-05', 'YYYY-MM-DD'),
    TO_DATE('2023-03-05 18:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-03-05 21:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'German',
    1
);

-- Client 8, Profil 2
INSERT INTO LECTUREFILM VALUES (
    8,
    2,
    22,
    TO_DATE('2023-04-01', 'YYYY-MM-DD'),
    TO_DATE('2023-04-01 20:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-04-01 22:15:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Italian',
    0
);

-- Client 9, Profil 1
INSERT INTO LECTUREFILM VALUES (
    9,
    1,
    4,
    TO_DATE('2023-02-10', 'YYYY-MM-DD'),
    TO_DATE('2023-02-10 19:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-02-10 22:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'French',
    1
);

-- Client 9, Profil 2
INSERT INTO LECTUREFILM VALUES (
    9,
    2,
    13,
    TO_DATE('2023-03-20', 'YYYY-MM-DD'),
    TO_DATE('2023-03-20 18:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-03-20 20:15:00', 'YYYY-MM-DD HH24:MI:SS'),
    'English',
    0
);

-- Client 10, Profil 1
INSERT INTO LECTUREFILM VALUES (
    10,
    1,
    23,
    TO_DATE('2023-01-25', 'YYYY-MM-DD'),
    TO_DATE('2023-01-25 20:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-01-25 22:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Spanish',
    1
);

-- Client 10, Profil 2
INSERT INTO LECTUREFILM VALUES (
    10,
    2,
    6,
    TO_DATE('2023-02-15', 'YYYY-MM-DD'),
    TO_DATE('2023-02-15 19:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-02-15 22:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'German',
    0
);

-- Client 11, Profil 1
INSERT INTO LECTUREFILM VALUES (
    11,
    1,
    7,
    TO_DATE('2023-03-10', 'YYYY-MM-DD'),
    TO_DATE('2023-03-10 19:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-03-10 21:15:00', 'YYYY-MM-DD HH24:MI:SS'),
    'English',
    1
);

-- Client 11, Profil 2
INSERT INTO LECTUREFILM VALUES (
    11,
    2,
    14,
    TO_DATE('2023-04-05', 'YYYY-MM-DD'),
    TO_DATE('2023-04-05 20:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-04-05 22:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    'French',
    0
);

-- Client 12, Profil 1
INSERT INTO LECTUREFILM VALUES (
    12,
    1,
    2,
    TO_DATE('2023-02-20', 'YYYY-MM-DD'),
    TO_DATE('2023-02-20 18:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-02-20 21:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'German',
    1
);

-- Client 12, Profil 2
INSERT INTO LECTUREFILM VALUES (
    12,
    2,
    10,
    TO_DATE('2023-03-15', 'YYYY-MM-DD'),
    TO_DATE('2023-03-15 20:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-03-15 22:15:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Italian',
    0
);

-- Client 13, Profil 1
INSERT INTO LECTUREFILM VALUES (
    13,
    1,
    22,
    TO_DATE('2023-01-30', 'YYYY-MM-DD'),
    TO_DATE('2023-01-30 19:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-01-30 22:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'French',
    1
);

-- Client 13, Profil 2
INSERT INTO LECTUREFILM VALUES (
    13,
    2,
    21,
    TO_DATE('2023-03-25', 'YYYY-MM-DD'),
    TO_DATE('2023-03-25 18:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-03-25 20:15:00', 'YYYY-MM-DD HH24:MI:SS'),
    'English',
    0
);

-- Client 14, Profil 1
INSERT INTO LECTUREFILM VALUES (
    14,
    1,
    17,
    TO_DATE('2023-02-05', 'YYYY-MM-DD'),
    TO_DATE('2023-02-05 20:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-02-05 22:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Spanish',
    1
);

-- Client 14, Profil 2
INSERT INTO LECTUREFILM VALUES (
    14,
    2,
    5,
    TO_DATE('2023-03-01', 'YYYY-MM-DD'),
    TO_DATE('2023-03-01 19:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-03-01 22:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'German',
    0
);

-- Client 15, Profil 1
INSERT INTO LECTUREFILM VALUES (
    15,
    1,
    9,
    TO_DATE('2023-04-10', 'YYYY-MM-DD'),
    TO_DATE('2023-04-10 19:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-04-10 21:15:00', 'YYYY-MM-DD HH24:MI:SS'),
    'French',
    1
);

-- Client 15, Profil 2
INSERT INTO LECTUREFILM VALUES (
    15,
    2,
    20,
    TO_DATE('2023-02-15', 'YYYY-MM-DD'),
    TO_DATE('2023-02-15 20:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-02-15 22:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Spanish',
    0
);

------------------------------------------------------------------

/* TABLE LECTUREEP */
-- Client 1, Profil 1
INSERT INTO LECTUREEP VALUES (
    1,
    1,
    26,
    1,
    TO_DATE('2023-01-15', 'YYYY-MM-DD'),
    TO_DATE('2023-01-15 19:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-01-15 21:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'English',
    1
);

-- Client 2, Profil 1
INSERT INTO LECTUREEP VALUES (
    2,
    1,
    27,
    3,
    TO_DATE('2023-02-20', 'YYYY-MM-DD'),
    TO_DATE('2023-02-20 18:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-02-20 21:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'German',
    0
);

-- Client 3, Profil 1
INSERT INTO LECTUREEP VALUES (
    3,
    1,
    28,
    2,
    TO_DATE('2023-03-10', 'YYYY-MM-DD'),
    TO_DATE('2023-03-10 20:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-03-10 22:15:00', 'YYYY-MM-DD HH24:MI:SS'),
    'French',
    1
);

-- Client 4, Profil 1
INSERT INTO LECTUREEP VALUES (
    4,
    1,
    29,
    1,
    TO_DATE('2023-04-05', 'YYYY-MM-DD'),
    TO_DATE('2023-04-05 19:15:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-04-05 21:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Spanish',
    0
);

-- Client 5, Profil 1
INSERT INTO LECTUREEP VALUES (
    5,
    1,
    30,
    2,
    TO_DATE('2023-01-20', 'YYYY-MM-DD'),
    TO_DATE('2023-01-20 18:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-01-20 20:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    'English',
    1
);

-- Client 6, Profil 1
INSERT INTO LECTUREEP VALUES (
    6,
    1,
    26,
    3,
    TO_DATE('2023-02-10', 'YYYY-MM-DD'),
    TO_DATE('2023-02-10 19:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-02-10 22:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'German',
    0
);

-- Client 7, Profil 1
INSERT INTO LECTUREEP VALUES (
    7,
    1,
    27,
    1,
    TO_DATE('2023-03-25', 'YYYY-MM-DD'),
    TO_DATE('2023-03-25 20:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-03-25 22:15:00', 'YYYY-MM-DD HH24:MI:SS'),
    'French',
    1
);

-- Client 8, Profil 1
INSERT INTO LECTUREEP VALUES (
    8,
    1,
    28,
    2,
    TO_DATE('2023-04-15', 'YYYY-MM-DD'),
    TO_DATE('2023-04-15 18:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-04-15 21:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Spanish',
    0
);

-- Client 9, Profil 1
INSERT INTO LECTUREEP VALUES (
    9,
    1,
    29,
    3,
    TO_DATE('2023-02-05', 'YYYY-MM-DD'),
    TO_DATE('2023-02-05 19:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-02-05 21:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    'English',
    1
);

-- Client 10, Profil 1
INSERT INTO LECTUREEP VALUES (
    10,
    1,
    30,
    1,
    TO_DATE('2023-03-20', 'YYYY-MM-DD'),
    TO_DATE('2023-03-20 18:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-03-20 20:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    'German',
    0
);

-- Client 11, Profil 1
INSERT INTO LECTUREEP VALUES (
    11,
    1,
    26,
    2,
    TO_DATE('2023-04-10', 'YYYY-MM-DD'),
    TO_DATE('2023-04-10 19:15:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-04-10 21:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Spanish',
    0
);

-- Client 12, Profil 1
INSERT INTO LECTUREEP VALUES (
    12,
    1,
    27,
    3,
    TO_DATE('2023-01-30', 'YYYY-MM-DD'),
    TO_DATE('2023-01-30 18:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-01-30 20:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    'English',
    1
);

-- Client 13, Profil 1
INSERT INTO LECTUREEP VALUES (
    13,
    1,
    28,
    1,
    TO_DATE('2023-02-25', 'YYYY-MM-DD'),
    TO_DATE('2023-02-25 19:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-02-25 22:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'German',
    0
);

-- Client 14, Profil 1
INSERT INTO LECTUREEP VALUES (
    14,
    1,
    29,
    2,
    TO_DATE('2023-03-15', 'YYYY-MM-DD'),
    TO_DATE('2023-03-15 20:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-03-15 22:15:00', 'YYYY-MM-DD HH24:MI:SS'),
    'French',
    1
);

-- Client 15, Profil 1
INSERT INTO LECTUREEP VALUES (
    15,
    1,
    30,
    3,
    TO_DATE('2023-04-20', 'YYYY-MM-DD'),
    TO_DATE('2023-04-20 18:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-04-20 21:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Spanish',
    0
);

-- Client 16, Profil 1
INSERT INTO LECTUREEP VALUES (
    16,
    1,
    26,
    1,
    TO_DATE('2023-01-25', 'YYYY-MM-DD'),
    TO_DATE('2023-01-25 19:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-01-25 21:15:00', 'YYYY-MM-DD HH24:MI:SS'),
    'English',
    1
);

-- Client 17, Profil 1
INSERT INTO LECTUREEP VALUES (
    17,
    1,
    27,
    2,
    TO_DATE('2023-02-15', 'YYYY-MM-DD'),
    TO_DATE('2023-02-15 18:15:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-02-15 20:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    'German',
    0
);

-- Client 18, Profil 1
INSERT INTO LECTUREEP VALUES (
    18,
    1,
    28,
    3,
    TO_DATE('2023-03-05', 'YYYY-MM-DD'),
    TO_DATE('2023-03-05 19:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-03-05 21:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    'French',
    1
);

-- Client 19, Profil 1
INSERT INTO LECTUREEP VALUES (
    19,
    1,
    29,
    1,
    TO_DATE('2023-04-01', 'YYYY-MM-DD'),
    TO_DATE('2023-04-01 20:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-04-01 22:15:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Spanish',
    0
);

-- Client 20, Profil 1
INSERT INTO LECTUREEP VALUES (
    20,
    1,
    30,
    2,
    TO_DATE('2023-01-10', 'YYYY-MM-DD'),
    TO_DATE('2023-01-10 18:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-01-10 21:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'English',
    1
);

-- Client 21, Profil 1
INSERT INTO LECTUREEP VALUES (
    21,
    1,
    26,
    3,
    TO_DATE('2023-02-28', 'YYYY-MM-DD'),
    TO_DATE('2023-02-28 19:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-02-28 21:15:00', 'YYYY-MM-DD HH24:MI:SS'),
    'German',
    0
);

-- Client 22, Profil 1
INSERT INTO LECTUREEP VALUES (
    22,
    1,
    27,
    1,
    TO_DATE('2023-03-20', 'YYYY-MM-DD'),
    TO_DATE('2023-03-20 18:15:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-03-20 20:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    'French',
    1
);

-- Client 23, Profil 1
INSERT INTO LECTUREEP VALUES (
    23,
    1,
    28,
    2,
    TO_DATE('2023-04-10', 'YYYY-MM-DD'),
    TO_DATE('2023-04-10 19:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-04-10 21:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Spanish',
    0
);

-- Client 24, Profil 1
INSERT INTO LECTUREEP VALUES (
    24,
    1,
    29,
    3,
    TO_DATE('2023-01-15', 'YYYY-MM-DD'),
    TO_DATE('2023-01-15 20:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-01-15 22:15:00', 'YYYY-MM-DD HH24:MI:SS'),
    'English',
    1
);

-- Client 25, Profil 1
INSERT INTO LECTUREEP VALUES (
    25,
    1,
    30,
    1,
    TO_DATE('2023-02-05', 'YYYY-MM-DD'),
    TO_DATE('2023-02-05 18:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-02-05 21:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'German',
    0
);

-- Client 26, Profil 1
INSERT INTO LECTUREEP VALUES (
    26,
    1,
    26,
    2,
    TO_DATE('2023-02-22', 'YYYY-MM-DD'),
    TO_DATE('2023-02-22 19:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-02-22 21:15:00', 'YYYY-MM-DD HH24:MI:SS'),
    'French',
    1
);

-- Client 27, Profil 1
INSERT INTO LECTUREEP VALUES (
    27,
    1,
    27,
    3,
    TO_DATE('2023-03-10', 'YYYY-MM-DD'),
    TO_DATE('2023-03-10 18:15:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-03-10 20:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Spanish',
    0
);

-- Client 28, Profil 1
INSERT INTO LECTUREEP VALUES (
    28,
    1,
    28,
    1,
    TO_DATE('2023-04-05', 'YYYY-MM-DD'),
    TO_DATE('2023-04-05 19:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-04-05 21:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    'English',
    1
);

-- Client 29, Profil 1
INSERT INTO LECTUREEP VALUES (
    29,
    1,
    29,
    2,
    TO_DATE('2023-01-20', 'YYYY-MM-DD'),
    TO_DATE('2023-01-20 20:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-01-20 22:15:00', 'YYYY-MM-DD HH24:MI:SS'),
    'German',
    0
);

-- Client 30, Profil 1
INSERT INTO LECTUREEP VALUES (
    30,
    1,
    30,
    3,
    TO_DATE('2023-02-15', 'YYYY-MM-DD'),
    TO_DATE('2023-02-15 18:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2023-02-15 21:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'French',
    1
);

------------------------------------------------------------------

/* TABLE AVIS */
-- Avis pour les films (IDCONTENU de 1 à 25)
INSERT INTO AVIS VALUES (
    1,
    1,
    1,
    5,
    'Très bon film, j''ai adoré !'
);

INSERT INTO AVIS VALUES (
    2,
    1,
    2,
    4,
    'Belle histoire, recommandé !'
);

INSERT INTO AVIS VALUES (
    3,
    1,
    3,
    3,
    'Scènes d''action incroyables !'
);

INSERT INTO AVIS VALUES (
    4,
    1,
    4,
    2,
    'Un classique à ne pas manquer.'
);

INSERT INTO AVIS VALUES (
    5,
    1,
    5,
    1,
    'Excellent film, à voir absolument !'
);

INSERT INTO AVIS VALUES (
    6,
    2,
    6,
    5,
    'Très bon film, j''ai adoré !'
);

INSERT INTO AVIS VALUES (
    7,
    2,
    7,
    4,
    'Belle histoire, recommandé !'
);

INSERT INTO AVIS VALUES (
    8,
    2,
    8,
    3,
    'Scènes d''action incroyables !'
);

INSERT INTO AVIS VALUES (
    9,
    2,
    9,
    2,
    'Un classique à ne pas manquer.'
);

INSERT INTO AVIS VALUES (
    10,
    2,
    10,
    1,
    'Excellent film, à voir absolument !'
);

INSERT INTO AVIS VALUES (
    11,
    3,
    11,
    5,
    'Très bon film, j''ai adoré !'
);

INSERT INTO AVIS VALUES (
    12,
    3,
    12,
    4,
    'Belle histoire, recommandé !'
);

INSERT INTO AVIS VALUES (
    13,
    3,
    13,
    3,
    'Scènes d''action incroyables !'
);

INSERT INTO AVIS VALUES (
    14,
    3,
    14,
    2,
    'Un classique à ne pas manquer.'
);

INSERT INTO AVIS VALUES (
    15,
    3,
    15,
    1,
    'Excellent film, à voir absolument !'
);

INSERT INTO AVIS VALUES (
    16,
    4,
    16,
    5,
    'Très bon film, j''ai adoré !'
);

INSERT INTO AVIS VALUES (
    17,
    4,
    17,
    4,
    'Belle histoire, recommandé !'
);

INSERT INTO AVIS VALUES (
    18,
    4,
    18,
    3,
    'Scènes d''action incroyables !'
);

INSERT INTO AVIS VALUES (
    19,
    4,
    19,
    2,
    'Un classique à ne pas manquer.'
);

INSERT INTO AVIS VALUES (
    20,
    4,
    20,
    1,
    'Excellent film, à voir absolument !'
);

INSERT INTO AVIS VALUES (
    21,
    5,
    21,
    5,
    'Très bon film, j''ai adoré !'
);

INSERT INTO AVIS VALUES (
    22,
    5,
    22,
    4,
    'Belle histoire, recommandé !'
);

INSERT INTO AVIS VALUES (
    23,
    5,
    23,
    3,
    'Scènes d''action incroyables !'
);

INSERT INTO AVIS VALUES (
    24,
    5,
    24,
    2,
    'Un classique à ne pas manquer.'
);

INSERT INTO AVIS VALUES (
    25,
    5,
    25,
    1,
    'Excellent film, à voir absolument !'
);

INSERT INTO AVIS VALUES (
    26,
    1,
    26,
    4,
    'Captivant, je veux la suite !'
);

INSERT INTO AVIS VALUES (
    27,
    1,
    27,
    3,
    'Bons rebondissements dans l''intrigue.'
);

INSERT INTO AVIS VALUES (
    28,
    1,
    28,
    2,
    'Personnages attachants, très bien écrit.'
);

INSERT INTO AVIS VALUES (
    29,
    1,
    29,
    1,
    'J''attends avec impatience la prochaine saison.'
);

INSERT INTO AVIS VALUES (
    30,
    1,
    30,
    5,
    'Scénario brillant, j''ai adoré chaque épisode.'
);

------------------------------------------------------------------

/* TABLE PARTICIPE */


INSERT INTO PARTICIPE VALUES (
    1,
    1,
    'Réalisateur',
    'Principal'
);

INSERT INTO PARTICIPE VALUES (
    2,
    2,
    'Acteur',
    'Principal'
);

INSERT INTO PARTICIPE VALUES (
    3,
    3,
    'Réalisateur',
    'Secondaire'
);

INSERT INTO PARTICIPE VALUES (
    4,
    4,
    'Acteur',
    'Secondaire'
);

INSERT INTO PARTICIPE VALUES (
    5,
    5,
    'Réalisateur',
    'Principal'
);

INSERT INTO PARTICIPE VALUES (
    6,
    6,
    'Acteur',
    'Principal'
);

INSERT INTO PARTICIPE VALUES (
    7,
    7,
    'Réalisateur',
    'Secondaire'
);

INSERT INTO PARTICIPE VALUES (
    8,
    8,
    'Acteur',
    'Secondaire'
);

INSERT INTO PARTICIPE VALUES (
    9,
    9,
    'Réalisateur',
    'Principal'
);

INSERT INTO PARTICIPE VALUES (
    10,
    10,
    'Acteur',
    'Principal'
);

INSERT INTO PARTICIPE VALUES (
    11,
    11,
    'Réalisateur',
    'Secondaire'
);

INSERT INTO PARTICIPE VALUES (
    12,
    12,
    'Acteur',
    'Secondaire'
);

INSERT INTO PARTICIPE VALUES (
    13,
    13,
    'Réalisateur',
    'Principal'
);

INSERT INTO PARTICIPE VALUES (
    14,
    14,
    'Acteur',
    'Principal'
);

INSERT INTO PARTICIPE VALUES (
    15,
    15,
    'Réalisateur',
    'Secondaire'
);

INSERT INTO PARTICIPE VALUES (
    16,
    16,
    'Acteur',
    'Secondaire'
);

INSERT INTO PARTICIPE VALUES (
    17,
    17,
    'Réalisateur',
    'Principal'
);

INSERT INTO PARTICIPE VALUES (
    18,
    18,
    'Acteur',
    'Principal'
);

INSERT INTO PARTICIPE VALUES (
    19,
    19,
    'Réalisateur',
    'Secondaire'
);

INSERT INTO PARTICIPE VALUES (
    20,
    20,
    'Acteur',
    'Secondaire'
);

INSERT INTO PARTICIPE VALUES (
    21,
    21,
    'Réalisateur',
    'Principal'
);

INSERT INTO PARTICIPE VALUES (
    22,
    22,
    'Acteur',
    'Principal'
);

INSERT INTO PARTICIPE VALUES (
    23,
    23,
    'Réalisateur',
    'Secondaire'
);

INSERT INTO PARTICIPE VALUES (
    24,
    24,
    'Acteur',
    'Secondaire'
);

INSERT INTO PARTICIPE VALUES (
    25,
    25,
    'Réalisateur',
    'Principal'
);

INSERT INTO PARTICIPE VALUES (
    26,
    26,
    'Réalisateur',
    'Principal'
);

INSERT INTO PARTICIPE VALUES (
    27,
    27,
    'Acteur',
    'Principal'
);

INSERT INTO PARTICIPE VALUES (
    28,
    28,
    'Réalisateur',
    'Secondaire'
);

INSERT INTO PARTICIPE VALUES (
    29,
    29,
    'Acteur',
    'Secondaire'
);

INSERT INTO PARTICIPE VALUES (
    30,
    30,
    'Réalisateur',
    'Principal'
);

------------------------------------------------------------------

/* TABLE DEFINIT */


INSERT INTO DEFINIT VALUES (1, 'Action');
INSERT INTO DEFINIT VALUES (2, 'Comédie');
INSERT INTO DEFINIT VALUES (3, 'Drame');
INSERT INTO DEFINIT VALUES (4, 'Horreur');
INSERT INTO DEFINIT VALUES (5, 'Action');
INSERT INTO DEFINIT VALUES (6, 'Comédie');
INSERT INTO DEFINIT VALUES (7, 'Drame');
INSERT INTO DEFINIT VALUES (8, 'Horreur');
INSERT INTO DEFINIT VALUES (9, 'Action');
INSERT INTO DEFINIT VALUES (10, 'Comédie');
INSERT INTO DEFINIT VALUES (11, 'Drame');
INSERT INTO DEFINIT VALUES (12, 'Horreur');
INSERT INTO DEFINIT VALUES (13, 'Action');
INSERT INTO DEFINIT VALUES (14, 'Comédie');
INSERT INTO DEFINIT VALUES (15, 'Drame');
INSERT INTO DEFINIT VALUES (16, 'Horreur');
INSERT INTO DEFINIT VALUES (17, 'Action');
INSERT INTO DEFINIT VALUES (18, 'Comédie');
INSERT INTO DEFINIT VALUES (19, 'Drame');
INSERT INTO DEFINIT VALUES (20, 'Horreur');
INSERT INTO DEFINIT VALUES (21, 'Action');
INSERT INTO DEFINIT VALUES (22, 'Comédie');
INSERT INTO DEFINIT VALUES (23, 'Drame');
INSERT INTO DEFINIT VALUES (24, 'Horreur');
INSERT INTO DEFINIT VALUES (25, 'Action');
INSERT INTO DEFINIT VALUES (26, 'Drame');
INSERT INTO DEFINIT VALUES (27, 'Comédie');
INSERT INTO DEFINIT VALUES (28, 'Action');
INSERT INTO DEFINIT VALUES (29, 'Drame');
INSERT INTO DEFINIT VALUES (30, 'Comédie');

------------------------------------------------------------------


/*
sql loader
>> sqlload username/motdepasse fichier.ctl
*/


-- 1. tables
-- 2. jeu de donnnées
-- 3. requetes
-- 4. DROITS
-- 5. triggers
-- 6. metadonnées
-- 7.