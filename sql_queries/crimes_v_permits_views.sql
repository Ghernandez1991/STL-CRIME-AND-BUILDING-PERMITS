 SELECT s.complaint,
    s.codedmonth,
    s.dateoccur,
    s.count,
    s.crime,
    s.district,
    s.description,
    s.ileadsaddress,
    s.ileadsstreet,
    s.cadaddress,
    s.cadstreet,
    s.xcoord,
    s.ycoord,
    n.nei_name,
    n.neighborhood,
    b.avgdaystoissue,
    b.totalnumber,
    b.totalvalue
   FROM stlcrime2018 s
     JOIN neighborhoodcodes n ON s.nei_name = n.nei_name
     JOIN buildingpermits2018 b ON n.nei_name = b.nei_name;