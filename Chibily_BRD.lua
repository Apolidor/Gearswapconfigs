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
        main={ name="Kali", augments={'Mag. Acc.+15','String instrument skill +10','Wind instrument skill +10',}},
        sub="genbu's shield",
        head="Fili Calot +2",
        -- head="Fili Calot +3",
        body="Inyanga Jubbah +2",
        hands="Gendewitha Gages",
        -- hands="Gendewitha Gages +1",
        legs="Ayanmo Cosciales +2",
        feet="Fili Cothurnes +2",
        -- feet="Fili Cothurnes +3",
        neck="Twilight Torque",
        waist="Embla Sash",
        left_ear="Loquac. Earring",
        right_ear="fili earring",
        right_ring="Kishar Ring",
        back="Intarabus's Cape"
    }

    --------------------------------------
    -- Weaponskill sets
    --------------------------------------
    -- default set
    sets.precast.WS = {}        
    --sets.precast.WS['ws'] = set_combine(sets.precast.WS, {})

    --------------------------------------
    -- Midcast sets
    --------------------------------------
    sets.midcast = {}
    -- sets.midcast['Enfeebling Magic']  = {}
    -- sets.midcast['Enhancing Magic']  = {}
    -- sets.midcast['Elemental Magic']  = {}
    --sets.midcast.magic = {}
    sets.midcast.songsetup = {
        main={ name="Kali", augments={'Mag. Acc.+15','String instrument skill +10','Wind instrument skill +10',}},
        sub="Legato Dagger",
        range="Terpander",
        -- range="Daurdabla",
        body="Fili Hongreline +2",
        legs="Inyanga Shalwar +2",
        neck="Moonbow Whistle +1",
        left_ring="Stikini Ring",
        right_ring="Stikini Ring",
        }
    sets.midcast.songbuff = {
        main={ name="Kali", augments={'Mag. Acc.+15','String instrument skill +10','Wind instrument skill +10',}},
        -- main="Carnwenhan"
        sub="Legato Dagger",
        range="Gjallarhorn",
        head="Fili Calot +2",
        -- head="Fili Calot +3",
        body="Fili Hongreline +2",
        -- body="Fili Hongreline +3",
        hands="Fili Manchettes +2",
        -- hands="Fili Manchettes +3",
        legs="Inyanga Shalwar +2",
        feet="Brioso Slippers +4",
        neck="Moonbow Whistle +1",
        }

    sets.midcast.minuet = set_combine(sets.midcast.songbuff,{
        body="Fili Hongreline +2",
        -- body="Fili Hongreline +3",
    })
    
    sets.midcast.march = set_combine(sets.midcast.songbuff,{
        hands="Fili Manchettes +2",
        -- hands="Fili Manchettes +3",
    })

    --------------------------------------
    -- Idle/resting/defense/etc sets
    --------------------------------------
    sets.aftercast = {}
    sets.aftercast.Idle = {}
    sets.aftercast.Weapon = {}  
    
    -- gear_mode
    sets.aftercast.Idle[0]={
        ammo="Jukukik Feather",
        head="Fili Calot +2",
        -- head="Fili Calot +3",
        body="Fili Hongreline +2",
        -- body="Fili Hongreline +3",
        hands="Fili Manchettes +2",
        -- hands="Fili Manchettes +3",
        legs="Fili Rhingrave +2",
        -- legs="Fili Rhingrave +3",
        feet="Fili Cothurnes +2",
        -- feet="Fili Cothurnes +3",
        neck="Twilight Torque",
        waist="Anguinus Belt",
        left_ear="Cessance Earring",
        right_ear="Brutal Earring",
        left_ring="Petrov Ring",
        right_ring="Rajas Ring",
        back="Atheling Mantle",
        }
    sets.aftercast.Idle[1]={}

    -- weapon_mode        
    sets.aftercast.Weapon[0]={
        main="Naegling",
        sub="Genbu's Shield",
        }       
    sets.aftercast.Weapon[1]={}    

    songsetup = false
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
    if spell.type == 'BardSong' then  
        if spell.english == "Army's Paeon" then
            equip(sets.midcast.songsetup)
        elseif spell.english == "Army's Paeon II" then
            equip(sets.midcast.songsetup)
        else
            equip(sets.midcast.songbuff)
        end

        if string.find(spell.english,'Minuet') then 
            equip(sets.midcast.minuet)
        elseif string.find(spell.english,'March') then
            equip(sets.midcast.march)
        end
    
        
        
    end
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
    equip(set_combine(sets.aftercast.Idle[gear_mode],sets.aftercast.Weapon[weapon_mode]))	
	switch_crossbar(weapon_mode)
end

function status_change(new_status, old_status)
    if new_status == 'Idle' then
        equip({feet="Fili Cothurnes +2"})
        -- equip({feet="Fili Cothurnes +3"})
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

    if command:lower() == 'switchweapon' then weapon_mode = (weapon_mode+1)%1 end

    equip(sets.aftercast.Weapon[weapon_mode])
    switch_statustext(gear_mode,weapon_mode)
	switch_crossbar(weapon_mode)	
end

function switch_statustext(gear_mode,weapon_mode)
    if gear_mode == 0 then
        gear_description = "TP___________"
    elseif gear_mode == 1 then
        gear_description = "TP-HighATK___"
    elseif gear_mode == 2 then
        gear_description = "TP-Build_____"
    elseif gear_mode == 3 then
        gear_description = "SubtleBlow___"
    end

    if weapon_mode == 0 then
        weapon_description = "Sword"
    elseif weapon_mode == 1 then
        weapon_description = "Scythe"
    elseif weapon_mode == 2 then
        weapon_description = "Sword"
    elseif weapon_mode == 3 then
        weapon_description = "Club"
    elseif weapon_mode == 4 then
        weapon_description = "Hand2Hand"
    elseif weapon_mode == 5 then
        weapon_description = "Great Axe"
    end
    send_command('input //text status text Gear:'..gear_description..' Weapon:'..weapon_description)
end

function switch_crossbar(mode)
    -- if mode == 0 then
    --     send_command('input //xivcrossbar set job-default 2 6 ws "Savage Blade" t "Savage Blade"')
    --     send_command('input //xivcrossbar set job-default 2 7 ws "Requiescat" t "Requiescat"')
    --     send_command('input //xivcrossbar set job-default 2 8 ws "Circle Blade" t "Circle Blade"')
    --     send_command('input //xivcrossbar set job-default 2 5 ws "Sanguine Blade" t "Sanguine Blade"')
    -- end
end