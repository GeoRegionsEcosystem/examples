using DrWatson
@quickactivate "GeoRegionExamples"
using NASAPrecipitation

npd = IMERGFinalHH(start=Date(2011,1),stop=Date(2011,3,31),path=datadir())
geo = GeoRegion("SQL",path=pwd())
download(npd,geo)

npd = IMERGFinalDY(start=Date(2011,1),stop=Date(2011,3,31),path=datadir())
geo = GeoRegion("SQL",path=pwd())
download(npd,geo)
