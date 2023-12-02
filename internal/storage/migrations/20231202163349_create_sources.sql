-- +goose Up
-- +goose StatementBegin
-- createdb -U your_username -h localhost -p 5432 your_database_name - создание бд
--
CREATE TABLE sources
(
    id         SERIAL PRIMARY KEY,
    name       VARCHAR(255) NOT NULL,
    feed_url        VARCHAR(255) NOT NULL,
    created_at TIMESTAMP    NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP    NOT NULL DEFAULT NOW()

);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE IF EXISTS sources;
-- +goose StatementEnd
