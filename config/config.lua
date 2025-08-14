Config = {}
Config.Locale = 'hu'

Config.ESXLegacy = true

Config.PropSpots = {
    {
        showblip = true, -- legyen e blip
        blipname = "Valami vasas hely...",
        blip = 618,
        blipcolor = 39,
        blipscale = 0.7,
       
        showradius = true, -- legyen e radius

        pos = vector3(1591.2556, -1716.9840, 88.1116),
        radius = 16.0, 


        prop = 'prop_bandsaw_01', -- mi legyen a prop

        propamount = 5,
        distancebetweenprops = 5.0,
        delete = {
            delay = 3000,
        },

        anim = {
            animDict = "random@mugging4",
            anim = "struggle_loop_b_thief", -- mi legyen az animacio
            flags = 49,
            task = nil,
        },

        job = police,
        joblabel = nil,
        rang = 1,

        farmlabel = "Nyomj ~INPUT_CONTEXT~ hogy elkezd a szedést.", 

        requireditem = nil, -- Kelljen e item a szedéshez
        farmtime = 5000,
        barlabel = "Ez nem könnyü...",
        items = {
            {
                id = 1,
                item = "iron", -- mi az item amit kapsz
                minamount = 1,
                maxamount = 3,
            },
        },
    },

            {
            showblip = true, -- legyen e blip
            blipname = "Favágós hely...",
            blip = 478,
            blipcolor = 56,
            blipscale = 0.7,
           
            showradius = true, -- legyen e radius
    
            pos = vector3(1201.9496, -1330.1168, 35.2269),
            radius = 16.0, 
    
    
            prop = 'prop_byard_planks01', -- mi legyen a prop
    
            propamount = 5,
            distancebetweenprops = 3.0,
            delete = {
                delay = 3000,
            },
    
            anim = {
                animDict = "random@mugging4",
                anim = "struggle_loop_b_thief", -- mi legyen az animacio
                flags = 49,
                task = nil,
            },
    
            job = nil,
            joblabel = nil,
            rang = 0,
    
            farmlabel = "Nyomj ~INPUT_CONTEXT~ hogy elkezd a szedést.", 
    
            requireditem = nil, -- Kelljen e item a szedéshez
            farmtime = 5000,
            barlabel = "Ez nem könnyü...",
            items = {
                {
                    id = 1,
                    item = "wood",  -- mi az item amit kapsz
                    minamount = 1,
                    maxamount = 3,
                },
            },
        },
    }
