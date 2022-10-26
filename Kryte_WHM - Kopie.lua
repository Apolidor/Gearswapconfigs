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
    --sets.precast.JA['ja'] = {}
    sets.precast.FC = {        
        main="Numen Staff",
        sub="Irenic Strap",
        ammo="Incantor Stone",
        head="Inyanga Tiara +1",
        body="Inyanga Jubbah +1",
        hands="Inyanga Dastanas +1",
        legs="Inyanga Shalwar +1",
        feet="Inyan. Crackows +1",
        neck="Twilight Torque",
        waist="Hierarch Belt",
        left_ear="Orison Earring",
        right_ear="Brachyura Earring",
        left_ring="Roller's Ring",
        right_ring="Bifrost Ring",
        back="Iximulew Cape",}

    --------------------------------------
    -- Weaponskill sets
    --------------------------------------
    --WSD, PDL if ATK-Capped
    sets.precast.WSSingle = {}   
    --PDL and Multi
    sets.precast.WSMulti = {}  
    --sets.precast.WS['ws'] = set_combine(sets.precast.WSSingle, {})

    --------------------------------------
    -- Midcast sets
    --------------------------------------
    sets.midcast = {}
    sets.midcast.cure = {
        main="Raetic Rod +1",
        --main="Tefnut Wand",
        sub="Sors Shield",
        ammo="Incantor Stone",
        head="Ebers Cap",
        body="Orison Bliaut +1",
        hands="Inyan. Dastanas +1",
        legs="Inyanga Shalwar +1",
        feet="Inyan. Crackows +1",
        neck="Twilight Torque",
        waist="Hierarch Belt",
        left_ear="Orison Earring",
        right_ear="Graiai Earring",
        left_ring="Roller's Ring",
        right_ring="Bifrost Ring",
        back="Oretania's Cape",}
    -- sets.midcast['Enfeebling Magic']  = {}
    -- sets.midcast['Enhancing Magic']  = {}
    -- sets.midcast['Elemental Magic']  = {}
    --sets.midcast.magic = {}

    --------------------------------------
    -- Idle/resting/defense/etc sets
    --------------------------------------
    sets.aftercast = {}
    sets.aftercast.Idle = {}
    sets.aftercast.Idle[0]={        
        ammo="Staunch Tathlum +1",
        head="Wayfarer Circlet",
        body="Wayfarer Robe",
        hands="Wayfarer Cuffs",
        legs="Wayfarer Slops",
        feet="Wayfarer Clogs",
        neck="Twilight Torque",
        waist="Hierarch Belt",
        left_ear="Orison Earring",
        right_ear="Eabani Earring",
        left_ring="Stikini Ring +1",
        right_ring="Stikini Ring +1",
        back="Iximulew Cape",}

    sets.aftercast.Idle[1]={
        ammo="Staunch Thatlum +1",
        head="Wayfarer Circlet",
        body="Wayfarer Robe",
        hands="Wayfarer Cuffs",
        legs="Wayfarer Slops",
        --feet="Herald's Gaiters",
        feet="Wayfarer Clogs",
        neck="Twilight Torque",
        waist="Hierarch Belt",
        left_ear="Orison Earring",
        right_ear="Brachyura Earring",
        --left_ring="Roller's Ring",
        left_ring="Dimmensional ring (Holla)",
        right_ring="Warp Ring",
        back="Nexus Cape",}


    sets.aftercast.Weapon = {}   
    sets.aftercast.Weapon[0]={    -- Staff
        main="Numen Staff",
        sub="Irenic Strap",}       
    sets.aftercast.Weapon[1]={   -- Club2
        main="Raetic Rod +1",
        --main="Tefnut Wand",
        sub="Sors Shield",}    


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
    if string.find(spell.english,'Cur') then 
        equip(sets.midcast.cure)
    -- elseif spell.english == 'exact name' then
    --     equip(sets.midcast.magic)
    -- elseif spell.skill == 'Enfeebling Magic' then
    --     equip(sets.midcast['Enfeebling Magic'])
    -- elseif spell.skill == 'Enhancing Magic' then
    --     equip(sets.midcast['Enhancing Magic'])
    -- elseif spell.skill == 'Elemental Magic' then
    --     equip(sets.midcast['Elemental Magic'])
    elseif spell.skill then
        equip(sets.aftercast.Idle)
    end
end

-- function buff_change(name, gain, buff_details)
    -- if name == '<buffname>'
    -- then
    --     if gain
    --     then
    --         weapon_mode = 3
    --     else 
    --         weapon_mode = 1
    --     end
    --     equip(set_combine(sets.aftercast.Idle[gear_mode],sets.aftercast.Weapon[weapon_mode]))	
    --     switch_crossbar(weapon_mode)
    -- end
-- end

function aftercast(spell)
    equip(set_combine(sets.aftercast.Idle[gear_mode],sets.aftercast.Weapon[weapon_mode]))	
	switch_crossbar(weapon_mode)
end

-- function status_change(new_status, old_status)
--     if new_status == 'Idle' then
--         equip(  {feet="Herald's Gaiters"})0
--     elseif
--         new_status == 'Engaged' then
--         equip(sets.aftercast.Idle[gear_mode])
--     end
-- end
-------------------------------------------------------------------------------------------------------------------
-- Stances
-------------------------------------------------------------------------------------------------------------------
function self_command(command)
    if command:lower() == 'switchgear' then gear_mode = (gear_mode+1)%2 end
    if command:lower() == 'gear1' then gear_mode = 0 end
    if command:lower() == 'gear2' then gear_mode = 1 end
    if command:lower() == 'gear3' then gear_mode = 2 end
    if command:lower() == 'gear4' then gear_mode = 3 end
    equip(sets.aftercast.Idle[gear_mode])

    if command:lower() == 'switchweapon' then weapon_mode = (weapon_mode+1)%2 end
    if command:lower() == 'weapon1' then weapon_mode = 0 end
    if command:lower() == 'weapon2' then weapon_mode = 1 end
    if command:lower() == 'weapon3' then weapon_mode = 2 end
    if command:lower() == 'weapon4' then weapon_mode = 3 end
    equip(sets.aftercast.Weapon[weapon_mode])
	switch_crossbar(weapon_mode)	    
    
end

function switch_crossbar(mode)
--     if mode == 0 then
--         send_command('input //xivcrossbar set job-default 2 6 ws "Cataclysm" t "Cataclysm"')
--         send_command('input //xivcrossbar set job-default 2 7 ws "Earth Crusher" t "Earth Crusher"')
--         send_command('input //xivcrossbar set job-default 2 8 ws "Spirit Taker" t "Spirit Taker"')
--         send_command('input //xivcrossbar set job-default 2 5 ws "Retribution" t "Retribution"')
-- end


end
