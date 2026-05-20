insert into frogs (id, common_name, scientific_name, family, habitat, diet, size, conservation_status) values
('rainette-verte', 'Rainette verte', 'Hyla arborea', 'Hylidae', 'Zones humides, haies, roselieres et jardins proches de points d''eau.', 'Insectes, araignees et petits invertebres.', '3 a 5 cm', 'Preoccupation mineure'),
('dendrobate-bleu', 'Dendrobate bleu', 'Dendrobates tinctorius azureus', 'Dendrobatidae', 'Forets tropicales humides, souvent pres de petits cours d''eau.', 'Fourmis, termites et petits arthropodes.', '3 a 4,5 cm', 'Preoccupation mineure'),
('grenouille-taureau', 'Grenouille taureau', 'Lithobates catesbeianus', 'Ranidae', 'Lacs, etangs, marais et rivieres lentes.', 'Insectes, poissons, amphibiens, petits oiseaux et petits mammiferes.', '9 a 20 cm', 'Preoccupation mineure'),
('grenouille-goliath', 'Grenouille goliath', 'Conraua goliath', 'Conrauidae', 'Rivieres rapides et cascades en foret tropicale.', 'Insectes, crustaces, poissons et petits amphibiens.', '17 a 32 cm', 'En danger'),
('grenouille-cornue-argentine', 'Grenouille cornue d''Argentine', 'Ceratophrys ornata', 'Ceratophryidae', 'Prairies humides, mares temporaires et zones boueuses.', 'Insectes, vers, petits reptiles, amphibiens et rongeurs.', '8 a 13 cm', 'Quasi menacee'),
('litoria-caerulea', 'Rainette de White', 'Ranoidea caerulea', 'Pelodryadidae', 'Forets, zones humides, jardins et habitations proches de l''eau.', 'Insectes et petits invertebres.', '7 a 11 cm', 'Preoccupation mineure');

insert into frog_continents (frog_id, continent) values
('rainette-verte', 'EUROPE'),
('rainette-verte', 'ASIA'),
('dendrobate-bleu', 'SOUTH_AMERICA'),
('grenouille-taureau', 'NORTH_AMERICA'),
('grenouille-taureau', 'EUROPE'),
('grenouille-taureau', 'ASIA'),
('grenouille-taureau', 'SOUTH_AMERICA'),
('grenouille-goliath', 'AFRICA'),
('grenouille-cornue-argentine', 'SOUTH_AMERICA'),
('litoria-caerulea', 'OCEANIA');

insert into frog_characteristics (frog_id, display_order, characteristic) values
('rainette-verte', 0, 'Peau verte vive'),
('rainette-verte', 1, 'Disques adhesifs au bout des doigts'),
('rainette-verte', 2, 'Chant puissant au printemps'),
('dendrobate-bleu', 0, 'Couleur bleue intense'),
('dendrobate-bleu', 1, 'Toxicite cutanee'),
('dendrobate-bleu', 2, 'Activite diurne'),
('grenouille-taureau', 0, 'Tres grande taille'),
('grenouille-taureau', 1, 'Chant grave'),
('grenouille-taureau', 2, 'Espece invasive dans plusieurs regions'),
('grenouille-goliath', 0, 'Plus grande grenouille connue'),
('grenouille-goliath', 1, 'Corps massif'),
('grenouille-goliath', 2, 'Dependante des cours d''eau bien oxygenes'),
('grenouille-cornue-argentine', 0, 'Large bouche'),
('grenouille-cornue-argentine', 1, 'Chasse a l''affut'),
('grenouille-cornue-argentine', 2, 'Motifs verts et bruns'),
('litoria-caerulea', 0, 'Aspect trapu'),
('litoria-caerulea', 1, 'Peau cireuse'),
('litoria-caerulea', 2, 'Bonne tolerance aux milieux modifies');
