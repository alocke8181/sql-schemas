CREATE TABLE regions(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
)

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    username TEXT NOT NULL,
    password TEXT NOT NULL,
)

CREATE TABLE posts(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    post_text TEXT NOT NULL,
    location TEXT NOT NULL,
)

CREATE TABLE categories(
    id SERIAL PRIMARY KEY,
    cat_name TEXT NOT NULL
)

CREATE TABLE preferred_regions(
    id SERIAL PRIMARY KEY,
    user_id REFERENCES users(id),
    region_id REFERENCES regions(id)
)

CREATE TABLE users_posts(
    id SERIAL PRIMARY KEY,
    post_id REFERENCES posts(id),
    user_id REFERENCES users(id)
)

CREATE TABLE regions_posts(
    id SERIAL PRIMARY KEY,
    region_id REFERENCES regions(id),
    post_id REFERENCES posts(id)
)

CREATE TABLE categories_posts(
    id SERIAL PRIMARY KEY,
    category_id REFERENCES categories(id),
    post_id REFERENCES posts(id)
)