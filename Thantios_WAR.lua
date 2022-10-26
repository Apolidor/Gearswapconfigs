include('organizer-lib')

function get_sets()
    --------------------------------------
    -- Variables
    --------------------------------------
    gear_mode = 0
    weapon_mode = 0

    --------------------------------------
    -- Reforged Gear
    --------------------------------------
	--sets.af = {}
    --sets.af.head = "Pummeler's Mask +2"
	--sets.af.body = "Pummeler's Lorica +2"
	--sets.af.hands = "Fighter's Mufflers"         
	--sets.af.legs = "Pummeler's Cuisses +2"
	--sets.af.feet = "Pummeler's Calligae +2" 
	
	
	--sets.relic = {}
    --sets.relic.head = "Agoge Mask +3"             Windurst    x     
	--sets.relic.body = "Agoge Lorica +3"           All         
	--sets.relic.hands = "Agoge Mufflers +3"        Bastok      
	--sets.relic.legs = "Agoge Cuisses +3"          Jeuno       x
	--sets.relic.feet = "Agoge Calligae +3"         San d'Oria  x
	
	--sets.empy = {}
    --sets.empy.head = "Boii Mask +2"   -- to do
	--sets.empy.body = "Boii Lorica +2"
	--sets.empy.hands = "Boii Mufflers +2"
	--sets.empy.legs = "Boii Cuisses +2" 
	--sets.empy.feet = "Boii Calligae +2" --gets usefull with plus 2/3




    --------------------------------------
    -- Precast sets
    --------------------------------------
    sets.precast = {}
    sets.precast.JA = {}
	sets.precast.JA['Beserk'] = {feet="Agoge Calligae +3",body="Pummeler's Lorica +2",back="Cichol's Mantle",main="Instigator"}
    sets.precast.JA['Blood Rage'] = {body="Boii Lorica +2"}
    sets.precast.JA['Warcry'] = {head="Agoge Mask +3"}
    sets.precast.JA['Aggressor'] = {body="Agoge Lorica +3",head="Pummeler's Mask +2",main="Instigator"}
    sets.precast.JA['Mighty Strikes'] = {hands="Agoge Mufflers +3"} 
    sets.precast.JA['Restraint'] = {hands="Boii Mufflers +2"} 
	sets.precast.JA['Retaliation'] = {hands="Fighter's Mufflers",feet="Boii Calligae +2"}
    sets.precast.JA['Defender'] = {hands="Agoge Mufflers +3"}
    sets.precast.FC = {}
    

    --------------------------------------
    -- Weaponskill sets
    --------------------------------------
    --WSD, PDL if ATK-Capped
    sets.precast.WSSingle = {
        ammo="Oshasha's Treatise",
        head="Agoge Mask +3",
        body="Pummeler's Lorica +2",
        hands="Nyame Gauntlets",
        legs="Nymae Flanchard",
        feet="Sulev. Leggings +2",
        neck="War. Beads +2",
        waist="Sailfi Belt +1",
        left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        right_ear="Thrud Earring",
        left_ring="Rajas Ring",
        right_ring="Karieyh Ring",
        back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},}
    --PDL and Multi
    sets.precast.WSMulti = {
        ammo="Oshasha's Treatise",
        head="Agoge Mask +3",
        body="Pummeler's Lorica +2",
        hands="Nyame Gauntlets",
        legs="Sakpata's Cuisses",
        feet="Sulev. Leggings +2",
        neck="War. Beads +2",
        waist="Sailfi Belt +1",
        left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        right_ear="Thrud Earring",
        left_ring="Rajas Ring",
        right_ring="Karieyh Ring",
        back={ name="Cichol's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%',}},}
    

    --single    str40, int40    	2,75    2,75    2,75
    sets.precast['Upheaval'] = set_combine(sets.precast.WSMulti, {})
    --double    str60, mnd60        2,0     4,0     7,0
    sets.precast['Fell Cleave'] = set_combine(sets.precast.WSSingle, {})
    --fourfold  int73               0,75    1,25    2,0     ftp-replicating
    sets.precast['Steel Cyclone'] = set_combine(sets.precast.WSSingle, {})
    --fivefold  str73               0,72    1,5     2,25    ftp-replicating
    sets.precast['Resolution'] = set_combine(sets.precast.WSMulti, {
        neck="Fotia Gorget",
        waist="Fotia Belt",
        })
    --single    str30, mnd30        1,0     1,0     1,0
    sets.precast['Shockwave'] = set_combine(sets.precast.WSSingle, {
        neck="Fotia Gorget",
        waist="Fotia Belt",})
    --double    str50, mnd50        4,0     10,25   13,75
    sets.precast['Savage Blade'] = set_combine(sets.precast.WSSingle, {
        left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        })
    --fivefold  mnd73               1,0     1,0     1,0     ftp-replicating
    sets.precast['Requiescat'] = set_combine(sets.precast.WSMulti, {
        neck="Fotia Gorget",
        waist="Fotia Belt",})
    --single    str100              1,0     1,0     1,0
    sets.precast['Circle Blade'] = set_combine(sets.precast.WSSingle, {})

    --------------------------------------
    -- Midcast sets
    --------------------------------------
    sets.midcast = {} 
    sets.midcast = {}
    

    --------------------------------------
    -- Idle/resting/defense/etc sets
    --------------------------------------
    sets.aftercast = {}
    sets.aftercast.Idle = {}
    sets.aftercast.Idle[0]={    --normal
        ammo="Coiste Bodhar",
        head="Flam. Zucchetto +2",
        body="Sakpata's Plate",
        hands="Sakpata's Gauntlets",
        legs="Pummeler's Cuisses +2",
        feet="Pummeler's Calligae +2",
        neck="War. Beads +2",
        waist="Ioskeha Belt +1",
        left_ear="Cessance Earring",
        right_ear="Schere Earring",
        left_ring="Rajas Ring",
        right_ring="Petrov Ring",
        back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
        }

    sets.aftercast.Idle[1]={    --dt
        ammo="Hasty Pinion +1",
        head="Sakpata's Helm",
        body="Sakpata's Plate",
        hands="Sakpata's Gauntlets",
        legs="Sakpata's Cuisses",
        feet="Sakpata's Leggings",
        neck="Twilight Torque",
        waist="Nierenschutz",
        left_ear="Cessance Earring",
        right_ear="Brutal Earring",
        left_ring="Sulevia's Ring",
        right_ring="Shadow Ring",
        back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},}

    sets.aftercast.Idle[2]={}

    sets.aftercast.Idle[3]={}
    
    sets.aftercast.Weapon = {}      
    sets.aftercast.Weapon[0]={  --greataxe
        main="Devivifier",
        sub="Utu Grip"
        }    
    
    sets.aftercast.Weapon[1]={  --GS
        main="Ragnarok",
        sub="Utu Grip"
        }    
    
    sets.aftercast.Weapon[2]={  --sword
        main="Naegling",
        sub="Blurred Shield +1"
        }
    sets.aftercast.Weapon[3]={  --Crit
        main="Naegling",
        sub="Voluspa Knife",
        }    
 
end

-- function create_text_gearset()
--     windower.text.create(gearset)
--     windower.text.set_location(gearset, 250, 250)
--     windower.text.set_text(gearset, test)
--     windower.text.set_bg_visibility(gearset, true)
--     windower.text.set_bg_color(gearset, 125, 125, 125, 125)
-- end

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
            weapon_mode = 3
        else 
            weapon_mode = 1
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
        equip(  {feet="Hermes' Sandals"})

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
    if command:lower() == 'gear3' then gear_mode = 2 end
    if command:lower() == 'gear4' then gear_mode = 3 end
    equip(sets.aftercast.Idle[gear_mode])

    if command:lower() == 'switchweapon' then weapon_mode = (weapon_mode+1)%4 end
    if command:lower() == 'weapon1' then weapon_mode = 0 end
    if command:lower() == 'weapon2' then weapon_mode = 1 end
    if command:lower() == 'weapon3' then weapon_mode = 2 end
    if command:lower() == 'weapon4' then weapon_mode = 3 end
    equip(sets.aftercast.Weapon[weapon_mode])
	switch_crossbar(weapon_mode)	    
    
end

function switch_crossbar(mode)
	if mode == 0 then
        send_command('input //xivcrossbar set job-default 2 6 ws "Upheaval" t "Upheaval"')
        send_command('input //xivcrossbar set job-default 2 7 ws "Ukko&apos;s Fury" t "Ukko s Fury"')
        send_command('input //xivcrossbar set job-default 2 8 ws "Fell Cleave" t "Fell Cleave"')
        send_command('input //xivcrossbar set job-default 2 5 ws "Steel Cyclone" t "Steel Cyclone"')
    end

    if mode == 1 then
        send_command('input //xivcrossbar set job-default 2 6 ws "Scourge" t "Scourge"')
        send_command('input //xivcrossbar set job-default 2 7 ws "Resolution" t "Resolution"')
        send_command('input //xivcrossbar set job-default 2 8 ws "Shockwave" t "Shockwave"')
        send_command('input //xivcrossbar set job-default 2 5 ws "Herculean Slash" t "Herculean Slash"')
    end

    if mode == 2 or mode == 3 then
        send_command('input //xivcrossbar set job-default 2 6 ws "Savage Blade" t "Savage Blade"')
        send_command('input //xivcrossbar set job-default 2 7 ws "Requiescat" t "Requiescat"')
        send_command('input //xivcrossbar set job-default 2 8 ws "Spirits Within" t "Spirits Within"')
        send_command('input //xivcrossbar set job-default 2 5 ws "Sanguine Blade" t "Sanguine Blade"')
    end


end
