USE todo;

# Добавление названий проектов

INSERT INTO projects (name,user_id)
VALUES ('Входящие', 1),
       ('Учеба', 1),
       ('Работа', 1),
       ('Домашние дела', 2),
       ('Авто', 2);

# Добавление пользователей

INSERT INTO users
   (email, name, password)
VALUES ('loss@gmail.com', 'Дмитрий', 'Y734e9sdfg'),
       ('leopold@gmail.com', 'Александр', '1234567');


# Добавление задач


INSERT INTO task
  (title, data_exp, proeject_id, user_id, status)
VALUES ('Собеседование в IT компании', STR_TO_DATE('06.10.2021', '%d.%m.%Y'), 6, 1, 0),
       ('Выполнить тестовое задание', STR_TO_DATE('05.10.2021', '%d.%m.%Y'), 7, 1, 0),
       ('Сделать задание первого раздела', STR_TO_DATE('21.12.2021', '%d.%m.%Y'), 8, 2, 1),
       ('Встреча с другом', STR_TO_DATE('22.12.2021', '%d.%m.%Y'), 9, 1, 0),
       ('Купить корм для кота', NULL, 7, 2, 0),
       ('Заказать пиццу', NULL, 10, 1, 0);


# Получить список из всех проектов для одного пользователя

SELECT name
  FROM projects
    WHERE user_id = 1;


# Получить список из всех задач для одного проекта

SELECT title
  FROM task
   WHERE proeject_id = 9;

# пометить задачу как выполненную

UPDATE task
SET status = 1
WHERE title = 'Собеседование в IT компании';

# обновить название задачи по её идентификатору

UPDATE task
SET title = 'Собеседование в IT компании Google'
WHERE id = 1;




