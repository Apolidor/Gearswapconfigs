include('organizer-lib')

function get_sets()
    --------------------------------------
    -- Variables
    --------------------------------------
    gear_mode = 0
    weapon_mode = 0
    durationspells = Set { 
        -- enhancing spells
        "Haste","Haste II",
        "Flurry","Flurry II",
        "Phalanx","Phalanx II",
        "Refresh","Refresh II","Refresh III",
        "Regen","Regen II",
        "Protect","Protect II","Protect III","Protect IV","Protect V",
        "Shell","Shell II","Shell III","Shell IV","Shell V",
        "Baramnesia","Barpetrify","Barvirus","Barsilence","Barblind","Barparalyze","Barpoison","Barsleep",
        "Barfire","Barblizzard","Baraero","Barstone","Barthunder","Barwater",
        "Blaze Spikes","Ice Spikes","Shock Spikes",
        "Sneak","Invisible","Deodorize",
        "Blink","Aquaveil",
        -- enfeebling spells
        "Dia","Dia II","Dia III",
        "Bio","Bio II","Bio III",
        "Gravity","Gravity II",
        "Slow","Slow II",
        "Paralyze","Paralyze II",
        "Blind","Blind II",
        "Sleep","Sleep II",
        "Silence",
        "Break",
        "Inundation",
        "Bind"
    }
    accuracyspells = Set {"Frazzle II","Stun","Dispel"}
    maxskillspells = {"Frazzle III","Distract III"}

    --------------------------------------
    -- Precast sets
    --------------------------------------
    sets.precast = {}
    sets.precast.JA = {}
    --sets.precast.JA['ja'] = {}
    sets.precast.FC = {                 --61%   75%
        -- sub="Sakpata's Sword"           --10%       gil
        ammo="Sapience Orb",            --2%
        head="Atrophy Chapeau +1",      --12%
        -- head="Atrophy Chapeau +3",      --16%
        body="Vitiation Tabard +3",       --16%
        hands="Leyline Gloves",          --5%
        legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},                                         --7%
        feet="Carmine greaves +1",       --8%
        neck="Stoicheion Medal",        --3% elem.
        right_ear="Malignance Earring", --4%
        left_ear="Loquac. Earring",     --2%
        left_ring="Kishar Ring",        --4%
        right_ring="Naji's Loop",       --1%
    }

    --------------------------------------
    -- Weaponskill sets
    --------------------------------------
    -- default set
    sets.precast.WS = {       
        ammo="Oshasha's Treatise",
        head="Vitiation Chapeau +3",
        body="Nyame Mail",
        hands="Jhakri Cuffs +2",
        legs="Nyame Flanchard",
        feet="Lethargy Houseaux +2",
        -- feet="Nyame Sollerets",      odyssey 
        neck="Fotia Gorget",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        right_ear="Ishvara Earring",
        left_ring="Rufescent Ring",
        -- left_ring="Epaminondas Ring",       aman    gil     nyzulevent
        right_ring="Karieyh Ring",
        back="Letalis Mantle",
        -- back="Sucellos's Cape",          jse
    }        
    sets.precast['Savage Blade'] = set_combine(sets.precast.WS, {})
    sets.precast['Sanguine Blade'] = set_combine(sets.precast.WS, {})
    sets.precast['Requiescat'] = set_combine(sets.precast.WS, {})
    sets.precast['Chant du Cygne'] = set_combine(sets.precast.WS, {})
    sets.precast['Aeolin Edge'] = set_combine(sets.precast.WS, {})
    sets.precast['Black Halo'] = set_combine(sets.precast.WS, {})
    sets.precast['Death Blossom'] = set_combine(sets.precast.WS, {})
    sets.precast['Red Lotus Blade'] = set_combine(sets.precast.WS, {})
    sets.precast['Seraph Blade'] = set_combine(sets.precast.WS, {})

    --------------------------------------
    -- Midcast sets
    --------------------------------------
    sets.midcast = {}
    sets.midcast.enhancingskill  = {
        main="Pukulatmuj +1",
        sub="Secespita",
        ammo="Staunch Tathlum",
        --ammo="Staunch Tathlum +1",        gil
        head="Umuthi Hat",
        --head="Befouled Crown"             vagary  plouton
        body="Vitiation Tabard +3",
        hands="Vitiation Gloves +3",
        legs="Atrophy Tights +1",
        --legs="Atrophy Tights +3",
        feet="Lethargy Houseaux +2",
        waist="Olympus Sash",
        neck="Incanter's Torque",
        left_ear="Andoaa Earring",
        right_ear="Mimir Earring",
        left_ring="Stikini Ring +1",
        right_ring="Stikini Ring +1",
        back="Sucellos's Cape",
        --back="Ghostfyre Cape",   --Enhancing magic skill +10/Enhancing magic duration +20         reive
        }

    sets.midcast.enhancingduration  = set_combine(sets.midcast.enhancingskill, {
        main="Colada",            
        sub="Ammurapi shield",
        head="Telchine cap",
        body="Vitiation Tabard +3",
        hands="Atrophy Gloves +2",
        --hands="Atrophy Gloves +3"
        legs="Telchine Braconi",    --+7% Enhancing magic duration  dusk
        -- legs="Telchine Braconi", --+10% Enhancing magic duration  dusk       gil
        feet="Lethargy Houseaux +2",
        waist="Embla Sash",
        neck="Duelist's torque +1",
        --neck="Duelist's torque +2",           gil
        right_ear="Lethargy Earring +1",
        --right_ear="Lethargy Earring +2",      sortie
        })

    sets.midcast.enhancingdurationother  = set_combine(sets.midcast.enhancingduration, {
        head="Lethargy Chappel +2",
        body="Lethargy Sayon +2",
        hands="Atrophy Gloves +2",
        --hands="Atrophy Gloves +3"
        legs="Lethargy Fuseau +2",
        feet="Lethargy Houseaux +2",
        })
            
    sets.midcast.nuke  = {
        main="Bunzi's Rod",
        -- main="Bunzi's Rod",             --augmented
        sub="Daybreak",
        ammo="Ghastly tathlum +1",
        -- ammo="Ghastly tathlum +1",       --lustreless hide
        head="Lethargy Chappel +2",
        body="Lethargy Sayon +2",
        -- body="Amalric doublet +1",       abjuration  gil
        hands="Lethargy gantherots +2",
        -- hands="Amalric Gages +1",       abjuration  gil
        legs="Lethargy Fuseau +2",
        -- legs="Amalric Slops +1",       abjuration  gil
        feet="Lethargy Houseaux +2",
        -- feet="Amalric Nails +1",       abjuration  gil
        neck="Sibyl Scarf",
        waist="Refoccilation Stone",
        -- waist="Sacro Cord",          HTNM
        left_ear="Malignance Earring",
        right_ear="Regal Earring",
        left_ring="Locus Ring",
        -- left_ring="Freke Ring",      HTNM
        right_ring={ name="Metamor. Ring +1", augments={'Path: A',}}, 
        -- right_ring={ name="Metamor. Ring +1", augments={'Path: A',}}, --lustreless scale
        back="Sucellos's Cape", 
        -- back="Sucellos's Cape", --ambuscade
        }
        
    sets.midcast.burst  = {
        main="Bunzi's Rod",
        -- main="Bunzi's Rod",             --augmented
        sub="Daybreak",
        ammo="Ghastly tathlum +1",
        -- ammo="Ghastly tathlum +1",       --augmented
        head="Bunzi's Hat",
        -- head="Ea hat +1",       abjuration  gil
        body="Bunzi's Robe",
        -- body="Ea Houppe. +1",       abjuration  gil
        hands="Bunzi's Gloves",
        -- hands="Amalric Gages +1",       abjuration  gil
        legs="Lethargy fuseau +2",
        -- legs="Ea Slops +1",       abjuration  gil
        feet="Bunzi's Sabots",
        -- feet="Amalric Nails +1",       abjuration  gil
        neck="Sibyl Scarf",
        -- neck="Mizu. Kubikazari",     HTNM
        waist="Refoccilation Stone",
        -- waist="Sacro Cord",          HTNM
        left_ear="Malignance Earring",
        right_ear="Friomisi Earring",
        -- right_ring="Mujin Band",       dynamis   gil
        left_ring="Locus Ring",
        -- left_ring="Freke Ring",      HTNM
        right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
        back="Sucellos's Cape", 
        -- back="Sucellos's Cape", --ambuscade
        }

    sets.midcast.enfeeblingskill  = {
        main="Fettering blade",
        -- main="Murgleis",
        sub="Ammurapi shield",
		ammo="Regal Gem",
        head="Vitiation Chapeau +3",  
        body="Lethargy Sayon +2",
        hands="Lethargy Gantherots +2",
        legs="Chironic hose",
        -- legs="Chironic hose",       --gil
        feet="Vitiation Boots +1",
        --feet="Vitiation Boots +3",
        waist="Obstinate sash",     
        -- waist="Obstinate sash",     --gil
        neck="Duelist's torque +1",
        --neck="Duelist's torque +2",   gil
        right_ear="Malignance Earring",
        left_ear="Regal Earring",
        left_ring="Stikini Ring +1",
        right_ring={ name="Metamor. Ring +1", augments={'Path: A',}}, 
        -- right_ring={ name="Metamor. Ring +1", augments={'Path: A',}}, --lustreless scale
        back="Sucellos's Cape",
        -- back="Sucellos's Cape",     --ambuscade
        }

    sets.midcast.enfeeblingduration  = set_combine(sets.midcast.enfeeblingskill, {
        range="Kaja Bow",
        --hands="Regal Cuffs"           omen ou
        right_ring="Kishar Ring",
        left_ear="Snotra Earring",
        back="Aurist's cape +1",
        -- back="Aurist's cape +1", --lustreless hide
        })
    
    sets.midcast.enfeeblingaccuracy  = set_combine(sets.midcast.enfeeblingskill, {     
        range="Kaja Bow",
        -- body="Atrophy Tabard +3",
        waist="Acuity belt +1",
        -- waist="Acuity belt +1", --lustreless scale
        back="Aurist's cape +1",
        -- back="Aurist's cape +1", --lustreless hide
        })

    sets.midcast.enfeeblingskillmax  = set_combine(sets.midcast.enfeeblingskill, {       
        legs="Psycloth Lappas",
        waist="Casso Sash",
        --right_ear="Vor Earring",      domain invasion 600
        left_ring="Stikini Ring +1",
        right_ring="Stikini Ring +1",
        })

    sets.midcast.Cure = {
        main="Daybreak",
        sub="Ammurapi Shield",
        ammo="Regal Gem",
        -- head="Kaykaus Mitra +1"       abjuration  gil
        body="Vitiation Tabard +3",
        -- body="Kaykaus Bliaut +1"       abjuration  gil
        -- hands="Kaykaus Cuffs +1"       abjuration  gil
        legs="Atrophy Tights +1",
        -- legs="Kaykaus Tights +1"       abjuration  gil
        -- feet="Kaykaus Boots +1"       abjuration  gil
        neck="Incanter's Torque",
        waist="Gishdubar Sash",
        -- left_ear="Meili Earring"      domain invasion 600
        -- right_ear="Beatific Earring"     meeble burrows
        left_ring="Stikini Ring +1",
        right_ring="Stikini Ring +1",
        back="Grapevine Cape"
        }
    sets.midcast.refresh = set_combine(sets.midcast.enhancingduration, {
        -- head="Amalric coif +1",       abjuration  gil
        body="Atrophy Tabard +2",
        -- body="Atrophy tabard +3",
        legs="Lethargy fuseau +2",
        waist="Gishdubar sash",
        back="Grapevine cape"

        })

    --------------------------------------
    -- Idle/resting/defense/etc sets
    --------------------------------------
    sets.aftercast = {}
    sets.aftercast.Idle = {}
    sets.aftercast.Weapon = {}  
    
    -- gear_mode
    sets.aftercast.Idle[0]={    --melee
        ammo="Aurgelmir Orb",
        head="Malignance Chapeau",
        body="Malignance Tabard",
        hands="Malignance Gloves",
        legs="Bunzi's Pants",
        -- legs="Malignance Tights",    HTNM
        feet="Nyame Sollerets",
        -- feet="Malignance Boots",    HTNM
        neck="Asperity Necklace",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Cessance Earring",
        right_ear="Sherida Earring",
        left_ring="Chirich Ring +1",
        -- right_ring="Chirich Ring +1",    gil
        right_ring="Petrov Ring",
        back="Letalis Mantle",
        -- back="Sucellos's Cape",      ambuscade
        }

    sets.aftercast.Idle[1]={    --DT
        ammo="Aurgelmir Orb",
        head="Malignance Chapeau",
        body="Malignance Tabard",
        hands="Malignance Gloves",
        legs="Bunzi's Pants",
        -- legs="Malignance Tights",    HTNM
        feet="Nyame Sollerets",
        -- feet="Malignance Boots",    HTNM
        neck="Asperity Necklace",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Cessance Earring",
        right_ear="Sherida Earring",
        left_ring="Chirich Ring +1",
        -- right_ring="Chirich Ring +1",    gil
        right_ring="Defending Ring",
        back="Letalis Mantle",
        -- back="Sucellos's Cape",      ambuscade
        }  

    sets.aftercast.Idle[2]={    --Endamage
        ammo="Coiste Bodhar",                   --test
        -- ammo="Aurgelmir Orb",
        head="Umuthi Hat",                    
        body="Malignance Tabard",
        hands="Ayanmo Manopolas +2",
        legs="Bunzi's Pants",
        -- legs="Malignance Tights",            HTNM
        feet="Nyame Sollerets",
        -- feet="Malignance Boots",             HTNM
        neck="Asperity necklace",               --test
        -- neck="Sibyl Scarf",
        waist="Sailfi Belt +1",                 --test
        -- waist="Hachirin-no-obi",
        -- waist="Orpheus's Sash"               aman    gil     nyzulevent
        left_ear="Eabani Earring",
        right_ear="Sherida Earring",
        right_ring="Stikini Ring +1",           --test         
        left_ring="Petrov Ring",
        -- right_ring="Hetairoi ring"           reisenjima
        -- back="Letalis Mantle",
        back="Ghostfyre Cape",                  --test
        -- back="Sucellos's Cape", [DEX +20/Accuracy +30/Attack +20/Dual Wield +10]     ambuscade
        }

    sets.aftercast.refresh={
        -- ammo="Homiliary"         quest
        head="Vitiation Chapeau +3",  
        body="Lethargy Sayon +2",
        -- body="Lethargy Sayon +3",    sortie
        -- body="Jhakri Robe +2 ",
        -- hands="Chironic Gloves"       domain invasion 800
        -- legs="Chironic Hose"       domain invasion 800
        -- feet="Chironic Slippers",       domain invasion 800
        left_ring="Stikini Ring +1",
        right_ring="Stikini Ring +1",
    }

    -- weapon_mode        
    sets.aftercast.Weapon[0]={  --sword  
        main="Naegling",
        sub="Machaera +2",
        }       

    sets.aftercast.Weapon[1]={  --dagger  
        main="Crepuscular knife",
        sub="Machaera +2",
        }     

    sets.aftercast.Weapon[2]={  --endamage 0phys
        main="Ceremonial Dagger",
        sub="Ceremonial Dagger",
        }     

    sets.aftercast.Weapon[3]={  --endamage
        main="Pukulatmuj +1",
        -- main="Crocea Mors"
        sub="Enriching Sword",
        -- main="Enriching Sword +1"    gil
        -- sub="Crocea Mors"
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
    if string.find(spell.english,'Gain-') then 
        equip(set_combine(sets.midcast.enhancingskill, {
            hands="Vitiation Gloves +3"
        }))
    elseif string.find(spell.english,'Cure') then 
        equip(sets.midcast.Cure)
    elseif string.find(spell.english,'Refresh') then
        equip(sets.midcast.refresh)       
    elseif spell.skill == 'Enhancing Magic' then
        if durationspells[spell.english] then
            if spell.target.type == 'SELF' then
                equip(sets.midcast.enhancingduration)
            else 
                equip(sets.midcast.enhancingdurationother)
            end
        else
            equip(sets.midcast.enhancingskill)
        end
    elseif spell.skill == 'Enfeebling Magic' then
        if durationspells[spell.english] then
            equip(sets.midcast.enfeeblingduration)
        elseif accuracyspells[spell.english] then
            equip(sets.midcast.enfeeblingaccuracy)
        elseif maxskillspells[spell.english] then
            equip(sets.midcast.enfeeblingskillmax)
        else
            equip(sets.midcast.enfeeblingskill)
        end
    elseif spell.skill == 'Elemental Magic' then
        if gear_mode == 0 then
            equip(sets.midcast.nuke)
        else
            equip(sets.midcast.burst)
        end
    -- elseif spell.skill then
    --     equip(sets.aftercast.Idle)
    end
end

function aftercast(spell)
        equip(sets.aftercast.Idle[gear_mode],sets.aftercast.Weapon[weapon_mode])
end

function status_change(new_status, old_status)
    if new_status == 'Idle' then
        if gear_mode == 0 then 
            equip(sets.aftercast.refresh)
        end
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
    if command:lower() == 'switchgear' then gear_mode = (gear_mode+1)%3 end
    equip(sets.aftercast.Idle[gear_mode])

    if command:lower() == 'switchweapon' then weapon_mode = (weapon_mode+1)%4 end
    equip(sets.aftercast.Weapon[weapon_mode])
    switch_statustext(gear_mode,weapon_mode)
	switch_crossbar(weapon_mode)	    
end

function switch_statustext(gear_mode,weapon_mode)
    if gear_mode == 0 then
        gear_description = "TP/Nuke______"
    elseif gear_mode == 1 then
        gear_description = "DT/Burst_____"
    elseif gear_mode == 2 then
        gear_description = "Endamage_____"
    end
    if weapon_mode == 0 then
        weapon_description = "Sword"
    elseif weapon_mode == 1 then
        weapon_description = "Dagger"
    elseif weapon_mode == 2 then
        weapon_description = "Endamage 0"
    elseif weapon_mode == 3 then
        weapon_description = "Endamage"
    end
    send_command('input //text status text Gear:'..gear_description..' Weapon:'..weapon_description)
end

function switch_crossbar(mode)
	if mode == 0 then
        send_command('input //xivcrossbar set job-default 2 6 ws "Savage Blade" t "Savage Blade"')
        send_command('input //xivcrossbar set job-default 2 7 ws "Requiescat" t "Requiescat"')
        send_command('input //xivcrossbar set job-default 2 8 ws "Spirits Within" t "Spirits Within"')
        send_command('input //xivcrossbar set job-default 2 5 ws "Sanguine Blade" t "Sanguine Blade"')
    end
    
    if mode == 1 then
        send_command('input //xivcrossbar set job-default 2 6 ws "Aeolian Edge" t "Aeolian Edge"')
    end


end

function Set (list)
    local set = {}
    for _, l in ipairs(list) do set[l] = true end
    return set
  end