
LOAD DATA LOCAL INFILE 'C:/Users/qlswl/Desktop/addressDB/addressDB/add_jeju.txt' 
REPLACE 
INTO TABLE add_info_m 
FIELDS TERMINATED BY '|' 
OPTIONALLY ENCLOSED BY '' 
LINES TERMINATED BY '\n' 
(
@mgmt_num, 
@adm_dong_cd,
@adm_dong_nm, 
@zipcode, 
@zipcode_seq, 
@plent_dlvr_nm, 
@build_rgst_nm, 
@sgg_build_nm, 
@multi_unit_yn
) 

SET 
mgmt_num=@mgmt_num, 
adm_dong_cd=@adm_dong_cd,
adm_dong_nm=@adm_dong_nm, 
zipcode=@zipcode, 
zipcode_seq=@zipcode_seq, 
plent_dlvr_nm=@plent_dlvr_nm, 
build_rgst_nm=@build_rgst_nm, 
sgg_build_nm=@sgg_build_nm, 
multi_unit_yn=@multi_unit_yn;

LOAD DATA LOCAL INFILE 'C:/Users/qlswl/Desktop/addressDB/addressDB/jibun_jeju.txt'
REPLACE 
INTO TABLE jibun_info_m
FIELDS TERMINATED BY '|' 
OPTIONALLY ENCLOSED BY '' 
LINES TERMINATED BY '\n' 
(@mgmt_num, 
@seq, 
@law_dong_cd, 
@sd_nm, 
@sgg_nm, 
@law_umd_nm, 
@law_ri_nm,
@san_yn, 
@jb_main_num, 
@jb_sub_num, 
@main_yn) 

SET 
mgmt_num = @mgmt_num, 
seq = @seq, 
law_dong_cd = @law_dong_cd, 
sd_nm = @sd_nm, 
sgg_nm = @sgg_nm, 
law_umd_nm = @law_umd_nm, 
law_ri_nm = @law_ri_nm, 
san_yn = @san_yn, 
jb_main_num = @jb_main_num, 
jb_sub_num = @jb_sub_num, 
main_yn = @main_yn;

LOAD DATA LOCAL INFILE 'C:/Users/qlswl/Desktop/addressDB/addressDB/juso_jeju.txt' 
REPLACE 
INTO TABLE juso_info_m 
FIELDS TERMINATED BY '|' 
OPTIONALLY ENCLOSED BY '' 
LINES TERMINATED BY '\n' 
(@mgmt_num, 
@road_nm_cd, 
@umd_seq, 
@basement_yn, 
@build_main_num, 
@build_sub_num, 
@base_area_num, 
@update_type_cd, 
@anncmt_date, 
@orgn_road_nm_addr, 
@get_detail_addr_yn) 

SET 
mgmt_num=@mgmt_num, 
road_nm_cd=@road_nm_cd, 
umd_seq=@umd_seq, 
basement_yn=@basement_yn, 
build_main_num=@build_main_num, 
build_sub_num=@build_sub_num, 
base_area_num=@base_area_num, 
update_type_cd=@update_type_cd, 
anncmt_date=@anncmt_date, 
orgn_road_nm_addr=@orgn_road_nm_addr, 
get_detail_addr_yn=@get_detail_addr_yn;



LOAD DATA LOCAL INFILE 'C:/Users/qlswl/Desktop/addressDB/addressDB/road_cd.txt'
REPLACE
INTO TABLE address_svc_m.road_cd_info_m
FIELDS TERMINATED BY '|'
OPTIONALLY ENCLOSED BY ''
LINES TERMINATED BY '\n'
(@road_nm_cd,
@road_nm,
@road_roma_nm,
@umd_seq,
@sd_nm,
@sd_roma_nm,
@sgg_nm,
@sgg_roma_nm,
@umd_nm,
@umd_roma_nm,
@umd_gb,
@umd_cd,
@use_yn,
@update_rs_cd,
@update_his_info,
@anncmt_date,
@erase_date)
SET
road_nm_cd = @road_nm_cd,
umd_seq = @umd_seq,
road_nm = @road_nm,
road_roma_nm = @road_roma_nm,
sd_nm = @sd_nm,
sd_roma_nm = @sd_roma_nm,
sgg_nm = @sgg_nm,
sgg_roma_nm = @sgg_roma_nm,
umd_nm = @umd_nm,
umd_roma_nm = @umd_roma_nm,
umd_gb = @umd_gb,
umd_cd = @umd_cd,
use_yn = @use_yn,
update_rs_cd = @update_rs_cd,
update_his_info = @update_his_info,
anncmt_date = @anncmt_date,
erase_date = @erase_date
;