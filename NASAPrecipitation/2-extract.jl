using DrWatson
@quickactivate "GeoRegionExamples"
using NASAPrecipitation

npd = IMERGFinalDY(start=Date(2011),stop=Date(2011,3),path=datadir())
geo = GeoRegion("SQL",path=pwd())
sgeo = GeoRegion("SGP",path=pwd())
extract(npd,sgeo,geo)
