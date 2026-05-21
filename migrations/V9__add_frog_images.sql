create table frog_images (
    id bigserial primary key,
    frog_id varchar(120) not null references frogs(id) on delete cascade,
    image_url text not null,
    thumbnail_url text,
    source_name varchar(120) not null,
    source_url text not null,
    source_external_id text,
    license text not null default 'unknown',
    license_url text,
    creator text,
    attribution text,
    width integer,
    height integer,
    confidence smallint not null default 50,
    is_preferred boolean not null default false,
    retrieved_at timestamp with time zone not null default now(),
    unique (frog_id, source_name, image_url)
);

create index idx_frog_images_frog_quality
    on frog_images(frog_id, is_preferred desc, confidence desc);

create index idx_frog_images_source on frog_images(source_name);
