#juso_info_m 지번주소값을 저장 할 컬럼
alter table address_svc_m.juso_info_m 
add inf_full_jb_addr varchar(300) null comment 'inf_지번주소';

# 도로명주소값을 저장 할 컬럼
alter table address_svc_m.juso_info_m 
add inf_full_road_addr varchar(300) null comment 'inf_도로명주소';

-- # 도로명주소 update 문
update address_svc_m.juso_info_m as ori
inner join
    (select
        CASE
            WHEN B.umd_nm IS NULL OR B.umd_nm = ''
                THEN CONCAT(B.sd_nm, ' ', B.sgg_nm, ' ', B.road_nm, ' ',
                            IF(A.build_sub_num = 0, A.build_main_num,
                               CONCAT(A.build_main_num, '-', A.build_sub_num)),
                            IF(D.multi_unit_yn = 1, IF(D.sgg_build_nm IS NULL OR D.sgg_build_nm = '', '',
                                                       CONCAT(' (', D.sgg_build_nm, ')')), ''))
            ELSE CONCAT(B.sd_nm, ' ', B.sgg_nm, ' ', B.road_nm, ' ',
                        IF(A.build_sub_num = 0, A.build_main_num,
                           CONCAT(A.build_main_num, '-', A.build_sub_num)), ', (',
                        B.umd_nm, IF(D.multi_unit_yn = 1, IF(D.sgg_build_nm IS NULL OR D.sgg_build_nm = '', '',
                                                             CONCAT(', ', D.sgg_build_nm)), ''), ')')
            END as road_addr,
            A.mgmt_num


FROM address_svc_m.juso_info_m A,
    address_svc_m.road_cd_info_m B,
    address_svc_m.add_info_m D
WHERE A.road_nm_cd = B.road_nm_cd
  AND A.umd_seq = B.umd_seq
  AND A.mgmt_num = D.mgmt_num) src
on ori.mgmt_num = src.mgmt_num

set ori.inf_full_road_addr= src.road_addr
;


-- # 지번주소 update 
update address_svc_m.juso_info_m as ori
inner join
    (SELECT 
			CASE
            WHEN C.sgg_nm IS NULL OR C.sgg_nm = ''
                    THEN CONCAT(C.sd_nm, ' ', C.law_umd_nm, ' ',
                                IF(C.law_ri_nm IS NULL OR C.law_ri_nm = '', '', CONCAT(C.law_ri_nm, ' ')),
                                IF(C.san_yn = 0, '', '산 '),
                                IF(C.jb_sub_num = 0, C.jb_main_num, CONCAT(C.jb_main_num, '-', C.jb_sub_num)),
                                IF(D.multi_unit_yn = 1, IF(D.sgg_build_nm IS NULL OR D.sgg_build_nm = '', '',
                                                           CONCAT(' (', D.sgg_build_nm, ')')), ''))

                ELSE CONCAT(C.sd_nm, ' ', C.sgg_nm, ' ', C.law_umd_nm, ' ',
                            IF(C.law_ri_nm IS NULL OR C.law_ri_nm = '', '', CONCAT(C.law_ri_nm, ' ')),
                            IF(C.san_yn = 0, '', '산 '),
                            IF(C.jb_sub_num = 0, C.jb_main_num, CONCAT(C.jb_main_num, '-', C.jb_sub_num)),
                            IF(D.multi_unit_yn = 1,
                               IF(D.sgg_build_nm IS NULL OR D.sgg_build_nm = '', '', CONCAT(' (', D.sgg_build_nm, ')')),
                               ''))
                END as jb_addr,
            C.mgmt_num

     FROM address_svc_m.jibun_info_m C,
          address_svc_m.add_info_m D
     WHERE C.mgmt_num = D.mgmt_num
       AND C.main_yn = 1) src
    on ori.mgmt_num = src.mgmt_num

set ori.inf_full_jb_addr=src.jb_addr;juso_info_m

#api
alter table address_svc_m.juso_info_m 
add inf_flag varchar(1) null comment 'inf_플래그';

UPDATE address_svc_m.juso_info_m SET inf_flag = 'N';

#inf_latitude(위도), inf_longtitude(경도) 만들기
alter table address_svc_m.juso_info_m 
add inf_latitude VARCHAR(30) null comment 'inf_위도';

alter table address_svc_m.juso_info_m 
add inf_longtitude VARCHAR(30) null comment 'inf_경도';