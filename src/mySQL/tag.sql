conj
-- noun
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('1', 'noun', ' іменник');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('2', 'anim', ' істота');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('3', 'l`name`', 'прізвище');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('4', 'p`name`', 'по батькові');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('5', 'inanim', 'неістота');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('6', 'unanim', 'невизначена категорія істота/неістота (бактерія)');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('7', 'prop', 'власна назва');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('8', 'geo', 'топонім');

-- verb
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('9', 'verb', 'дієслово');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('10', 'imperf', 'недоконаний вид');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('11', 'perf', 'доконаний вид');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('12', 'rev', 'зворотна форма (дієслова)');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('13', 'inf', 'інфінітив');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('14', 'past', 'майбутній час');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('15', 'pres', 'теперішній час');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('16', 'past', 'минулий час');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('17', 'impr', 'наказова форма');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('18', 'impers', 'безособова форма');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('19', '1', '1-а особа');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('20', '2', '2-а особа');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('21', '3', '3-а особа');

--adj
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('22', 'adj', 'прикметник');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('23', 'compb', 'базова форма');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('24', 'compc', 'порівняльна форма');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('25', 'coms', 'найвища форма');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('26', 'short', 'короткі форми прикметників');

--adjp    дієприкметник: (:&adjp - лише дієприкметник; :&&adjp - дієприкметник і прикметник)
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('27', 'adjp', 'дієприкметник');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('28', 'aсtv', 'активний');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('29', 'pasv', 'пасивний');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('30', 'imperf', 'недоконаний вид');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('31', 'perf', 'доконаний вид');

--adj/adjp
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('32', 'v_zna:rinanim', 'знахідний для неістот (лише ч.р.)');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('33', 'v_zna:ranim', 'знахідний для істот (лише ч.р.)');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('34', 'uncontr', 'нестягнені (не генеруються за уставою)');

--adv
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('35', 'adv', 'прислівник');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('36', 'compb', 'базова форма');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('37', 'compc', 'порівняльна форма');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('38', 'comps', 'найвища форма');

--advp
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('39', 'advp', 'дієприслівник');
--perf
--inperf

--prep
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('40', 'prep', 'прийменник');

--conj
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('41', 'conj', 'сполучник');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('42', 'subord', 'підрядний');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('43', 'coord', 'сурядний');

--part
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('44', 'part', 'частка');

--intj
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('45', 'intj', 'вигук');

--numr
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('46', 'numr', 'числівник');

--nonifl
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('47', 'noninfl', 'невідмінювані частини (най-най, брутто, екстра...)');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('48', 'foreign', 'запозичені слова невизначеної частини мови (Альгемайне, Юнайтед, ла (Ла Страда) тощо)');

--onomat
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('49', 'onomat', '(клас звуконаслідувальних слів)');

--Спільні для noun/adj/adjp:
  --Відмінки
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('50', 'v_naz', 'називний');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('51', 'v_rod', 'родовий');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('52', 'v_dav', 'давальний');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('53', 'v_zna', 'знахідний');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('54', 'v_oru', 'орудний');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('55', 'v_mis', 'місцевий');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('56', 'v_kly', 'кличний');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('57', 'nv', 'не відмінюється');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('58', 'np', 'без множини');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('59', 'ns', 'без однини');

-- Спільні для noun/adj/adjp/verb
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('60', 'p', 'множина');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('61', 's', 'однина');
  -- Рід
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('62', 'm', 'чоловічий');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('63', 'f', 'жіночий');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('64', 'n', 'середній');

--Додаткові теги
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('65', 'abbr', 'абревіатура');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('66', 'bad', 'покруч');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('67', 'subst', 'просторічна форма');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('68', 'rare', 'рідковживане/діалектичне/застаріле');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('69', 'coll', 'розмовне слово/розмовна форма');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('70', 'slang', 'сленг');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('71', 'alt', 'альтернативне написання (не за чинним правописом)');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('72', 'onomatop', 'клас звуконаслідувальних слів');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('73', 'ua_1992', 'за правописом 1992');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('74', 'ua_2019', 'за правописом 2019');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('75', 'var', 'варіативний знах. відм.');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('76', ':xp[1-9]', 'омоніми, що відрізняються парадигмою відмінювання (напр. бар - р.в. бару, бар - р.в. бара)');
-- в коментарях також :xv[1-9] омоніми, що відрізняються семантично(напр. глупий (дурний, має вищий ступінь глупіший) і глупий - глупа 
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('77', 'v-u', 'паралельні форми на в-/у- (для правил милозвучності, не генерується за уставою)');

--Додаткові теги класів слів (після &):
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('78', '&adjp', 'слова, що є дієприкметниками');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('79', '&&adjp', 'пслова, що є і прикметниками і дієприкметниками');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('80', '&pron', 'наразі всі займенники мають теги відповідних частин мови (noun/adj/adv), але всі мають додатковий тег &pron');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('81', '&numr', 'слова, що є порядковими числівниками');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('82', '&&numr', 'слова, що є і іменниками і кількісними числівниками');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('83', '&insert', 'може бути вставним словом');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('84', '&predic', 'може бути предикативом');

--Теги займенників
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('85', 'pers', 'особовий');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('86', 'refl', 'зворотний');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('87', 'pos', 'присвійний');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('88', 'dem', 'вказівний');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('89', 'def', 'означальний');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('90', 'int', 'питальний');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('91', 'rel', 'відносний');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('92', 'neg', 'заперечний');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('93', 'ind', 'неозначений');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('94', 'gen', 'узагальнювальний');
INSERT INTO `mydb`.`tag` (`id`, `name`, `description`) VALUES ('95', 'emph', 'підсилювальний');







