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
        ammo="Sapience Orb",
        head="Sakpata's Helm",
        hands={ name="Eschite Gauntlets", augments={'Mag. Evasion+15','Spell interruption rate down +15%','Enmity+7',}},
        legs={ name="Eschite Cuisses", augments={'"Mag.Atk.Bns."+25','"Conserve MP"+6','"Fast Cast"+5',}},
        left_ear="Loquac. Earring",
        right_ear="Nourish. Earring +1",
        right_ring="Naji's Loop",
        left_ring="Kishar Ring",
        }

    --------------------------------------
    -- Weaponskill sets
    --------------------------------------
    -- default set
    sets.precast.WS = {}        
    sets.precast['Savage Blade'] = set_combine(sets.precast.WS, {
        ammo="Aurgelmir Orb",
        head="Sakpata's Helm",
        body="Sakpata's Plate",
        hands="Sulev. Gauntlets +2",
        legs="Sakpata's Cuisses",
        feet="Sulev. Leggings +2",
        neck="Fotia Gorget",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        right_ear="Ishvara Earring",
        left_ring="Karieyh Ring",
        right_ring="Rufescent Ring",
        back="Letalis Mantle",
        })
    sets.precast['Requiescat'] = set_combine(sets.precast.WS, {
        
        })
    sets.precast['Chant du Cygne'] = set_combine(sets.precast.WS, {
        
        })


    --------------------------------------
    -- Midcast sets
    --------------------------------------
    sets.midcast = {}
    -- sets.midcast['Enfeebling Magic']  = {}
    -- sets.midcast['Enhancing Magic']  = {}
    -- sets.midcast['Elemental Magic']  = {}
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
        left_ring="Stikini Ring",
        right_ring="Stikini Ring",
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
        left_ring="Stikini Ring",
        right_ring="Naji's Loop",
        }
    
    sets.midcast.Rampart = {}
    sets.midcast.Phalanx = {
        legs="Sakpata's Cuisses",
        }
    
    --------------------------------------
    -- Idle/resting/defense/etc sets
    --------------------------------------
    sets.aftercast = {}
    sets.aftercast.Idle = {}
    sets.aftercast.Weapon = {}  
    
    -- gear_mode
    sets.aftercast.Idle[0]={    --normal
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

    -- weapon_mode        
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
    -- Magic-Boost   
    if string.find(spell.english,'Holy') or string.find(spell.english,'Banish') then 
         equip(sets.midcast.Divine)
    elseif string.find(spell.english,'Cure') then 
        equip(sets.midcast.Cure)
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
    end
end

function aftercast(spell)
        equip(sets.aftercast.Idle[gear_mode],sets.aftercast.Weapon[weapon_mode])
end

-------------------------------------------------------------------------------------------------------------------
-- Stances
-------------------------------------------------------------------------------------------------------------------
function self_command(command)
    if command:lower() == 'switchgear' then gear_mode = (gear_mode+1)%2 end
    if command:lower() == 'gear1' then gear_mode = 0 end
    if command:lower() == 'gear2' then gear_mode = 1 end
    equip(sets.aftercast.Idle[gear_mode])

    if command:lower() == 'switchweapon' then weapon_mode = (weapon_mode+1)%2 end
    if command:lower() == 'weapon1' then weapon_mode = 0 end
    if command:lower() == 'weapon2' then weapon_mode = 1 end
    equip(sets.aftercast.Weapon[weapon_mode])
end