INSERT INTO public.course (id, code, name, created_at)
VALUES (1, 'FLOR101', 'จัดดอกไม้เพื่ออาชีพ', DEFAULT),
    (
        2,
        'BVRG101',
        'เครื่องดื่มและเครื่องดื่มเพื่อสุขภาพ',
        DEFAULT
    ),
    (3, 'BAKE101', 'ขนมอบ', DEFAULT),
    (4, 'THAI101', 'อาหารไทย ห้อง 1', DEFAULT),
    (
        5,
        'BEAU101',
        'แต่งหน้า-เกล้าผม-แต่งเล็บ',
        DEFAULT
    ),
    (
        6,
        'FLOR102',
        'ศิลปะการจัดดอกไม้ FLORISTRY',
        DEFAULT
    ),
    (7, 'BARI101', 'บาริสต้าเบื้องต้น', DEFAULT),
    (8, 'PET101', 'การตัดแต่งขนสุนัข', DEFAULT),
    (9, 'INTL101', 'อาหารนานาชาติ', DEFAULT),
    (10, 'DESS101', 'ขนมไทย', DEFAULT),
    (
        11,
        'WEB101',
        'อินเตอร์เน็ตและการสร้างเว็บไซต์',
        DEFAULT
    ),
    (
        12,
        'CGAN101',
        'คอมพิวเตอร์กราฟิกและแอนิเมชั่น',
        DEFAULT
    ),
    (
        13,
        'MOBI101',
        'การใช้งานโมบายเทคโนโลยี',
        DEFAULT
    ),
    (
        14,
        'ENG101',
        'ภาษาอังกฤษในชีวิตประจำวัน',
        DEFAULT
    ),
    (
        15,
        'KOR101',
        'ภาษาเกาหลีในงานธุรกิจบริการ',
        DEFAULT
    ),
    (
        16,
        'CHIN101',
        'ภาษาจีนเพื่อการสื่อสารในชีวิตประจำวัน',
        DEFAULT
    ),
    (
        17,
        'ECOM101',
        'อินเตอร์เน็ตสำหรับงานอีคอมเมิร์ช',
        DEFAULT
    ),
    (
        18,
        'ENG102',
        'ภาษาอังกฤษในงานธุรกิจบริการ',
        DEFAULT
    ),
    (
        19,
        'KOR102',
        'ภาษาเกาหลีเพื่อการสื่อสาร',
        DEFAULT
    ),
    (
        20,
        'CHIN102',
        'ภาษาจีนเพื่อการสื่อสารในงานอาชีพ',
        DEFAULT
    );
SELECT setval(
        '"public"."course_id_seq"'::regclass,
        (
            SELECT MAX("id")
            FROM "public"."course"
        )
    );
