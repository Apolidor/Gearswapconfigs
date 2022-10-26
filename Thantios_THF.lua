include('organizer-lib')

function get_sets()
    --------------------------------------
    -- Variables
    --------------------------------------
    gear_mode = 0
    weapon_mode = 0

    --------------------------------------
    -- Precast sets
    --------------------------------------
    sets.precast = {}
    sets.precast.JA = {}
    sets.precast.JA['Sneak Attack'] = {
        hands="Raid. Armlets +2",
        }
    sets.precast.FC = {}

    --------------------------------------
    -- Weaponskill sets
    --------------------------------------
    -- default set
    sets.precast.WS = {
        ammo="Oshasha's Treatise",
        head="Nyame Helm",
        body="Nyame Mail",
        hands={ name="Nyame Gauntlets", augments={'Path: B',}},
        legs={ name="Nyame Flanchard", augments={'Path: B',}},
        feet={ name="Nyame Sollerets", augments={'Path: B',}},
        neck="Sanctity Necklace",
        waist="Eschan Stone",
        left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        right_ear="Hecate's Earring",
        left_ring="Karieyh Ring",
        right_ring="Dingir Ring",
        back="Toro Cape", 
        }        
    sets.precast['Evisceration'] = set_combine(sets.precast.WS, {})
    sets.precast['Exenterator'] = set_combine(sets.precast.WS, {})
    sets.precast['Aeolian Edge'] = set_combine(sets.precast.WS, {})

    --------------------------------------
    -- Midcast sets
    --------------------------------------
    sets.midcast = {}
    -- sets.midcast['Enfeebling Magic']  = {}
    -- sets.midcast['Enhancing Magic']  = {}
    -- sets.midcast['Elemental Magic']  = {}
    --sets.midcast.magic = {}

    --------------------------------------
    -- Idle/resting/defense/etc sets
    --------------------------------------
    sets.aftercast = {}
    sets.aftercast.Idle = {}
    sets.aftercast.Weapon = {}  
    
    -- gear_mode
    sets.aftercast.Idle[0]={    --normal
        ammo="Aurgelmir Orb",
        head="Nyame Helm",
        body="Mummu Jacket +1",
        hands="Mummu Wrists +1",
        legs="Mummu Kecks +1",
        feet="Herculean Boots",
        neck="Asperity Necklace",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Sherida Earring",
        right_ear="Cessance Earring",
        left_ring="Chirich Ring +1",
        right_ring="Rajas Ring",
        back="Canny Cape",
        }
    sets.aftercast.Idle[1]={    --Treasure Hunter
        ammo="Per. Lucky Egg",
        head="Nyame Helm",
        body="Nyame Mail",
        hands={ name="Asn. Armlets +2", augments={'Enhances "Perfect Dodge" effect',}},
        legs="Mummu Kecks +1",
        feet="Herculean Boots",
        neck="Asperity Necklace",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Sherida Earring",
        right_ear="Cessance Earring",
        left_ring="Chirich Ring +1",
        right_ring="Rajas Ring",
        back="Canny Cape",
        }

    -- weapon_mode        
    sets.aftercast.Weapon[0]={
        main="Izhiikoh",
        sub="Sandung"
        }       
    sets.aftercast.Weapon[1]={
        main="Naegling",
        sub="Izhiikoh"
        }    
    sets.aftercast.Weapon[2]={
        main="Sandung",
        sub="Thief's Knife"
        }    

end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------
function precast(spell)
    -- Job Ability-Boost
    if sets.precast[spell.english] then
        equip(sets.precast[spell.english])
    -- Fast Cast for Magic    
    elseif spell.action_type == 'Magic' then
            equip(sets.precast.FC)
    end
end

function midcast(spell) 
    -- Magic-Boost   
    -- if string.find(spell.english,'part of the name') then 
    --     equip(sets.midcast.magic)
    -- elseif spell.english == 'exact name' then
    --     equip(sets.midcast.magic)
    -- elseif spell.skill == 'Enfeebling Magic' then
    --     equip(sets.midcast['Enfeebling Magic'])
    -- elseif spell.skill == 'Enhancing Magic' then
    --     equip(sets.midcast['Enhancing Magic'])
    -- elseif spell.skill == 'Elemental Magic' then
    --     equip(sets.midcast['Elemental Magic'])
    -- elseif spell.skill then
    --     equip(sets.aftercast.Idle)
    -- end
end

function aftercast(spell)
        equip(sets.aftercast.Idle[gear_mode],sets.aftercast.Weapon[weapon_mode])
end

function status_change(new_status, old_status)
    if new_status == 'Idle' then
        equip(  {feet="Fajin Boots"})

    elseif
        new_status == 'Engaged' then
        equip(sets.aftercast.Idle[gear_mode])
    end
end
-------------------------------------------------------------------------------------------------------------------
-- Stances
-------------------------------------------------------------------------------------------------------------------
function self_command(command)
    if command:lower() == 'switchgear' then gear_mode = (gear_mode+1)%2 end
    if command:lower() == 'gear1' then gear_mode = 0 end
    if command:lower() == 'gear2' then gear_mode = 1 end
    equip(sets.aftercast.Idle[gear_mode])

    if command:lower() == 'switchweapon' then weapon_mode = (weapon_mode+1)%3 end
    if command:lower() == 'weapon1' then weapon_mode = 0 end
    if command:lower() == 'weapon2' then weapon_mode = 1 end
    equip(sets.aftercast.Weapon[weapon_mode])
end