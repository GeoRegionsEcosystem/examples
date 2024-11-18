using DrWatson
@quickactivate "GeoRegionExamples"
using ERA5Reanalysis

e5ds = ERA5Hourly(start=Date(2011,1),stop=Date(2011,3,31),path=datadir())
evar = SingleVariable("tp")
egeo = ERA5Region(GeoRegion("SQL",path=pwd()))
smoothing(e5ds,evar,egeo,spatial=true,temporal=true,smoothlon=0.5,smoothlat=0.5,hours=3)
