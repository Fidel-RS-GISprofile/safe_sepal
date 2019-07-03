#Constraints features


system(sprintf("gdal_calc.py -A %s -B %s -C %s -D %s -E %s -F %s -G %s -H %s --co=\"COMPRESS=LZW\" --outfile=%s --calc=\"%s\" --overwrite",
               unsuit_land_reserves_tif,
               dist2unsuit_land_reserves,
               unsuit_land_military_tif,
               unsuit_wetland_tif,
               dist2unsuit_wetland,
               slope_path,
               dist2water, 
               LAND_USE,
               tmp_mask_exclusion,
               "((H==41)+(H==42)+(A==1)+(B<15000/30)+(C==1)+(D==1)+(E<15000/30)+(F>20)+(G>2000/30))>0"
))

