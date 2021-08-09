CREATE TABLE Posts (
  id BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  title TEXT NOT NULL,
  content LONGTEXT,
  post_status VARCHAR(20),
  createdAt DATETIME(3) NOT NULL,
  updatedAt DATETIME(3) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE Comments (
  id BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  postID BIGINT(20) UNSIGNED NOT NULL, 
  content TEXT,
  createdAt DATETIME(3) NOT NULL,
  updatedAt DATETIME(3) NOT NULL,
  PRIMARY KEY (id),
  KEY (postID),
  CONSTRAINT `comments_posts_ibfk_1` FOREIGN KEY (`postID`) REFERENCES `Posts`(`id`)
);
