import json

class Location:
    def __init__(self, name:str, img:str, adresse:str, long:str, lat:str) -> None:
        self.name = name
        self.img = img
        self.adresse = adresse
        self.long = long
        self.lat = lat

def get_locations() -> list[Location]:
    file = "./bruxelles_parcours_bd.json"
    with open(file, "r", encoding="utf8") as f:
        content = f.read()

    locations = json.loads(content)
    locations = map(lambda l: Location(l["nom_de_la_fresque"], l["image"],
                                    l["adresse"], l["coordonnees_geographiques"]["lon"],
                                    l["coordonnees_geographiques"]["lat"]),
                                    locations)
    
    return locations

def insert_locations(locations:list[Location]) -> str:
    sql = ""
    for location in locations:
        sql_line = f"""
            insert into locations(`id`, `name`, `img_url`, `adresse`, `long`, `lat`)
            values(null, "{location.name}",
            "{location.img}",
            "{location.adresse}", "{location.long}", "{location.lat}");
        """
        sql+=sql_line

    return sql

locations = get_locations()
sql = insert_locations(locations)
with open("./datas/datasDB.sql", "w", encoding="utf8") as f:
    f.write(sql)