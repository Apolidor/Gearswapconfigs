include('organizer-lib')

function get_sets()
    --------------------------------------
    -- Variables
    --------------------------------------
    gear_mode = 0
    weapon_mode = 0
    songsetup = true

    --------------------------------------
    -- Precast sets
    --------------------------------------
    sets.precast = {}
    sets.precast.JA = {}
    --sets.precast.JA['ja'] = {}
    sets.precast.FC = {}

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
        body="Fili Hongreline",
        legs="Inyanga Shalwar +2",
        feet="Brioso Slippers +1",
        neck="Moonbow Whistle",
        left_ring="Stikini Ring +1",
        right_ring="Stikini Ring +1",
        }
    sets.midcast.songbuff = {
        main={ name="Kali", augments={'Mag. Acc.+15','String instrument skill +10','Wind instrument skill +10',}},
        sub="Legato Dagger",
        range="Eminent Flute",
        body="Fili Hongreline",
        legs="Inyanga Shalwar +2",
        feet="Brioso Slippers +1",
        neck="Moonbow Whistle",
        left_ring="Stikini Ring +1",
        right_ring="Stikini Ring +1",
        }


    --------------------------------------
    -- Idle/resting/defense/etc sets
    --------------------------------------
    sets.aftercast = {}
    sets.aftercast.Idle = {}
    sets.aftercast.Weapon = {}  
    
    -- gear_mode
    sets.aftercast.Idle[0]={
        main="Naegling",
        sub="Pukulatmuj +1",
        ammo="Aurgelmir Orb",
        head="Aya. Zucchetto +2",
        body="Ayanmo Corazza +2",
        hands="Aya. Manopolas +2",
        legs="Aya. Cosciales +2",
        feet="Aya. Gambieras +2",
        neck="Asperity Necklace",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Cessance Earring",
        right_ear="Brutal Earring",
        left_ring="Petrov Ring",
        right_ring="Rajas Ring",
        back="Letalis Mantle",
        }
    sets.aftercast.Idle[1]={}

    -- weapon_mode        
    sets.aftercast.Weapon[0]={}       
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
        if songsetup == false then
            equip(sets.midcast.songbuff)
        else
            equip(sets.midcast.songsetup)
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

    if command:lower() == 'setup' then songsetup = true end
    if command:lower() == 'buff' then songsetup = false end
end