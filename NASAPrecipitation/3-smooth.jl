using DrWatson
@quickactivate "GeoRegionExamples"
using NASAPrecipitation

npd = IMERGFinalHH(start=Date(2011,2),stop=Date(2011,2,28),path=datadir())
geo = GeoRegion("SQL",path=pwd())
smoothing(npd,geo,spatial=true,temporal=true,smoothlon=0.5,smoothlat=0.5,hours=3)
