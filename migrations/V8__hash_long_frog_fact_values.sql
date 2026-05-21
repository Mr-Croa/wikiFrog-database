alter table frog_facts
drop constraint frog_facts_frog_id_field_name_field_value_language_source_n_key;

create unique index idx_frog_facts_unique_hash
on frog_facts(frog_id, field_name, md5(field_value), language, source_name);
