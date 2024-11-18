using DrWatson
@quickactivate "GeoRegionExamples"
using NASAPrecipitation

npd = IMERGFinalHH(start=Date(2011,1),stop=Date(2011,3,31),path=datadir())
geo = GeoRegion("SQL",path=pwd())

ds  = read(npd,geo,Date(2011,2,27))
lon = ds["longitude"][:]
lat = ds["latitude"][:]
prc = ds["precipitation"][:,:,:] * 1800
close(ds)
