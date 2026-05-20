create table import_runs (
    id bigserial primary key,
    source_name varchar(120) not null,
    source_url text not null,
    requested_limit integer not null,
    imported_count integer not null default 0,
    started_at timestamp with time zone not null default now(),
    finished_at timestamp with time zone
);

create table frog_sources (
    id bigserial primary key,
    frog_id varchar(120) not null references frogs(id) on delete cascade,
    field_name varchar(120) not null,
    source_name varchar(120) not null,
    source_url text not null,
    source_value text not null,
    retrieved_at timestamp with time zone not null default now()
);

create index idx_frog_sources_frog_id on frog_sources(frog_id);
create index idx_frog_sources_field_name on frog_sources(field_name);
