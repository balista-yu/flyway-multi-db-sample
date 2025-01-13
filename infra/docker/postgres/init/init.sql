DO
$$
BEGIN
    IF
EXISTS (SELECT FROM pg_database WHERE datname = 'sample_db_first') THEN
        PERFORM pg_terminate_backend(pid) FROM pg_stat_activity WHERE datname = 'sample_db_first';
        DROP
DATABASE sample_db_first;
END IF;
END
$$;

DO
$$
BEGIN
    IF NOT EXISTS (SELECT FROM pg_roles WHERE rolname = 'user1') THEN
        CREATE USER user1 WITH ENCRYPTED PASSWORD 'password1';
    END IF;
END
$$;

CREATE DATABASE sample_db_first
    WITH OWNER = 'user1'
    ENCODING = 'UTF8'
    LC_COLLATE = 'ja_JP.UTF-8'
    LC_CTYPE = 'ja_JP.UTF-8'
    TEMPLATE = template0;

DO
$$
BEGIN
    IF
EXISTS (SELECT FROM pg_database WHERE datname = 'sample_db_second') THEN
        PERFORM pg_terminate_backend(pid) FROM pg_stat_activity WHERE datname = 'sample_db_second';
        DROP
DATABASE sample_db_second;
END IF;
END
$$;

DO
$$
BEGIN
    IF NOT EXISTS (SELECT FROM pg_roles WHERE rolname = 'user2') THEN
        CREATE USER user2 WITH ENCRYPTED PASSWORD 'password2';
    END IF;
END
$$;

CREATE DATABASE sample_db_second
    WITH OWNER = 'user2'
    ENCODING = 'UTF8'
    LC_COLLATE = 'ja_JP.UTF-8'
    LC_CTYPE = 'ja_JP.UTF-8'
    TEMPLATE = template0;