INSERT INTO public.student (id, first_name, last_name, gender, created_at, gov_id)
VALUES (
        1,
        'เเพรวนภา',
        'มณีนอก',
        'F',
        DEFAULT,
        '33603961408'
    ),
    (
        2,
        'สุไลมาน',
        'ฮะมงคล',
        'M',
        DEFAULT,
        '99049839658'
    ),
    (
        3,
        'บุรพล',
        'หนอกนอก',
        'F',
        DEFAULT,
        '25916341467'
    ),
    (
        4,
        'รังสฤษฎ์',
        'อินทโชติ',
        'F',
        DEFAULT,
        '23839696286'
    ),
    (
        5,
        'ณรงค์ฤทธิ์',
        'เทิบค้างพลู',
        'F',
        DEFAULT,
        '33150747785'
    ),
    (
        6,
        'กชามาศ',
        'เทิบนอก',
        'F',
        DEFAULT,
        '03954662780'
    ),
    (
        7,
        'กีรติกา',
        'มนตรีกุล',
        'M',
        DEFAULT,
        '05161563259'
    ),
    (
        8,
        'เดโนาย',
        'เจียวสีสุก',
        'F',
        DEFAULT,
        '98051445198'
    ),
    (
        9,
        'วีระศักดิ์',
        'กีรติวัฒนานุศาสน์',
        'M',
        DEFAULT,
        '10137793668'
    ),
    (
        10,
        'เอกวัฒน์',
        'สืบกระพันธ์',
        'M',
        DEFAULT,
        '99785675199'
    ),
    (
        11,
        'สรุศักดิ์',
        'เกิดนอก',
        'M',
        DEFAULT,
        '35440462926'
    ),
    (
        12,
        'พัชริญา',
        'จันทโชติ',
        'M',
        DEFAULT,
        '42140833429'
    ),
    (
        13,
        'ปริชาติ',
        'แขสีสุก',
        'M',
        DEFAULT,
        '77797710474'
    ),
    (
        14,
        'ปิยะเกียรติ์',
        'บางพิมาย',
        'F',
        DEFAULT,
        '80083837166'
    ),
    (
        15,
        'ธัชชัย',
        'บางสีสุก-หนอกพิมาย',
        'F',
        DEFAULT,
        '59036660685'
    ),
    (
        16,
        'วิไลรัตน์',
        'แซ่โง้ว',
        'F',
        DEFAULT,
        '39145841918'
    ),
    (
        17,
        'ศรัณยู',
        'งามพิมาย',
        'M',
        DEFAULT,
        '72076540332'
    ),
    (
        18,
        'พิชยา',
        'ธรรมเสน',
        'F',
        DEFAULT,
        '74000455463'
    ),
    (
        19,
        'เดโนาย',
        'มณีกระโทก',
        'M',
        DEFAULT,
        '99580892225'
    ),
    (
        20,
        'ปราปต์',
        'แซ่ตั้ง',
        'M',
        DEFAULT,
        '52763175062'
    ),
    (
        21,
        'วัชรีวรรณ',
        'นรินทรางกูร',
        'M',
        DEFAULT,
        '00537178386'
    ),
    (
        22,
        'กฤติยาณี',
        'อริยวงสกุล',
        'M',
        DEFAULT,
        '11429655662'
    ),
    (
        23,
        'ธณพร',
        'หนอกจันทึก',
        'F',
        DEFAULT,
        '51229262126'
    ),
    (
        24,
        'ธนาภา',
        'เกตุนอก',
        'M',
        DEFAULT,
        '64686823751'
    ),
    (
        25,
        'อังคณา',
        'แขกระโทก',
        'F',
        DEFAULT,
        '70775611258'
    ),
    (26, 'นงพร', 'ดำใส', 'M', DEFAULT, '33997650032'),
    (
        27,
        'นงลักษณ์',
        'แซ่อู๋',
        'F',
        DEFAULT,
        '08516927714'
    ),
    (
        28,
        'โกมุท',
        'เจียวพิมาย',
        'M',
        DEFAULT,
        '86799701822'
    ),
    (
        29,
        'ชนิธาดา',
        'หนอกค้างพลู',
        'F',
        DEFAULT,
        '17384420610'
    ),
    (
        30,
        'ปณิชา',
        'บางค้างพลู',
        'F',
        DEFAULT,
        '09631780546'
    ),
    (
        31,
        'พรปิยา',
        'เทิบกระโทก',
        'M',
        DEFAULT,
        '32412486545'
    ),
    (
        32,
        'ฉัตร',
        'เจียวค้างพลู',
        'M',
        DEFAULT,
        '89394763256'
    ),
    (
        33,
        'ปิยะชัย',
        'แขค้างพลู',
        'M',
        DEFAULT,
        '74749842350'
    ),
    (
        34,
        'ธัชชัย',
        'นาคสวัสดิ์',
        'F',
        DEFAULT,
        '43616456378'
    ),
    (
        35,
        'โยธกานต์',
        'ณ บางช้าง',
        'F',
        DEFAULT,
        '02958078779'
    ),
    (36, 'อารี', 'มธุรส', 'F', DEFAULT, '96540509291'),
    (
        37,
        'เนตรนภา',
        'แซ่หลี่',
        'M',
        DEFAULT,
        '17765401326'
    ),
    (
        38,
        'สมจิตร',
        'มณีพิมาย',
        'F',
        DEFAULT,
        '92634614964'
    ),
    (
        39,
        'ธนาเสฎฐ์',
        'มธุรส',
        'F',
        DEFAULT,
        '29737792226'
    ),
    (
        40,
        'รังษี',
        'อินทโชติ',
        'M',
        DEFAULT,
        '41248529017'
    ),
    (
        41,
        'โพสิฐ์',
        'แซ่โง้ว',
        'F',
        DEFAULT,
        '73353223239'
    ),
    (
        42,
        'ยุทธพิชัย',
        'มณีค้างพลู',
        'M',
        DEFAULT,
        '15387463679'
    ),
    (
        43,
        'ธนภัทร์',
        'แซ่เจิ้ง',
        'M',
        DEFAULT,
        '69490462524'
    ),
    (
        44,
        'นิยดา',
        'ชุมพล',
        'F',
        DEFAULT,
        '61859915207'
    ),
    (
        45,
        'นัฐพร',
        'งามค้างพลู',
        'F',
        DEFAULT,
        '76332480146'
    ),
    (
        46,
        'วรดา',
        'แซ่หวง',
        'F',
        DEFAULT,
        '21123850666'
    ),
    (
        47,
        'โพธิ',
        'เจียวค้างพลู',
        'M',
        DEFAULT,
        '78450302007'
    ),
    (
        48,
        'วงศ์ตะวัน',
        'งามจันทึก',
        'M',
        DEFAULT,
        '62132104606'
    ),
    (
        49,
        'มาลีวรรณ',
        'เทิบกระโทก',
        'M',
        DEFAULT,
        '12801009024'
    ),
    (
        999,
        'พิเศษ',
        'นักเรียน',
        'M',
        DEFAULT,
        '12345678901'
    );
