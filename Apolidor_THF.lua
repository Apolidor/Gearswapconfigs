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
        ammo="Aurgelmir Orb",
        head="Meghanada Visor +1",
        body="Meghanada Cuirie",
        hands="Meg. Gloves +1",
        legs={ name="Herculean Trousers", augments={'Accuracy+30','Weapon skill damage +2%','DEX+13',}},
        feet="Meg. Jam. +1",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        right_ear="Ishvara Earring",
        left_ring="Rajas Ring",
        right_ring="Petrov Ring",
        back={ name="Canny Cape", augments={'DEX+3','AGI+1','"Dual Wield"+3','Crit. hit damage +1%',}},     
        }        
    sets.precast['Evisceration'] = set_combine(sets.precast.WS, {})
    sets.precast['Exenterator'] = set_combine(sets.precast.WS, {})

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
    sets.aftercast.Idle[0]={    --TP
        ammo={ name="Coiste Bodhar", augments={'Path: A',}},
        head="Gleti's Mask",
        body="Gleti's Cuirass",
        hands="Gleti's Gauntlets",
        legs="Gleti's Breeches",
        feet={ name="Herculean Boots", augments={'Accuracy+25 Attack+25','Crit.hit rate+3','STR+6','Accuracy+12','Attack+11',}},
        neck="Asperity Necklace",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Sherida Earring",
        right_ear="Cessance Earring",
        left_ring="Rajas Ring",
        right_ring="Chirich Ring +1",
        back={ name="Canny Cape", augments={'DEX+3','AGI+1','"Dual Wield"+3','Crit. hit damage +1%',}},
        }
        
    sets.aftercast.Idle[1]= set_combine(sets.aftercast.Idle[0],{     --Treasure Hunter
        ammo="Perfect lucky egg",
        head="Wh. Rarab Cap +1",
        hands={ name="Plun. Armlets +1", augments={'Enhances "Perfect Dodge" effect',}},
        feet="Skulk. Poulaines +1",
        })

    -- weapon_mode        
    sets.aftercast.Weapon[0]={
        main="Crepuscular knife";
        sub={ name="Shijo", augments={'DMG:+15','Accuracy+15','Attack+15',}},
    }       
    sets.aftercast.Weapon[1]={
        main="Crepuscular knife";
        sub="Sandung",
    }       
    sets.aftercast.Weapon[2]={
        main="Naegling";
        sub={ name="Shijo", augments={'DMG:+15','Accuracy+15','Attack+15',}},
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
        equip({feet="Fajin Boots"})
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
    equip(sets.aftercast.Idle[gear_mode])

    if command:lower() == 'switchweapon' then weapon_mode = (weapon_mode+1)%3 end
    equip(sets.aftercast.Weapon[weapon_mode])
  
    switch_statustext(gear_mode,weapon_mode)
	switch_crossbar(weapon_mode)	    
end

function switch_statustext(gear_mode,weapon_mode)
    if gear_mode == 0 then
        gear_description = "TP-Build______"
    elseif gear_mode == 1 then
        gear_description = "TreasureHunter"
    end
    if weapon_mode == 0 then
        weapon_description = "Dagger"
    elseif weapon_mode == 1 then
        weapon_description = "DaggerTH"
    elseif weapon_mode == 2 then
        weapon_description = "Sword"
    end
    send_command('input //text status text Gear:'..gear_description..' Weapon:'..weapon_description)
end

function switch_crossbar(mode)
	if mode == 0 then
        send_command('input //xivcrossbar set job-default 2 6 ws "Evisceration" t "Evisceration"')
        send_command('input //xivcrossbar set job-default 2 7 ws "Exenterator" t "Exenterator"')
        send_command('input //xivcrossbar set job-default 2 8 ws "Dancing Edge" t "Dancing Edge"')
        send_command('input //xivcrossbar set job-default 2 5 ws "Aeolian Edge" t "Aeolian Edge"')
    end

    if mode == 2 then
        send_command('input //xivcrossbar set job-default 2 6 ws "Savage Blade" t "Savage Blade"')
        send_command('input //xivcrossbar set job-default 2 7 ws "Requiescat" t "Requiescat"')
        send_command('input //xivcrossbar set job-default 2 8 ws "Spirits Within" t "Spirits Within"')
        send_command('input //xivcrossbar set job-default 2 5 ws "Sanguine Blade" t "Sanguine Blade"')
    end


end