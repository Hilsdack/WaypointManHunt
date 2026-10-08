summon armor_stand ~ ~ ~ {\
    "Tags":["runner","np_point"],\
    "CustomName":"地狱传送门",\
    "Invisible":true,\
    "DisabledSlots":16191,\
    "Marker":true,\
    "attributes":[\
        {\
            "id":"waypoint_transmit_range",\
            "base":100000009,\
        }\
    ]\
}

waypoint modify @e[limit=1,sort=nearest,tag=np_point] color red
waypoint modify @e[limit=1,sort=nearest,tag=np_point] style set none