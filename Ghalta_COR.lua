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
    sets.precast = {}
    --sets.precast['ws or ja'] = {}
    sets.precast.PhantomRoll = {
        range={ name="Compensator", augments={'DMG:+15','AGI+15','Rng.Acc.+15',}},
        head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
        hands="Navarch's gants +1",
        lft_ring="Luzaf's ring"
        right_ring="Barataria Ring",        
        neck="Regal necklace",
        back={ name="Camulus's Mantle", augments={'"Dbl.Atk."+10',}},
    }
    sets.precast.Fold = {hands="Lanun Gants +3"}
    sets.precast.FC = {}

    --------------------------------------
    -- Weaponskill sets
    --------------------------------------
    --WSD, PDL if ATK-Capped
    sets.precast.WSSingle = {
        back={ name="Camulus's Mantle", augments={'Weapon skill damage +10%',}},
    }   
    --PDL and Multi
    sets.precast.WSMulti = {
        back={ name="Camulus's Mantle", augments={'Weapon skill damage +10%',}},
    }  
    --sets.precast.['ws'] = set_combine(sets.precast.WSSingle, {})
    sets.precast['Last Stand'] = set_combine(sets.precast.WSSingle,{})

    --------------------------------------
    -- Midcast sets
    --------------------------------------
    sets.midcast = {}
    -- sets.midcast['Enfeebling Magic']  = {}
    -- sets.midcast['Enhancing Magic']  = {}
    -- sets.midcast['Elemental Magic']  = {}
    -- sets.midcast.magic = {}

    --------------------------------------
    -- Idle/resting/defense/etc sets
    --------------------------------------
    sets.aftercast = {}
    sets.aftercast.Idle = {}
   
    sets.aftercast.Idle[0]={
        head="Mummu Bonnet +1",
        body="Nisroch Jerkin",
        hands="Mummu Wrists +1",
        legs="Mummu Kecks +1",
        feet="Mummu Gamash. +1",
        neck="Iqabi Necklace",
        waist="Dynamic Belt",
        left_ear="Mache Earring",
        right_ear="Mache Earring",
        left_ring="Mummu Ring",
        right_ring="Barataria Ring",
        back={ name="Camulus's Mantle", augments={'"Dbl.Atk."+10',}},
        }
    sets.aftercast.Idle[1]={}

    sets.aftercast.Weapon = {}  
    
    sets.aftercast.Weapon[0]={ 
        main="Tokko Sword",
        range={ name="Compensator", augments={'DMG:+15','AGI+15','Rng.Acc.+15',}},
        ammo="Eminent Bullet",
        }
    sets.aftercast.Weapon[1]={
        main="Surcouf's Jambiya",
        range={ name="Compensator", augments={'DMG:+15','AGI+15','Rng.Acc.+15',}},
        ammo="Eminent Bullet",
        } 

end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------
function precast(spell)
    -- Job Ability-Boost
    if sets.precast[spell.english] then
        equip(sets.precast[spell.english])
    elseif (spell.type == 'CorsairRoll' or spell.english == "Double-Up") then 
            equip(sets.precast.PhantomRoll)
    elseif spell.english == 'Fold' and buffactive['Bust'] == 2 then 
        equip(sets.precast.Fold)       
    -- Fast Cast for Magic    
    elseif spell.action_type == 'Magic' then
            equip(sets.precast.FC)
    end
end

function midcast(spell)  
    -- if string.find(spell.english,'part of the name') then 
    --     equip(sets.midcast.magictypename)
    -- elseif spell.english == 'exact name' then
    --     equip(sets.midcast.magicname)
    -- elseif spell.skill == 'Enfeebling Magic' then
    --     equip(sets.midcast['Enfeebling Magic'])
    -- elseif spell.skill == 'Enhancing Magic' then
    --     equip(sets.midcast['Enhancing Magic'])
    -- elseif spell.skill == 'Elemental Magic' then
    --     equip(sets.midcast['Elemental Magic'])
    -- elseif spell.skill then
        equip(sets.aftercast.Idle)
    -- end
end

function buff_change(name, gain, buff_details)
    -- if name == '<buffname>'
    -- then
    --     if gain
    --     then
    --         weapon_mode = 1
    --         gear_mode = 1
    --     else 
    --         weapon_mode = 0
    --         gear_mode = 0
    --     end
    --     equip(set_combine(sets.aftercast.Idle[gear_mode],sets.aftercast.Weapon[weapon_mode]))	
    --     switch_crossbar(weapon_mode)
    -- end
end

function aftercast(spell)
    equip(set_combine(sets.aftercast.Idle[gear_mode],sets.aftercast.Weapon[weapon_mode]))	
	switch_crossbar(weapon_mode)
end

function status_change(new_status, old_status)
    --movementspeed  make modular?
    -- if new_status == 'Idle' then
    --     equip({legs="Carmine Cuisses +1"})
    -- elseif
    --     new_status == 'Engaged' then
    --     equip(sets.aftercast.Idle[gear_mode])
    -- end
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
    -- geardescription
    if gear_mode == 0 then
        gear_description = "TP-Build_____"
    elseif gear_mode == 1 then
        gear_description = "DamageTaken__"
    end

    if weapon_mode == 0 then
        weapon_description = "Sword"
    elseif weapon_mode == 1 then
        weapon_description = "Range"
    end
    send_command('input //text status text Gear:'..gear_description..' Weapon:'..weapon_description)
end
function switch_crossbar(mode)

    -- if mode == 0 then
    --     send_command('input //xivcrossbar set job-default 2 6 ws "Frostbite" t "Frostbite"')
    --     send_command('input //xivcrossbar set job-default 2 7 ws "Torcleaver" t "Torcleaver"')
    --     send_command('input //xivcrossbar set job-default 2 8 ws "Shockwave" t "Shockwave"')
    --     send_command('input //xivcrossbar set job-default 2 5 ws "Resolution" t "Resolution"')
    -- end

	-- if mode == 1 or mode == 99 then
    --     send_command('input //xivcrossbar set job-default 2 6 ws "Catastrophe" t "Catastrophe"')
    --     send_command('input //xivcrossbar set job-default 2 7 ws "Cross Reaper" t "Cross Reaper"')
    --     send_command('input //xivcrossbar set job-default 2 8 ws "Entropy" t "Entropy"')
    --     send_command('input //xivcrossbar set job-default 2 5 ws "Insurgency" t "Insurgency"')
    -- end
end
