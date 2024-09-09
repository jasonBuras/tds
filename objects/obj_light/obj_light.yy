{
  "$GMObject":"",
  "%Name":"obj_light",
  "eventList":[
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":12,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"obj_light",
  "overriddenProperties":[],
  "parent":{
    "name":"Lighting",
    "path":"folders/Objects/Lighting.yy",
  },
  "parentObjectId":null,
  "persistent":false,
  "physicsAngularDamping":0.1,
  "physicsDensity":0.5,
  "physicsFriction":0.2,
  "physicsGroup":0,
  "physicsKinematic":false,
  "physicsLinearDamping":0.1,
  "physicsObject":false,
  "physicsRestitution":0.1,
  "physicsSensor":false,
  "physicsShape":1,
  "physicsShapePoints":[],
  "physicsStartAwake":true,
  "properties":[
    {"$GMObjectProperty":"v1","%Name":"Light_Type","filters":[
        "GMTileSet",
        "GMSprite",
        "GMSound",
        "GMPath",
        "GMScript",
        "GMShader",
        "GMFont",
        "GMTimeLine",
        "GMObject",
        "GMRoom",
      ],"listItems":[
        "\"Point Light\"",
        "\"Spot Light\"",
        "\"Area Light\"",
        "\"Directional Light\"",
        "\"Line Light\"",
      ],"multiselect":false,"name":"Light_Type","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"\"Point Light\"","varType":6,},
    {"$GMObjectProperty":"v1","%Name":"Light_Color","filters":[
        "GMTileSet",
        "GMSprite",
        "GMSound",
        "GMPath",
        "GMScript",
        "GMShader",
        "GMFont",
        "GMTimeLine",
        "GMObject",
        "GMRoom",
      ],"listItems":null,"multiselect":false,"name":"Light_Color","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"$FFFFFFFF","varType":7,},
    {"$GMObjectProperty":"v1","%Name":"Light_Range","filters":[
        "GMTileSet",
        "GMSprite",
        "GMSound",
        "GMPath",
        "GMScript",
        "GMShader",
        "GMFont",
        "GMTimeLine",
        "GMObject",
        "GMRoom",
      ],"listItems":null,"multiselect":false,"name":"Light_Range","rangeEnabled":true,"rangeMax":5000.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"768","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"Light_Intensity","filters":[
        "GMTileSet",
        "GMSprite",
        "GMSound",
        "GMPath",
        "GMScript",
        "GMShader",
        "GMFont",
        "GMTimeLine",
        "GMObject",
        "GMRoom",
      ],"listItems":null,"multiselect":false,"name":"Light_Intensity","rangeEnabled":true,"rangeMax":30.0,"rangeMin":0.001,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"1.3","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"Light_Shadow_Length","filters":[
        "GMTileSet",
        "GMSprite",
        "GMSound",
        "GMPath",
        "GMScript",
        "GMShader",
        "GMFont",
        "GMTimeLine",
        "GMObject",
        "GMRoom",
      ],"listItems":null,"multiselect":false,"name":"Light_Shadow_Length","rangeEnabled":true,"rangeMax":65536.0,"rangeMin":1.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"32000","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"Light_Angle","filters":[
        "GMTileSet",
        "GMSprite",
        "GMSound",
        "GMPath",
        "GMScript",
        "GMShader",
        "GMFont",
        "GMTimeLine",
        "GMObject",
        "GMRoom",
      ],"listItems":null,"multiselect":false,"name":"Light_Angle","rangeEnabled":true,"rangeMax":359.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"Light_Direction","filters":[
        "GMTileSet",
        "GMSprite",
        "GMSound",
        "GMPath",
        "GMScript",
        "GMShader",
        "GMFont",
        "GMTimeLine",
        "GMObject",
        "GMRoom",
      ],"listItems":null,"multiselect":false,"name":"Light_Direction","rangeEnabled":true,"rangeMax":359.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"Light_Width","filters":[
        "GMTileSet",
        "GMSprite",
        "GMSound",
        "GMPath",
        "GMScript",
        "GMShader",
        "GMFont",
        "GMTimeLine",
        "GMObject",
        "GMRoom",
      ],"listItems":null,"multiselect":false,"name":"Light_Width","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"256","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"LUT_Intensity","filters":[
        "GMSprite",
      ],"listItems":null,"multiselect":false,"name":"LUT_Intensity","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"noone","varType":5,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"spr_light_point",
    "path":"sprites/spr_light_point/spr_light_point.yy",
  },
  "spriteMaskId":null,
  "visible":false,
}