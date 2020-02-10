exit
g.list type=vect
v.in.ogr --help
v.in.ogr dsn=/home/rabotin/000__Lisah/1_projets/0_segmentation_functions/3_segmentation_V1C/12_version_distribution/10_03/doc_en_cours/quick_start_guide/shapes output=field layer=field snap=0.2
v.in.ogr dsn=/home/rabotin/000__Lisah/1_projets/0_segmentation_functions/3_segmentation_V1C/12_version_distribution/10_03/doc_en_cours/quick_start_guide/shapes output=soil layer=soil snap=0.2
v.in.ogr dsn=/home/rabotin/000__Lisah/1_projets/0_segmentation_functions/3_segmentation_V1C/12_version_distribution/10_03/doc_en_cours/quick_start_guide/shapes output=reach layer=reach snap=0.2
r.in.arc --help
r.in.arc input=/home/rabotin/000__Lisah/1_projets/0_segmentation_functions/3_segmentation_V1C/12_version_distribution/10_03/doc_en_cours/quick_start_guide/shapes/dem.asc output=dem
gis.m
v.build map=reach
g.remove rast=dem
r.in.arc input=/home/rabotin/000__Lisah/1_projets/0_segmentation_functions/3_segmentation_V1C/12_version_distribution/10_03/doc_en_cours/quick_start_guide/shapes/dem.asc output=dem
m.dispolyg -i input=field output=field2 area=7000 unit=me
m.disline -i input=reach output=reach2 length=30 unit=me
g.list type=vect
g.list type=rast
exit
