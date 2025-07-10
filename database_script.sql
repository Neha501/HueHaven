CREATE DATABASE color_palette_app;
USE color_palette_app;
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE,
    password VARCHAR(50)
);
CREATE TABLE user_palettes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    color_code VARCHAR(10),
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);
CREATE TABLE suggested_palettes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    theme VARCHAR(50),
    image_path VARCHAR(255)
);
INSERT INTO suggested_palettes (theme, image_path)
VALUES
('spring', 'images/spring1.png'),
('spring', 'images/spring2.png'),
('spring', 'images/spring3.png'),
('autumn', 'images/bright.png'),
('autumn', 'images/bright1.png'),
('dark', 'images/dark.png');

DELETE sp1 FROM suggested_palettes sp1
INNER JOIN suggested_palettes sp2
WHERE
    sp1.id > sp2.id
    AND sp1.theme = sp2.theme
    AND sp1.image_path = sp2.image_path;
INSERT INTO suggested_palettes (theme, image_path) VALUES

('spring', 'images/spring5.png'),
('spring', 'images/spring6.png'),


('autumn', 'images/autumn3.png'),
('autumn', 'images/autumn4.png'),
('autumn', 'images/autumn5.png'),


('dark', 'images/dark2.png'),
('dark', 'images/dark3.png'),
('dark', 'images/dark4.png'),


('red', 'images/red1.png'),
('red', 'images/red2.png'),
('red', 'images/red3.png'),
('red', 'images/red4.png'),


('green', 'images/green1.png'),
('green', 'images/green2.png'),
('green', 'images/green3.png'),
('green', 'images/green4.png'),

('blue', 'images/blue1.png'),
('blue', 'images/blue2.png'),
('blue', 'images/blue3.png'),
('blue', 'images/blue4.png');

CREATE TABLE palettes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    name VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);
ALTER TABLE user_palettes ADD COLUMN palette_id INT;
ALTER TABLE user_palettes ADD FOREIGN KEY (palette_id) REFERENCES palettes(id) ON DELETE CASCADE;

CREATE TABLE favorite_palettes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    image_path VARCHAR(255) NOT NULL
);