SELECT setval(
        '"public"."student_id_seq"'::regclass,
        (
            SELECT MAX("id")
            FROM "public"."student"
        )
    );
INSERT INTO public.academic_year (id, year_label, start_date, end_date)
VALUES (1, '2024', '2024-01-01', '2024-12-31'),
    (2, '2025', '2025-01-01', '2025-12-31');
SELECT setval(
        '"public"."academic_year_id_seq"'::regclass,
        (
            SELECT MAX("id")
            FROM "public"."academic_year"
        )
    );
INSERT INTO public.term (
        id,
        academic_year_id,
        term_name,
        registration_open,
        registration_close
    )
VALUES (1, NULL, '1/2024', '2020-06-06', '2020-11-19'),
    (2, NULL, '2/2024', '2020-03-07', '2020-01-01'),
    (3, NULL, '1/2025', '2020-06-02', '2020-05-13'),
    (4, NULL, '2/2025', '2020-03-19', '2020-02-02');
UPDATE public.term
SET academic_year_id = 1
WHERE id = 1;
UPDATE public.term
SET academic_year_id = 1
WHERE id = 2;
UPDATE public.term
SET academic_year_id = 2
WHERE id = 3;
UPDATE public.term
SET academic_year_id = 2
WHERE id = 4;
SELECT setval(
        '"public"."term_id_seq"'::regclass,
        (
            SELECT MAX("id")
            FROM "public"."term"
        )
    );
INSERT INTO public.course_offering (id, course_id, term_id)
VALUES (1, 12, 1),
    (2, 2, 1),
    (3, 6, 1),
    (4, 17, 1),
    (5, 7, 1),
    (6, 15, 2),
    (7, 13, 2),
    (8, 10, 2),
    (9, 17, 2),
    (10, 19, 2),
    (11, 19, 3),
    (12, 2, 3),
    (13, 12, 3),
    (14, 4, 3),
    (15, 14, 3);
SELECT setval(
        '"public"."course_offering_id_seq"'::regclass,
        (
            SELECT MAX("id")
            FROM "public"."course_offering"
        )
    );
