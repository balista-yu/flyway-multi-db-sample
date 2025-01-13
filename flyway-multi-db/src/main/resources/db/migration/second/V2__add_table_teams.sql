CREATE TABLE IF NOT EXISTS teams (
    id INTEGER NOT NULL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS team_members (
    team_id INTEGER NOT NULL REFERENCES teams (id),
    staff_id INTEGER NOT NULL REFERENCES staffs (id),
    PRIMARY KEY (team_id, staff_id)
);
