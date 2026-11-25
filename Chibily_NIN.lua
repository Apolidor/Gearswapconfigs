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
    sets.precast.Utsusemi = {    
        ammo="Impatiens",
        body="Mochi. Chainmail",
        neck="Magoraga Beads",
        left_ear="Loquac. Earring",
        left_ring="Kishar Ring",
    }
    sets.precast.FC = {}

    --------------------------------------
    -- Weaponskill sets
    --------------------------------------
    -- default set
    --WSD, PDL if ATK-Capped
    sets.precast.WSSingle = {
        head="Hachiya Hatsuburi +2",
        left_ear="Ishvara Earring",
        right_ear="Hattori Earring",
        back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}},
}
    --PDL and Multi
    sets.precast.WSMulti = {
        left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    }  
    --sets.precast.['ws'] = set_combine(sets.precast.WSSingle, {})
    sets.precast['Savage Blade'] = set_combine(sets.precast.WSSingle, {
        left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    })

    --------------------------------------
    -- Midcast sets
    --------------------------------------
    sets.midcast = {}
    -- sets.midcast['Enfeebling Magic']  = {}
    -- sets.midcast['Enhancing Magic']  = {}
    -- sets.midcast['Elemental Magic']  = {}
    -- sets.midcast.magic = {}
    sets.midcast.Utsusemi = {
        feet="Hattori Kyahan",
        back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

    --------------------------------------
    -- Idle/resting/defense/etc sets
    --------------------------------------
    sets.aftercast = {}
    sets.aftercast.Idle = {}
    sets.aftercast.Weapon = {}  
    
    -- gear_mode
    sets.aftercast.Idle[0]={
        ammo="Seething Bomblet +1",
        head="Ken. Jinpachi +1",
        body="Ken. Samue +1",
        hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs="Mummu Kecks +2",
        feet="Ken. Sune-Ate +1",
        neck="Moonbeam Nodowa",
        waist="Anguinus Belt",
        left_ear="Cessance Earring",
        right_ear="Brutal Earring",
        left_ring="Epona's Ring",
        right_ring="Petrov Ring",
        back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','PhysicalDamage taken-10%'}},
    }
    sets.aftercast.Idle[1]={}

    -- weapon_mode        
    sets.aftercast.Weapon[0]={
        main="Kikoku",
        sub="Raicho +1",
        }       
    sets.aftercast.Weapon[1]={
        main="Naegling",
        sub="Raicho +1",
    }    

end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------
function precast(spell)
    -- Job Ability-Boost
    if sets.precast[spell.english] then
        equip(sets.precast[spell.english])
    elseif string.find(spell.english,'Utsusemi') then 
        equip(sets.precast.Utsusemi)
    -- Fast Cast for Magic    
    elseif spell.action_type == 'Magic' then
            equip(sets.precast.FC)
    end
end

function midcast(spell) 
    -- Magic-Boost  
    if string.find(spell.english,'Utsusemi') then 
        equip(sets.midcast.Utsusemi)
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
    elseif spell.skill then
        equip(sets.aftercast.Idle)
    end
end

function aftercast(spell)
    equip(set_combine(sets.aftercast.Idle[gear_mode],sets.aftercast.Weapon[weapon_mode]))	
	switch_crossbar(weapon_mode)
end

function status_change(new_status, old_status)
    if new_status == 'Idle' then
        equip({feet="Danzo Sune-Ate"})
    elseif
        new_status == 'Engaged' then
        equip(sets.aftercast.Idle[gear_mode])
    end
end

-------------------------------------------------------------------------------------------------------------------
-- Stances
-------------------------------------------------------------------------------------------------------------------
function self_command(command)
    if command:lower() == 'switchgear' then gear_mode = (gear_mode+1)%1 end
    equip(sets.aftercast.Idle[gear_mode])

    if command:lower() == 'switchweapon' then weapon_mode = (weapon_mode+1)%2 end

    equip(sets.aftercast.Weapon[weapon_mode])
    switch_statustext(gear_mode,weapon_mode)
	switch_crossbar(weapon_mode)	
end

function switch_statustext(gear_mode,weapon_mode)
    if gear_mode == 0 then
        gear_description = "TP___________"
    elseif gear_mode == 1 then
        gear_description = "TP-HighATK___"
    end

    if weapon_mode == 0 then
        weapon_description = "Katana"
    elseif weapon_mode == 1 then
        weapon_description = "Sword"
    end
    send_command('input //text status text Gear:'..gear_description..' Weapon:'..weapon_description)
end

function switch_crossbar(mode)
    if mode == 0 then
        send_command('input //xivcrossbar set job-default 2 6 ws "Blade: Hi" t "Blade: Hi"')
        send_command('input //xivcrossbar set job-default 2 7 ws "Blade: Metsu" t "Blade: Metsu"')
        send_command('input //xivcrossbar set job-default 2 8 ws "Blade: Shun" t "Blade: Shun"')
        send_command('input //xivcrossbar set job-default 2 5 ws "Blade: Chi" t "Blade: Chi"')
    end
    if mode == 1 then
        send_command('input //xivcrossbar set job-default 2 6 ws "Savage Blade" t "Savage Blade"')
        send_command('input //xivcrossbar set job-default 2 7 ws "Flat Blade" t "Flat Blade"')
        send_command('input //xivcrossbar set job-default 2 8 ws "Circle Blade" t "Circle Blade"')
        send_command('input //xivcrossbar set job-default 2 5 ws "Sanguine Blade" t "Sanguine Blade"')
    end
end