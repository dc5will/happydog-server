create table happydog_comments (
  id integer primary key generated by default as identity,
  content text not null,
  date_created TIMESTAMP NOT NULL default now(),
  duedate date not null,
  date_modified TIMESTAMP,
  note_id INTEGER REFERENCES happydog_notes(id) ON DELETE CASCADE
);