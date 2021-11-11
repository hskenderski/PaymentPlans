INSERT INTO PERSON
VALUES
    ((select SYS_GUID() from dual),
     'Ivan1',
     'Ivan1xa!',
     'Ivan Ivailov Ivanov1',
     'Sofia',
     'ADMIN');

INSERT INTO PERSON
VALUES
    ((select SYS_GUID() from dual),
     'Ivan2',
     '$2a$10$RcxtueXM6Ad3L0AaNQP0dOxP.jqposoBsOVfp9LfYyQdhWjHlD.fi',
     'Ivan Ivailov Ivanov2',
     'Sofia',
     'ADMIN');

INSERT INTO PERSON
VALUES
    ('18752F46D5244A40BFFAC2D01B5431P0',
     'Ivan3',
     '$2a$10$RcxtueXM6Ad3L0AaNQP0dOxP.jqposoBsOVfp9LfYyQdhWjHlD.fi',
     'Ivan Ivailov Ivanov3',
     'Sofia',
     'ADMIN');

INSERT INTO PERSON
VALUES
    ('18752F56D5244A45BFFAC2D01B5431P0',
     'Ivan5',
     '$2a$10$RcxtueXM6Ad3L0AaNQP0dOxP.jqposoBsOVfp9LfYyQdhWjHlD.fi',
     'Ivan Ivailov Ivanov3',
     'Sofia',
     'ADMIN');

INSERT INTO PERSON
VALUES
    ((select SYS_GUID() from dual),
     'IvanAdmin',
     'Ivan1xa!',
     'Ivan Ivailov Ivanov1',
     'Sofia',
     'ADMIN');

INSERT INTO PAYMENT_PLANS
VALUES
    ('18752F46D5244A40BFFAC2D01B5431B0',
     (SELECT P.PERSON_ID FROM PERSON P
      WHERE P.USERNAME = 'Ivan1'),
     2000);

INSERT INTO PAYMENT_PLANS
VALUES
    ('18752F46D5244A40BFFAC2D09B5431B0',
     (SELECT P.PERSON_ID FROM PERSON P
      WHERE P.USERNAME = 'Ivan2'),
     3000);

INSERT INTO PAYMENT_PLANS
VALUES
    ('11752F46D5244A40BFFAC2D09B5431B0',
     (SELECT P.PERSON_ID FROM PERSON P
      WHERE P.USERNAME = 'Ivan3'),
     4000);

INSERT INTO PAYMENT_PLANS
VALUES
    ('66752F46D5244A40BFFAC2D09B5431B0',
     (SELECT P.PERSON_ID FROM PERSON P
      WHERE P.USERNAME = 'Ivan4'),
     4000);

INSERT INTO PAYMENTS
VALUES
    ('2F3C983122344D4C95E34A22CE576B67',
     '11752F46D5244A40BFFAC2D09B5431B0',
     1000,
     null);

    INSERT INTO PAYMENTS
VALUES
    ('2F3C983122344D4C95E34A22CE576B68',
    '11752F46D5244A40BFFAC2D09B5431B0',
    1000,
    null);

INSERT INTO PAYMENTS
VALUES
    ('2F3C983122344D4C95E34A22CE576B69',
    '11752F46D5244A40BFFAC2D09B5431B0',
    2000,
    null);

INSERT INTO PAYMENTS
VALUES
    ('2F3C983122344D0C95E34A22CE576B69',
     '66752F46D5244A40BFFAC2D09B5431B0',
     400,
     null);