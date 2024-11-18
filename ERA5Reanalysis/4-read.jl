using DrWatson
@quickactivate "GeoRegionExamples"
using NASAPrecipitation

e5ds = ERA5Hourly(start=Date(2011,1),stop=Date(2011,3,31),path=datadir())
evar = SingleVariable("tp")
egeo = ERA5Region(GeoRegion("SGP",path=pwd()))

ds  = read(e5ds,evar,egeo,Date(2011,2,27))
lon = ds["longitude"][:]
lat = ds["latitude"][:]
prc = ds[evar.ID][:,:,:]
close(ds)
