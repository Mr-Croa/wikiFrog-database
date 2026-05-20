create table frog_countries (
    frog_id varchar(120) not null references frogs(id) on delete cascade,
    country_code varchar(2) not null,
    occurrence_count integer not null default 0,
    primary key (frog_id, country_code)
);

create index idx_frog_countries_country_code on frog_countries(country_code);