INSERT INTO public.enrollment (id, student_id, course_id, enrollment_date)
VALUES (1, 31, 12, DEFAULT),
    (2, 17, 12, DEFAULT),
    (3, 1, 12, DEFAULT),
    (4, 40, 12, DEFAULT),
    (5, 4, 12, DEFAULT),
    (6, 17, 12, DEFAULT),
    (7, 29, 12, DEFAULT),
    (8, 12, 12, DEFAULT),
    (9, 43, 12, DEFAULT),
    (10, 22, 12, DEFAULT),
    (11, 7, 12, DEFAULT),
    (12, 15, 12, DEFAULT),
    (13, 38, 12, DEFAULT),
    (14, 44, 2, DEFAULT),
    (15, 19, 2, DEFAULT),
    (16, 48, 2, DEFAULT),
    (17, 3, 2, DEFAULT),
    (18, 10, 6, DEFAULT),
    (19, 1, 6, DEFAULT),
    (20, 2, 6, DEFAULT),
    (21, 7, 6, DEFAULT),
    (22, 31, 6, DEFAULT),
    (23, 41, 6, DEFAULT),
    (24, 22, 6, DEFAULT),
    (25, 49, 6, DEFAULT),
    (26, 18, 6, DEFAULT),
    (27, 25, 6, DEFAULT),
    (28, 20, 6, DEFAULT),
    (29, 30, 6, DEFAULT),
    (30, 7, 6, DEFAULT),
    (31, 18, 6, DEFAULT),
    (32, 16, 6, DEFAULT),
    (33, 18, 6, DEFAULT),
    (34, 6, 6, DEFAULT),
    (35, 21, 17, DEFAULT),
    (36, 37, 17, DEFAULT),
    (37, 7, 17, DEFAULT),
    (38, 41, 17, DEFAULT),
    (39, 43, 17, DEFAULT),
    (40, 7, 17, DEFAULT),
    (41, 39, 17, DEFAULT),
    (42, 11, 17, DEFAULT),
    (43, 1, 7, DEFAULT),
    (44, 28, 7, DEFAULT),
    (45, 43, 7, DEFAULT),
    (46, 13, 7, DEFAULT),
    (47, 21, 7, DEFAULT),
    (48, 27, 15, DEFAULT),
    (49, 31, 15, DEFAULT),
    (50, 22, 15, DEFAULT),
    (51, 24, 15, DEFAULT),
    (52, 35, 15, DEFAULT),
    (53, 2, 15, DEFAULT),
    (54, 13, 15, DEFAULT),
    (55, 46, 15, DEFAULT),
    (56, 11, 15, DEFAULT),
    (57, 40, 15, DEFAULT),
    (58, 40, 15, DEFAULT),
    (59, 21, 15, DEFAULT),
    (60, 23, 15, DEFAULT),
    (61, 35, 15, DEFAULT),
    (62, 22, 15, DEFAULT),
    (63, 49, 15, DEFAULT),
    (64, 47, 15, DEFAULT),
    (65, 12, 15, DEFAULT),
    (66, 26, 15, DEFAULT),
    (67, 5, 15, DEFAULT),
    (68, 49, 15, DEFAULT),
    (69, 23, 15, DEFAULT),
    (70, 10, 15, DEFAULT),
    (71, 26, 15, DEFAULT),
    (72, 33, 15, DEFAULT),
    (73, 12, 15, DEFAULT),
    (74, 33, 15, DEFAULT),
    (75, 2, 15, DEFAULT),
    (76, 46, 15, DEFAULT),
    (77, 49, 15, DEFAULT),
    (78, 10, 15, DEFAULT),
    (79, 49, 15, DEFAULT),
    (80, 3, 15, DEFAULT),
    (81, 42, 15, DEFAULT),
    (82, 23, 15, DEFAULT),
    (83, 42, 15, DEFAULT),
    (84, 9, 15, DEFAULT),
    (85, 4, 15, DEFAULT),
    (86, 2, 13, DEFAULT),
    (87, 28, 13, DEFAULT),
    (88, 23, 13, DEFAULT),
    (89, 11, 13, DEFAULT),
    (90, 24, 13, DEFAULT),
    (91, 48, 13, DEFAULT),
    (92, 42, 13, DEFAULT),
    (93, 31, 13, DEFAULT),
    (94, 8, 13, DEFAULT),
    (95, 2, 13, DEFAULT),
    (96, 43, 13, DEFAULT),
    (97, 21, 13, DEFAULT),
    (98, 16, 13, DEFAULT),
    (99, 9, 13, DEFAULT),
    (100, 41, 13, DEFAULT),
    (101, 49, 13, DEFAULT),
    (102, 41, 13, DEFAULT),
    (103, 44, 13, DEFAULT),
    (104, 25, 13, DEFAULT),
    (105, 13, 13, DEFAULT),
    (106, 45, 13, DEFAULT),
    (107, 33, 13, DEFAULT),
    (108, 21, 10, DEFAULT),
    (109, 7, 10, DEFAULT),
    (110, 35, 10, DEFAULT),
    (111, 5, 10, DEFAULT),
    (112, 23, 10, DEFAULT),
    (113, 35, 10, DEFAULT),
    (114, 4, 10, DEFAULT),
    (115, 32, 10, DEFAULT),
    (116, 38, 10, DEFAULT),
    (117, 15, 10, DEFAULT),
    (118, 8, 10, DEFAULT),
    (119, 42, 10, DEFAULT),
    (120, 35, 10, DEFAULT),
    (121, 38, 10, DEFAULT),
    (122, 7, 10, DEFAULT),
    (123, 7, 10, DEFAULT),
    (124, 19, 10, DEFAULT),
    (125, 14, 10, DEFAULT),
    (126, 14, 10, DEFAULT),
    (127, 16, 10, DEFAULT),
    (128, 5, 10, DEFAULT),
    (129, 22, 10, DEFAULT),
    (130, 25, 10, DEFAULT),
    (131, 45, 10, DEFAULT),
    (132, 3, 10, DEFAULT),
    (133, 42, 10, DEFAULT),
    (134, 15, 10, DEFAULT),
    (135, 20, 10, DEFAULT),
    (136, 23, 10, DEFAULT),
    (137, 41, 10, DEFAULT),
    (138, 999, 10, DEFAULT),
    (139, 10, 10, DEFAULT),
    (140, 33, 10, DEFAULT),
    (141, 24, 17, DEFAULT),
    (142, 12, 17, DEFAULT),
    (143, 2, 17, DEFAULT),
    (144, 42, 17, DEFAULT),
    (145, 48, 17, DEFAULT),
    (146, 3, 17, DEFAULT),
    (147, 49, 17, DEFAULT),
    (148, 34, 17, DEFAULT),
    (149, 21, 17, DEFAULT),
    (150, 32, 17, DEFAULT),
    (151, 37, 17, DEFAULT),
    (152, 36, 17, DEFAULT),
    (153, 24, 17, DEFAULT),
    (154, 14, 17, DEFAULT),
    (155, 4, 17, DEFAULT),
    (156, 49, 17, DEFAULT),
    (157, 36, 17, DEFAULT),
    (158, 18, 17, DEFAULT),
    (159, 20, 17, DEFAULT),
    (160, 26, 17, DEFAULT),
    (161, 3, 17, DEFAULT),
    (162, 30, 17, DEFAULT),
    (163, 21, 17, DEFAULT),
    (164, 33, 17, DEFAULT),
    (165, 4, 17, DEFAULT),
    (166, 1, 17, DEFAULT),
    (167, 30, 17, DEFAULT),
    (168, 7, 17, DEFAULT),
    (169, 46, 17, DEFAULT),
    (170, 5, 17, DEFAULT),
    (171, 19, 17, DEFAULT),
    (172, 14, 19, DEFAULT),
    (173, 13, 19, DEFAULT),
    (174, 12, 19, DEFAULT),
    (175, 43, 19, DEFAULT),
    (176, 37, 19, DEFAULT),
    (177, 30, 19, DEFAULT),
    (178, 41, 19, DEFAULT),
    (179, 14, 19, DEFAULT),
    (180, 24, 19, DEFAULT),
    (181, 27, 19, DEFAULT),
    (182, 24, 19, DEFAULT),
    (183, 25, 19, DEFAULT),
    (184, 33, 19, DEFAULT),
    (185, 36, 19, DEFAULT),
    (186, 36, 19, DEFAULT),
    (187, 32, 19, DEFAULT),
    (188, 9, 19, DEFAULT),
    (189, 24, 19, DEFAULT),
    (190, 999, 19, DEFAULT),
    (191, 42, 19, DEFAULT),
    (192, 5, 19, DEFAULT),
    (193, 22, 19, DEFAULT),
    (194, 37, 19, DEFAULT),
    (195, 35, 19, DEFAULT),
    (196, 24, 19, DEFAULT),
    (197, 14, 19, DEFAULT),
    (198, 40, 19, DEFAULT);
SELECT setval(
        '"public"."enrollment_id_seq"'::regclass,
        (
            SELECT MAX("id")
            FROM "public"."enrollment"
        )
    );