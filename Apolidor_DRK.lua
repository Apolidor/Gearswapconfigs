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
	sets.precast.JA['Arcane Circle'] = {feet="Ignominy Sollerets +3"}
    sets.precast.JA['Nether Void'] = {legs="Heath. Flanchard +2"} -- legs="Heath. Flanchard +3" sortie
    sets.precast.JA['Last Resort'] = {feet="Fallen's sollerets",back="Ankou's Mantle"}
    sets.precast.JA['Weapon Bash'] = {hands="Ig. Gauntlets +3"} 
    sets.precast.JA['Dark Seal'] = {head={ name="Fallen's Burgeonet", augments={'Enhances "Dark Seal" effect',}}}  
	sets.precast.JA['Blood Weapon'] = {body={ name="Fall. Cuirass +3", augments={'Enhances "Blood Weapon" effect',}}}
    sets.precast.FC = {                     --63%
        ammo="Sapience Orb",                --2%    
		head={ name="Carmine Mask", augments={'Accuracy+15','Mag. Acc.+10','"Fast Cast"+3',}}, --12%
		--head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}}, --14%       abjuration  gil
		body={ name="Fall. Cuirass +3", augments={'Enhances "Blood Weapon" effect',}}, --10%
		hands="Leyline Gloves",        --5%
		--hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}}, --8%        sinister reign
        legs={ name="Eschite Cuisses", augments={'"Mag.Atk.Bns."+25','"Conserve MP"+6','"Fast Cast"+5',}},  --5%
		feet="Carmine Greaves +1", --8%
		--neck="Voltsurge Torque", --4%         HTNM
        right_ear="Malignance Earring",     --4%
        left_ear="Loquac. Earring",         --2%
        left_ring="Kishar Ring",            --4%
        right_ring="Naji's Loop",           --1%
        back={ name="Ankou's Mantle", augments={'"Fast Cast"+10',}}, --10%
    }
    sets.Impact = set_combine(sets.precast.FC, {head=empty,body={name="Twilight Cloak",mp=75}})

    --------------------------------------
    -- Weaponskill sets
    --------------------------------------
    --WSD, PDL if ATK-Capped
    sets.precast.WSSingle = {
        ammo="Knobkierrie",
        head={ name="Stinger Helm +1", augments={'Path: A',}},
        body="Ignominy Cuirass +3",
        hands="Sakpata's Gauntlets",
        legs={ name="Fall. Flanchard +3", augments={'Enhances "Muted Soul" effect',}},
        feet="Heathen's sollerets +2",
        -- feet="Heathen's sollerets +3",   sortie
        neck={ name="Abyssal Beads +1", augments={'Path: A',}},
        --neck={ name="Abyssal Beads +2", augments={'Path: A',}},       gil
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Thrud Earring",
        right_ear="Ishvara Earring",
        left_ring="Karieyh Ring",
		--left_ring="Epaminondas's Ring",       aman    gil     nyzulevent
        right_ring="Niqmaddu Ring",
        back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},}
    --PDL and Multi
    sets.precast.WSMulti = {
        ammo="Coiste Bodhar",
        head="Sakpata's Helm",
        body="Sakpata's Plate",
        hands="Sakpata's Gauntlets",
        legs="Sakpata's Cuisses",
        feet="Sakpata's Leggings",
        neck={ name="Abyssal Beads +1", augments={'Path: A',}},
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        right_ear={ name="Lugra Earring +1", augments={'Path: A',}},
        right_ring="Niqmaddu Ring",
        left_ring="Regal Ring",
        back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},}
    
    ---------Scythe------------
    --single    str40, int40    	2,75    2,75    2,75
    sets.precast['Catastrophe'] = set_combine(sets.precast.WSSingle, {})
    --double    str60, mnd60        2,0     4,0     7,0
    sets.precast['Cross Reaper'] = set_combine(sets.precast.WSSingle, {
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},})
    --fourfold  int73               0,75    1,25    2,0     ftp-replicating
    sets.precast['Entropy'] = set_combine(sets.precast.WSMulti, {
        neck="Fotia Gorget",
        waist="Fotia Belt",
        })
    --fourfold  str20, int20        0,5     3,25    6.0
    sets.precast['Insurgency'] = set_combine(sets.precast.WSMulti, {})
    --single    str60, mnd60        3,0     3,0     3,0
    sets.precast['Quietus'] = set_combine(sets.precast.WSSingle, {})
    --single    str100              1,0     1,0     1,0       
    sets.precast['Spinning Scythe'] = set_combine(sets.precast.WSSingle, {})
    -------Great Sword---------
    --single    str40, vit40        3,0     3,0     3,0
    sets.precast['Scourge'] = set_combine(sets.precast.WSSingle, {})
    --single    vit80               4,75    7,5     9,77
    sets.precast['Torcleaver'] = set_combine(sets.precast.WSSingle, {
        head="Nyame Helm",
        hands="Nyame Gauntlets",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        back={ name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%',}},
        --waist="Fotia Belt",
	    })
    --fivefold  str73               0,72    1,5     2,25    ftp-replicating
    sets.precast['Resolution'] = set_combine(sets.precast.WSMulti, {
        neck="Fotia Gorget",
        waist="Fotia Belt",
        })
    --single    str30, mnd30        1,0     1,0     1,0
    sets.precast['Shockwave'] = set_combine(sets.precast.WSSingle, {
        neck="Fotia Gorget",
        waist="Fotia Belt",})     
    -----------Sword-----------
    --double    str50, mnd50        4,0     10,25   13,75
    sets.precast['Savage Blade'] = set_combine(sets.precast.WSSingle, {
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        })
    --fivefold  mnd73               1,0     1,0     1,0     ftp-replicating
    sets.precast['Requiescat'] = set_combine(sets.precast.WSMulti, {
        neck="Fotia Gorget",
        waist="Fotia Belt",})
    --single    str100              1,0     1,0     1,0
    sets.precast['Circle Blade'] = set_combine(sets.precast.WSSingle, {})
    --single    mnd50, str30        2,75    2,75    2,75
    sets.precast['Sanguine Blade'] = set_combine(sets.precast.WSSingle, {
        head="Nyame Helm",
        body="Nyame Mail",
        hands="Nyame Gauntlets",
        legs="Nyame Flanchard",
        feet="Nyame Sollerets",
        neck="Sibyl scarf",
        -- waist="Orpheus Sash"       aman    gil     nyzulevent
        left_ear="Friomisi Earring",
        right_ear="Malignance Earring",
        right_ring="Metamorph Ring +1",
        })
    ------------Club-----------
    --single    str50, mnd50        3,5     8,75    12
    sets.precast['Judgment'] = set_combine(sets.precast.WSSingle, {
        neck="Fotia Gorget",
        waist="Fotia Belt",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        })
    ----------Hand2Hand-----------
    --8hits    str15, vit15         1,25    1,25    1,25
    sets.precast['Asuran Fists'] = set_combine(sets.precast.WSMulti, {
        left_ear="Thrud Earring",
        })
    sets.precast[''] = set_combine(sets.precast.WSSingle, {})
    ----------Great Axe-----------
    --fourfold  vit73               1,0     3,5     6,5
    sets.precast['Upheaval'] = set_combine(sets.precast.WSMulti, {})
    --single    str60               2,75    2,75    2,75
    sets.precast['Fell Cleave'] = set_combine(sets.precast.WSSingle, {})
    --single    str60, vit60        1,5     2,5     4,0
    sets.precast['Steel Cyclone'] = set_combine(sets.precast.WSSingle, {
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        })

    --------------------------------------
    -- Midcast sets
    --------------------------------------
    sets.midcast = {} 
    sets.midcast['Enfeebling Magic']  = { 
	    -- sub="Khonsu",        ambuscade   pulse
	    sub="Kaja Grip",
        ammo="Quartz Tathlum +1",
        head="Flam. Zucchetto +2",
        body="Flamma Korazin +2",
        hands="Ratri Gadlings",
        legs={ name="Fall. Flanchard +3", augments={'Enhances "Muted Soul" effect',}},
        feet="Flam. Gambieras +2",
        neck="Erra Pendant",
        waist="Eschan Stone",
        left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
        right_ear="Abyssal Earring",
        left_ring="Kishar Ring",
        right_ring="Stikini Ring +1",
        back="Chuparrosa Mantle",
        }
    sets.midcast.Drain = {
        main="Misanthropy",
	    -- sub="Khonsu",        ambuscade   pulse
		range="Ullr", 
	    sub="Kaja Grip",
        head={ name="Fallen's Burgeonet", augments={'Enhances "Dark Seal" effect',}},
        -- head={ name="Fallen's Burgeonet +3", augments={'Enhances "Dark Seal" effect',}},
        body={ name="Valorous Mail", augments={'"Drain" and "Aspir" potency +5','CHR+1','Quadruple Attack +2','Accuracy+13 Attack+13',}},
        -- ???body="Carm. Sc. Mail +1",       abjuration  gil
        hands={ name="Fall. Fin. Gaunt. +3", augments={'Enhances "Diabolic Eye" effect',}},
		legs="Fallen's Flanchard +3",
        feet="Ratri Sollerets",
		-- feet="Ratri Sollerets +1",       gil
        neck="Erra Pendant",
		waist="Austerity belt +1",
        left_ear="Mani Earring",
        -- right_ear="Hirudinea Earring",
		right_ear="Malignance Earring",
        left_ring="Excelsis Ring",
		-- left_ring="Archon Ring",     acrch dynamis lord
        right_ring="Evanescence Ring",
        back={ name="Niht Mantle", augments={'Attack+10','Dark magic skill +8','"Drain" and "Aspir" potency +22',}}
        }
    sets.midcast.Endark = {
        head="Ig. Burgeonet +3",
        body="Demon's Harness",
		--body="Carmine Scale Mail +1",       abjuration  gil
        hands={ name="Fall. Fin. Gaunt. +3", augments={'Enhances "Diabolic Eye" effect',}},
		legs="Heathen's flanchard +2",
        feet="Ratri Sollerets",
		--feet="Ratri Sollerets +1",        gil
        neck="Incanter's Torque",
        waist="Casso Sash",
        left_ear="Abyssal Earring",
        right_ear="Mani Earring",
        left_ring="Stikini Ring +1",
        right_ring="Evanescence Ring",
        back={ name="Niht Mantle", augments={'Attack+10','Dark magic skill +8','"Drain" and "Aspir" potency +22',}}
        }
    sets.midcast['Elemental Magic'] = {    
	    -- sub="Khonsu",        ambuscade   pulse
	    sub="Kaja Grip",
        ammo="Seething Bomblet +1",
        head={ name="Jumalik Helm", augments={'MND+10','"Mag.Atk.Bns."+15','Magic burst dmg.+10%','"Refresh"+1',}},
        body={ name="Fall. Cuirass +3", augments={'Enhances "Blood Weapon" effect',}},
        hands={ name="Fall. Fin. Gaunt. +3", augments={'Enhances "Diabolic Eye" effect',}},
        legs="Nyame Flanchard",
        feet="Nyame Sollerets",
        neck="Stoicheion Medal",
        waist="Eschan Stone",
        left_ear="Friomisi Earring",
        right_ear="Malignance Earring",
        left_ring="Stikini Ring +1",
        right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
        back="Merciful Cape",
        }
    sets.midcast.DreadSpikes = {
        ammo="Egoist's Tathlum",
        head="Ratri Sallet",
		--head="Ratri Sallet +1",       gil
        body="Heathen's Cuirass +2",
        hands="Ratri Gadlings",
		--hands="Ratri Gadlings +1",       gil
        legs="Ratri Cuisses",
		--legs="Ratri Cuisses +1",       gil
        feet="Ratri Sollerets",
		--feet="Ratri Sollerets +1",       gil
        waist="Eschan Stone",
        left_ear="Bloodgem Earring",
		--left_ear="Odnowa Earring +1",     UNM
        right_ear="Cassie Earring",
		--right_ear="Odnowa Earring",     UNM
        left_ring="Meridian Ring",
        right_ring="Bomb Queen Ring",
		--right_ring="Gelatinous Ring +1",     UNM
        }
    sets.midcast.Absorb = {   
	    -- sub="Khonsu",        ambuscade   pulse
		range="Ullr",
	    sub="Kaja Grip",
        head="Ig. Burgeonet +3",
        body="Nyame mail",
		--body="Carmine Scale Mail +1",       abjuration  gil
        hands="Pavor Gauntlets",
        legs={ name="Fall. Flanchard +3", augments={'Enhances "Muted Soul" effect',}},
        feet="Ratri Sollerets",
        --feet="Ratri Sollerets +1",       gil
        neck="Erra Pendant",
        waist="Eschan Stone",
        left_ear="Malignance Earring",
        right_ear="Mani Earring",
        left_ring="Kishar Ring",
        right_ring="Stikini Ring +1",
        back="Chuparrosa Mantle",
        }
    sets.midcast['Stun'] = {   
	    -- sub="Khonsu",        ambuscade   pulse
		range="Ullr",
	    sub="Kaja Grip",
        head={ name="Carmine Mask", augments={'Accuracy+15','Mag. Acc.+10','"Fast Cast"+3',}},
		--head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},       abjuration  gil
        body="Nyame mail",
        --body="Carmine Scale Mail +1",       abjuration  gil
        hands="Nyame Gauntlets",
        legs={ name="Fall. Flanchard +3", augments={'Enhances "Muted Soul" effect',}},
        feet="Nyame Sollerets",
        neck="Erra Pendant",
        waist="Eschan Stone",
        left_ear="Malignance Earring",
        right_ear="Mani Earring",
        left_ring="Kishar Ring",
        right_ring="Stikini Ring +1",
        back={ name="Niht Mantle", augments={'Attack+10','Dark magic skill +8','"Drain" and "Aspir" potency +22',}}
        }    
    sets.midcast.Impact = {
	    -- sub="Khonsu",        ambuscade   pulse
		range="Ullr",
	    sub="Kaja Grip",
        body="Twilight Cloak",
        hands={ name="Fall. Fin. Gaunt. +3", augments={'Enhances "Diabolic Eye" effect',}},
        legs={ name="Eschite Cuisses", augments={'"Mag.Atk.Bns."+25','"Conserve MP"+6','"Fast Cast"+5',}},
        feet="Heath. Sollerets +1",
        neck="Erra Pendant",
        waist="Eschan Stone",
        left_ear="Abyssal Earring",
        right_ear="Mani Earring",
        left_ring="Stikini Ring +1",
        right_ring="Stikini Ring +1",
        back={ name="Niht Mantle", augments={'Attack+10','Dark magic skill +8','"Drain" and "Aspir" potency +22',}}
        }


    --------------------------------------
    -- Idle/resting/defense/etc sets
    --------------------------------------
    sets.aftercast = {}
    sets.aftercast.Idle = {}
    sets.aftercast.Idle[0]={    --normal
        ammo="Coiste Bodhar",
        head="Flam. Zucchetto +2",
        --body={ name="Valorous Mail", augments={'"Drain" and "Aspir" potency +5','CHR+1','Quadruple Attack +2','Accuracy+13 Attack+13',}},
        body="Sakpata's Plate", 
        hands="Sakpata's Gauntlets",
        legs="Ig. Flanchard +3",
        feet="Flam. Gambieras +2",
        neck={ name="Abyssal Beads +1", augments={'Path: A',}},
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Cessance Earring",
        right_ear="Brutal Earring",
        left_ring="Petrov Ring",
        right_ring="Niqmaddu Ring",
        back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
        }

    sets.aftercast.Idle[1]={    --dt
        ammo="Coiste Bodhar",
        head="Sakpata's Helm",
        body="Sakpata's Plate",
        hands="Sakpata's Gauntlets",
        legs="Sakpata's Cuisses",
        feet="Sakpata's Leggings",
        neck={ name="Abyssal Beads +1", augments={'Path: A',}},
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Ethereal Earring",
        right_ear="Brutal Earring",
        right_ring="Defending Ring",
        back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
        }

    sets.aftercast.Idle[2]={    --subtle blow
        ammo="Coiste Bodhar",
        head="Sakpata's Helm",
        neck={"Bathy choker +1"},                                   --11
        --left_ear="Dignitary's earring",                           --5         reisenjima
        --right_ear="Schere Earring",                               --3
        left_ear="Cessance Earring",
        right_ear="Brutal Earring",
        body="Flamma Korazin +2",                                   --17
        --body="Dagon breastplate",                             --(2) 10        omen kin
        --body="Sulevia's Plate. +2", DT                            --5
        hands="Sakpata's Gauntlets",                                --8  
        right_ring="Niqmaddu Ring",                             --(2) 5
        left_ring="Chirich Ring +1",                                --10
        --back={ name="Ankou's Mantle", augments={'???,}},          --??
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        --waist="Peiste Belt +1,                                    --10
        legs="Sakpata's Cuisses",  
        --legs="Sulev. Cuisses +2",                                 --5
        feet="Sakpata's Leggings",
        --feet="Sulev. Leggings +2",                                --5
        }

    sets.aftercast.Idle[3]={    --acc
        ammo="Seething Bomblet +1",
        head="Flam. Zucchetto +2",
        body={ name="Valorous Mail", augments={'"Drain" and "Aspir" potency +5','CHR+1','Quadruple Attack +2','Accuracy+13 Attack+13',}},
        hands="Sulev. Gauntlets +2",
        legs="Ig. Flanchard +3",
        feet="Flam. Gambieras +2",
        neck={ name="Abyssal Beads +1", augments={'Path: A',}},
        waist="Wanion Belt",
        left_ear="Cessance Earring",
        right_ear="Abyssal Earring",
        left_ring="Flamma Ring",
        right_ring="Varar Ring +1",
        back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
        }
    
    sets.aftercast.Weapon = {}  
    
    sets.aftercast.Weapon[0]={  --gs
        main="Caladbolg",
        sub="Utu Grip"
        }    

    sets.aftercast.Weapon[1]={  --scythe
        main="Apocalypse",
        sub="Utu Grip"
        }     
    
    sets.aftercast.Weapon[2]={  --sword
        main="Naegling",
        sub="Blurred Shield +1"
        }
    
    sets.aftercast.Weapon[3]={  --Club
        main="Loxotic Mace +1",
        sub="Blurred Shield +1"
        }
    
    sets.aftercast.Weapon[4]={  --h2h
        main="Karambit",
        }
    
    sets.aftercast.Weapon[5]={  --ga
        main="Beheader",
        -- main="Lycurgos"              ambuscade   pulse
        sub="Utu Grip"
        }

    sets.aftercast.Weapon[99]={  --Soul Eater
        main="Agwu's Scythe",
        sub="Utu Grip",
        head="Ig. Burgeonet +3",
        }    
 
end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------
function precast(spell)
    if sets.precast.JA[spell.english] then
        equip(sets.precast.JA[spell.english])
    elseif sets.precast[spell.english] then
        equip(sets.precast[spell.english])
    elseif spell.english == 'Impact' then
        equip(sets.Impact)
    elseif spell.action_type == 'Magic' then
            equip(sets.precast.FC)
    end
end

function midcast(spell)    
    if string.find(spell.english,'Absorb') then 
        equip(sets.midcast.Absorb)
    elseif spell.english == 'Impact' then
        equip(sets.midcast.Impact)
    elseif spell.english == 'Dread Spikes' then
        equip(sets.midcast.DreadSpikes)
    elseif string.find(spell.english,'Drain') then
        equip(sets.midcast.Drain)
    elseif string.find(spell.english,'Endark') then
        equip(sets.midcast.Endark)
    elseif spell.skill == 'Elemental Magic' then
        equip(sets.midcast['Elemental Magic'])
    elseif spell.skill == "Enfeebling Magic" then
        equip(sets.midcast['Enfeebling Magic'])
    elseif spell.skill then
        equip(sets.aftercast.Idle)
    end
end

function buff_change(name, gain, buff_details)
    if name == 'Souleater'
    then
        if gain
        then
            weapon_mode = 99
        else 
            weapon_mode = 0
        end
        equip(set_combine(sets.aftercast.Idle[gear_mode],sets.aftercast.Weapon[weapon_mode]))	
        switch_crossbar(weapon_mode)
    end
end


function aftercast(spell)
    equip(set_combine(sets.aftercast.Idle[gear_mode],sets.aftercast.Weapon[weapon_mode]))	
	switch_crossbar(weapon_mode)
end

function status_change(new_status, old_status)
    if new_status == 'Idle' then
        equip({legs="Carmine Cuisses +1"})
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

    if command:lower() == 'switchweapon' then weapon_mode = (weapon_mode+1)%6 end

    equip(sets.aftercast.Weapon[weapon_mode])
    switch_statustext(gear_mode,weapon_mode)
	switch_crossbar(weapon_mode)	    
    
end

function switch_statustext(gear_mode,weapon_mode)
    if gear_mode == 0 then
        gear_description = "TP-Build_____"
    elseif gear_mode == 1 then
        gear_description = "DamageTaken__"
    elseif gear_mode == 2 then
        gear_description = "SubtleBlow___"
    end

    if weapon_mode == 0 then
        weapon_description = "GreatSword"
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

    if mode == 0 then
        send_command('input //xivcrossbar set job-default 2 6 ws "Frostbite" t "Frostbite"')
        send_command('input //xivcrossbar set job-default 2 7 ws "Torcleaver" t "Torcleaver"')
        send_command('input //xivcrossbar set job-default 2 8 ws "Shockwave" t "Shockwave"')
        send_command('input //xivcrossbar set job-default 2 5 ws "Resolution" t "Resolution"')
    end

	if mode == 1 or mode == 99 then
        send_command('input //xivcrossbar set job-default 2 6 ws "Catastrophe" t "Catastrophe"')
        send_command('input //xivcrossbar set job-default 2 7 ws "Cross Reaper" t "Cross Reaper"')
        send_command('input //xivcrossbar set job-default 2 8 ws "Entropy" t "Entropy"')
        send_command('input //xivcrossbar set job-default 2 5 ws "Insurgency" t "Insurgency"')
    end

    if mode == 2 then
        send_command('input //xivcrossbar set job-default 2 6 ws "Savage Blade" t "Savage Blade"')
        send_command('input //xivcrossbar set job-default 2 7 ws "Requiescat" t "Requiescat"')
        send_command('input //xivcrossbar set job-default 2 8 ws "Circle Blade" t "Circle Blade"')
        send_command('input //xivcrossbar set job-default 2 5 ws "Sanguine Blade" t "Sanguine Blade"')
    end

    if mode == 3 then
        send_command('input //xivcrossbar set job-default 2 6 ws "Judgment" t "Judgment"')
        send_command('input //xivcrossbar delete job-default 2 7')
        send_command('input //xivcrossbar delete job-default 2 8')
        send_command('input //xivcrossbar delete job-default 2 5')
    end    

    if mode == 4 then
        send_command('input //xivcrossbar set job-default 2 6 ws "Asuran Fists" t "Asuran Fists"')
        send_command('input //xivcrossbar delete job-default 2 7')
        send_command('input //xivcrossbar delete job-default 2 8')
        send_command('input //xivcrossbar delete job-default 2 5')
    end

    if mode == 5 then
        send_command('input //xivcrossbar set job-default 2 6 ws "Upheaval" t "Upheaval"')
        send_command('input //xivcrossbar set job-default 2 7 ws "Fell Cleave" t "Fell Cleave"')
        send_command('input //xivcrossbar set job-default 2 8 ws "Steel Cyclone" t "Steel Cyclone"')
        send_command('input //xivcrossbar delete job-default 2 5')
    end


end
