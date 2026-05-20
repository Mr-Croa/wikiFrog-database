create table frogs (
    id varchar(120) primary key,
    common_name varchar(180) not null,
    scientific_name varchar(180) not null,
    family varchar(120) not null,
    habitat text not null,
    diet text not null,
    size varchar(80) not null,
    conservation_status varchar(120) not null
);

create table frog_continents (
    frog_id varchar(120) not null references frogs(id) on delete cascade,
    continent varchar(40) not null,
    primary key (frog_id, continent)
);

create table frog_characteristics (
    frog_id varchar(120) not null references frogs(id) on delete cascade,
    display_order integer not null,
    characteristic text not null,
    primary key (frog_id, display_order)
);

create index idx_frogs_common_name on frogs(common_name);
create index idx_frogs_scientific_name on frogs(scientific_name);
create index idx_frog_continents_continent on frog_continents(continent);
