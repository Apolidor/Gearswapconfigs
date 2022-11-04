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
    sets.precast['Invincible'] = {legs="Caballarius breeches +3"} 
    sets.precast['Holy Circle'] = {legs="Reverence leggings +3"} 
    sets.precast["Shield Bash"] = {
        sub="Aegis",
        ear1="Knightly Earring",
        hands="Cab. Gauntlets +1",
        ring1="Fenian Ring"
        }
    sets.precast['Sentinel'] = {legs="Caballarius leggings +3"} 
    sets.precast['Cover'] = {
        head="Reverence Coronet +3",
        body="Caballarius surcoat +3",
        } 
    sets.precast['Chivalry'] = {hands="Caballarius gauntlets +3"} 
    sets.precast['Divine Emblem'] = {feet="Chevalier's sabatons +3"} 
    sets.precast.FC = {
        ammo="Sapience Orb",
		head={ name="Carmine Mask", augments={'Accuracy+15','Mag. Acc.+10','"Fast Cast"+3',}}, --12%
		--head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}}, --14%       abjuration  gil
		hands="Leyline Gloves",        --5%
		--hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}}, --8%        sinister reign
        legs={ name="Eschite Cuisses", augments={'"Mag.Atk.Bns."+25','"Conserve MP"+6','"Fast Cast"+5',}},  --5%
		feet="Carmine Greaves +1", --8%
        left_ear="Loquac. Earring",
        right_ear="Nourish. Earring +1",
        right_ring="Naji's Loop",
        left_ring="Kishar Ring",
        }

    --------------------------------------
    -- Weaponskill sets
    --------------------------------------
    --WSD, PDL if ATK-Capped
    sets.precast.WSSingle = {
        ammo="Knobkierrie",
        head={ name="Stinger Helm +1", augments={'Path: A',}},
        body="Sakpata's Plate",
        hands="Sakpata's Gauntlets",
        legs="Sakpata's Cuisses",
        feet="Sulev. Leggings +2",
        neck="Fotia Gorget",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Thrud Earring",
        right_ear="Ishvara Earring",
        left_ring="Karieyh Ring",
		--left_ring="Epaminondas's Ring",       aman    gil     nyzulevent
        right_ring="Niqmaddu Ring",
        back="Letalis Mantle",
        }
    --PDL and Multi
    sets.precast.WSMulti = {
        ammo="Coiste Bodhar",
        head="Sakpata's Helm",
        body="Sakpata's Plate",
        hands="Sakpata's Gauntlets",
        legs="Sakpata's Cuisses",
        feet="Sakpata's Leggings",
        neck="Fotia Gorget",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        right_ear="Ishvara Earring",
        right_ring="Niqmaddu Ring",
        left_ring="Regal Ring",
        back="Letalis Mantle",
        }
    --sets.precast.WS['ws'] = set_combine(sets.precast.WSSingle, {})
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
    --------------------------------------
    -- Midcast sets
    --------------------------------------
    sets.midcast = {}
    sets.midcast.Divine = {
        head={ name="Jumalik Helm", augments={'MND+10','"Mag.Atk.Bns."+15','Magic burst dmg.+10%','"Refresh"+1',}},
        body="Flamma Korazin +2",
        hands={ name="Eschite Gauntlets", augments={'Mag. Evasion+15','Spell interruption rate down +15%','Enmity+7',}},
        legs={ name="Eschite Cuisses", augments={'"Mag.Atk.Bns."+25','"Conserve MP"+6','"Fast Cast"+5',}},
        feet="Flam. Gambieras +2",
        neck="Stoicheion Medal",
        waist="Yamabuki-no-Obi",
        left_ear="Friomisi Earring",
        right_ear="Hecate's Earring",
        left_ring="Stikini Ring +1",
        right_ring="Stikini Ring +1",
        }
    sets.midcast.Cure = {
        ammo="Quartz Tathlum +1",
        head="Sakpata's Helm",
        body="Sakpata's Plate",
        hands={ name="Eschite Gauntlets", augments={'Mag. Evasion+15','Spell interruption rate down +15%','Enmity+7',}},
        legs={ name="Souveran Diechlings", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
        feet="Sakpata's Leggings",
        neck="Phalaina Locket",
        left_ear="Nourish. Earring +1",
        right_ear="Nourish. Earring",
        left_ring="Stikini Ring +1",
        right_ring="Naji's Loop",
        }
    
    
    sets.midcast['Rampart'] = {}    --legs="Caballarius breeches +3" 
    sets.midcast['Reprisal'] = {} 
    sets.midcast.Phalanx = {
        legs="Sakpata's Cuisses",
        }
    sets.midcast.Enhancing = {}
    sets.midcast['Flash'] = {} 
    -- sets.midcast['Enfeebling Magic']  = {}
    -- sets.midcast['Enhancing Magic']  = {}
    -- sets.midcast['Elemental Magic']  = {}
    -- sets.midcast.magic = {}

    --------------------------------------
    -- Idle/resting/defense/etc sets
    --------------------------------------
    sets.aftercast = {}
    sets.aftercast.Idle = {}
   
    sets.aftercast.Idle[0]={    --tp
        ammo="Aurgelmir Orb",
        head="Flam. Zucchetto +2",
        ammo="Coiste Bodhar",
        head="Flam. Zucchetto +2",
        body="Flamma Korazin +2",
        hands="Sulev. Gauntlets +2",
        legs="Sakpata's Cuisses",
        feet="Flam. Gambieras +2",
        neck="Asperity Necklace",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Brutal Earring",
        right_ear="Cessance Earring",
        left_ring="Rajas Ring",
        right_ring="Petrov Ring",
        back="Letalis Mantle",
        }
    sets.aftercast.Idle[1]={    --dt
        ammo="Aurgelmir Orb",
        head="Sakpata's Helm",
        body="Sakpata's Plate",
        hands="Sulev. Gauntlets +2",
        legs="Sakpata's Cuisses",
        feet="Sakpata's Leggings",
        neck="Asperity Necklace",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Cessance Earring",
        right_ear="Ethereal Earring",
        left_ring="Defending Ring",
        right_ring="Sulevia's Ring",
        back="Rudianos's Mantle",
        }
    sets.aftercast.Idle[2]={    --enmity
        ammo="Aurgelmir Orb",
        head="Flam. Zucchetto +2",
        ammo="Coiste Bodhar",
        head="Flam. Zucchetto +2",
        body="Flamma Korazin +2",
        hands="Sulev. Gauntlets +2",
        legs="Sakpata's Cuisses",
        feet="Flam. Gambieras +2",
        neck="Asperity Necklace",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Brutal Earring",
        right_ear="Cessance Earring",
        left_ring="Rajas Ring",
        right_ring="Petrov Ring",
        back="Letalis Mantle",
        }

    sets.aftercast.Weapon = {}  
    
    sets.aftercast.Weapon[0]={}
    sets.aftercast.Weapon[1]={} 

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
    if string.find(spell.english,'Holy') or string.find(spell.english,'Banish') then 
        equip(sets.midcast.Divine)
    elseif string.find(spell.english,'Cure') then 
       equip(sets.midcast.Cure) 
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
    end
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
        weapon_description = "subweaponset"
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
