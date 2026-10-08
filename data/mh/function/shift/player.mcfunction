summon armor_stand ~ ~ ~ {\
    "Tags":["runner","np_point_shift"],\
    "CustomName":"shift",\
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

waypoint modify @e[limit=1,sort=nearest,tag=np_point_shift] color red
waypoint modify @e[limit=1,sort=nearest,tag=np_point_shift] style set none