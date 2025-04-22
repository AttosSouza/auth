CREATE TABLE tb_roles (
    role_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE tb_users (
    user_id UUID PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE tb_users_roles (
    user_id UUID NOT NULL,
    role_id INTEGER NOT NULL,
    PRIMARY KEY (user_id, role_id),
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES tb_users(user_id) ON DELETE CASCADE,
    CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES tb_roles(role_id) ON DELETE CASCADE
);

CREATE TABLE tb_tweets (
    tweet_id BIGSERIAL PRIMARY KEY,
    user_id UUID,
    content TEXT NOT NULL,
    creation_timestamp TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_tweet_user FOREIGN KEY (user_id) REFERENCES tb_users(user_id) ON DELETE SET NULL
);
