create table frog_external_ids (
    id bigserial primary key,
    frog_id varchar(120) not null references frogs(id) on delete cascade,
    source_name varchar(120) not null,
    external_id text not null,
    source_url text not null,
    retrieved_at timestamp with time zone not null default now(),
    unique (frog_id, source_name, external_id)
);

create table frog_facts (
    id bigserial primary key,
    frog_id varchar(120) not null references frogs(id) on delete cascade,
    field_name varchar(120) not null,
    field_value text not null,
    language varchar(12) not null default 'und',
    source_name varchar(120) not null,
    source_url text not null,
    source_external_id text,
    confidence smallint not null default 50,
    is_preferred boolean not null default false,
    retrieved_at timestamp with time zone not null default now(),
    unique (frog_id, field_name, field_value, language, source_name)
);

create index idx_frog_external_ids_frog_id on frog_external_ids(frog_id);
create index idx_frog_external_ids_source on frog_external_ids(source_name);
create index idx_frog_facts_frog_id on frog_facts(frog_id);
create index idx_frog_facts_field_name on frog_facts(field_name);
create index idx_frog_facts_language on frog_facts(language);

insert into frog_external_ids (frog_id, source_name, external_id, source_url)
select distinct
    frog_id,
    'GBIF API',
    substring(source_url from '/species/([0-9]+)$'),
    source_url
from frog_sources
where source_name = 'GBIF API'
  and source_url ~ '/species/[0-9]+$'
on conflict do nothing;

insert into frog_facts (
    frog_id,
    field_name,
    field_value,
    language,
    source_name,
    source_url,
    source_external_id,
    confidence,
    is_preferred,
    retrieved_at
)
select
    source.frog_id,
    source.field_name,
    source.source_value,
    'und',
    source.source_name,
    source.source_url,
    substring(source.source_url from '/species/([0-9]+)$'),
    80,
    true,
    source.retrieved_at
from frog_sources source
where source.source_value <> 'unknown'
on conflict do nothing;
