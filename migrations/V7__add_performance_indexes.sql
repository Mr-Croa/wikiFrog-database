create extension if not exists pg_trgm;

create index idx_frogs_id_trgm on frogs using gin (lower(id) gin_trgm_ops);
create index idx_frogs_common_name_trgm on frogs using gin (lower(common_name) gin_trgm_ops);
create index idx_frogs_scientific_name_trgm on frogs using gin (lower(scientific_name) gin_trgm_ops);

create index idx_frog_countries_country_frog on frog_countries(country_code, frog_id);
create index idx_frog_external_ids_frog_source on frog_external_ids(frog_id, source_name);
create index idx_frog_facts_frog_field_language_quality
    on frog_facts(frog_id, field_name, language, is_preferred desc, confidence desc);
create index idx_frog_sources_frog_field_source on frog_sources(frog_id, field_name, source_name);
