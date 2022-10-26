include('organizer-lib')
require '../auto.lua'
require '../pup.lua'

function get_sets()
    sets.precast = {}
    sets.precast.JA = {}
    
	sets.precast.JA.Maneuver = {
		--back="Visucius's Mantle",
		neck="Buffoon's Collar",
		main="Midnights"
	}
    
	sets.precast.JA.Overdrive = {
		body={ name="Pitre Tobe +1", augments={'Enhances "Overdrive" effect',}},
		--body={ name="Pitre Tobe +2", augments={'Enhances "Overdrive" effect',}},
	}
    
	sets.precast.JA.Repair = {
	--main="Nibiru Sainti",
    --range="Animator P +1",
    range="Divinator",
    ammo="Automat. Oil +3",
    -- head={ name="Taeon Chapeau", augments={'Pet: Accuracy+21 Pet: Rng. Acc.+21','Pet: "Dbl. Atk."+5','Pet: Damage taken -3%',}},
    -- body={ name="Taeon Tabard", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
    -- hands={ name="Taeon Gloves", augments={'Pet: Accuracy+23 Pet: Rng. Acc.+23','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
    -- legs={ name="Taeon Tights", augments={'Pet: Accuracy+22 Pet: Rng. Acc.+22','Pet: "Dbl. Atk."+4','Pet: Damage taken -3%',}},
    -- feet={ name="Taeon Boots", augments={'Pet: Accuracy+19 Pet: Rng. Acc.+19','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
    --neck="Empath Necklace",
    --waist="Isa Belt",
    --left_ear="Enmerkar Earring",
    --right_ear="Guignol Earring",
    --left_ring="Overbearing Ring",
    right_ring="Thurandaut Ring",
    --back={ name="Visucius's Mantle", augments={'Pet: Acc.+10 Pet: R.Acc.+10 Pet: Atk.+10 Pet: R.Atk.+10','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: "Regen"+10','System: 1 ID: 1247 Val: 4',}}
	}
	
    sets.precast.WS = {}
	

    -- Midcast Sets
    sets.midcast = {}
        
 
    --Aftercast Sets
    sets.aftercast = {}
    sets.aftercast.PDT = {
    --main={ name="Ohrmazd", augments={'Pet: Mag. Evasion+20','Pet: Damage taken -4%','HP+36',}},
    --range="Animator P +1",
    range="Divinator",
    ammo="Automat. Oil +3",
    --head={ name="Taeon Chapeau", augments={'Pet: Mag. Evasion+12','Pet: "Regen"+3','Pet: Damage taken -4%',}},
    -- body={ name="Taeon Tabard", augments={'Pet: Mag. Evasion+8','Pet: "Regen"+3','Pet: Damage taken -4%',}},
    -- hands={ name="Taeon Gloves", augments={'Pet: Attack+19 Pet: Rng.Atk.+19','Pet: "Regen"+3','Pet: Damage taken -4%',}},
    -- legs={ name="Taeon Tights", augments={'Pet: "Regen"+3','Pet: Damage taken -4%',}},
    -- feet={ name="Taeon Boots", augments={'Pet: "Regen"+3','Pet: Damage taken -4%',}},
    -- neck="Empath Necklace",
    -- waist="Isa Belt",
    --left_ear="Rimeice Earring",
    right_ear="Ethereal Earring",
    --left_ring="Overbearing Ring",
    left_ring="Varar Ring",
    right_ring="Varar Ring",
    --right_ring="Varar Ring +1",
    --back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Pet: "Regen"+10','Pet: Damage taken -5%',}},
    }
	sets.aftercast.PTP = {
    --main={ name="Pitre Fists", augments={'Path: C',}},
    --range="Animator P +1",
    range="Divinator",
    ammo="Automat. Oil +3",
    -- body={ name="Taeon Tabard", augments={'Pet: Mag. Evasion+8','Pet: "Regen"+3','Pet: Damage taken -4%',}},
    head={ name="Herculean Helm", augments={'Pet: Accuracy+24 Pet: Rng. Acc.+24','Pet: "Store TP"+4','Pet: AGI+7','Pet: Attack+7 Pet: Rng.Atk.+7',}},
    --body={ name="Herculean Vest", augments={'Pet: Accuracy+6 Pet: Rng. Acc.+6','Pet: "Store TP"+5','Pet: INT+1','Pet: Attack+10 Pet: Rng.Atk.+10','Pet: "Mag.Atk.Bns."+1',}},
    body={ name="Pitre Tobe +1", augments={'Enhances "Overdrive" effect',}},
    hands={ name="Herculean Gloves", augments={'Pet: Accuracy+24 Pet: Rng. Acc.+24','Pet: "Store TP"+7','Pet: Attack+4 Pet: Rng.Atk.+4',}},
    legs={ name="Herculean Trousers", augments={'Pet: Attack+30 Pet: Rng.Atk.+30','Pet: "Store TP"+11','Pet: CHR+6',}},
    feet={ name="Herculean Boots", augments={'Pet: Accuracy+29 Pet: Rng. Acc.+29','Pet: "Store TP"+4','Pet: Attack+3 Pet: Rng.Atk.+3',}},
    --neck="Shulmanu Collar",
    --waist="Isa Belt",
    --left_ear="Rimeice Earring",
    right_ear="Ethereal Earring",
    --left_ring="Overbearing Ring",
    left_ring="Varar Ring",
    right_ring="Varar Ring",
    --right_ring="Varar Ring +1",
    --back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Pet: "Regen"+10','Pet: Damage taken -5%',}},
    }

	sets.aftercast.Magic = {
    --main={ name="Ohrmazd", augments={'Pet: Mag. Evasion+24','Pet: Damage taken -2%','Pet: STR+15 Pet: DEX+15 Pet: VIT+15',}},
    --range="Animator P +1",
    range="Divinator",
    ammo="Automat. Oil +3",
    -- head={ name="Taeon Chapeau", augments={'Pet: Accuracy+21 Pet: Rng. Acc.+21','Pet: "Regen"+3','Pet: Damage taken -4%',}},
    -- body={ name="Taeon Tabard", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Regen"+3','Pet: Damage taken -4%',}},
    -- hands={ name="Taeon Gloves", augments={'Pet: Accuracy+23 Pet: Rng. Acc.+23','Pet: "Regen"+3','Pet: Damage taken -4%',}},
    -- legs={ name="Taeon Tights", augments={'Pet: Accuracy+22 Pet: Rng. Acc.+22','Pet: "Regen"+3','Pet: Damage taken -3%',}},
    -- feet={ name="Taeon Boots", augments={'Pet: Accuracy+19 Pet: Rng. Acc.+19','Pet: "Regen"+3','Pet: Damage taken -4%',}},
    -- neck="Empath Necklace",
    -- waist="Isa Belt",
    -- left_ear="Enmerkar Earring",
    -- right_ear="Rimeice Earring",
    -- left_ring="Overbearing Ring",
    right_ring="Thurandaut Ring",
    -- back={ name="Visucius's Mantle", augments={'Pet: Acc.+10 Pet: R.Acc.+10 Pet: Atk.+10 Pet: R.Atk.+10','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: "Regen"+10',}},
    }

	
	sets.aftercast.RNG = {
    -- main={ name="Pitre Fists", augments={'Path: C',}},
    -- range="Animator P +1",
    range="Divinator",
    ammo="Automat. Oil +3",
    head={ name="Herculean Helm", augments={'Pet: Accuracy+24 Pet: Rng. Acc.+24','Pet: "Store TP"+4','Pet: AGI+7','Pet: Attack+7 Pet: Rng.Atk.+7',}},
    -- body={ name="Pitre Tobe +2", augments={'Enhances "Overdrive" effect',}},
    body={ name="Pitre Tobe +1", augments={'Enhances "Overdrive" effect',}},
    hands={ name="Herculean Gloves", augments={'Pet: Accuracy+24 Pet: Rng. Acc.+24','Pet: "Store TP"+7','Pet: Attack+4 Pet: Rng.Atk.+4',}},
    legs={ name="Herculean Trousers", augments={'Pet: Attack+30 Pet: Rng.Atk.+30','Pet: "Store TP"+11','Pet: CHR+6',}},
    feet={ name="Herculean Boots", augments={'Pet: Accuracy+29 Pet: Rng. Acc.+29','Pet: "Store TP"+4','Pet: Attack+3 Pet: Rng.Atk.+3',}},
    -- neck="Shulmanu Collar",
    -- waist="Klouskap Sash +1",
    -- left_ear="Domes. Earring",
    -- right_ear="Rimeice Earring",
    -- left_ring="Varar Ring +1",
    left_ring="Varar Ring",
    right_ring="Varar Ring",
    -- right_ring="Varar Ring +1",
    -- back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Pet: "Regen"+10','Pet: Damage taken -5%',}},
    }
	
	sets.aftercast.Arcubalista = {
	-- main={ name="Pitre Fists", augments={'Path: C',}},
    -- range="Animator P +1",
    range="Divinator",
    ammo="Automat. Oil +3",
    -- head="Karagoz Capello +1",
    -- body={ name="Pitre Tobe +2", augments={'Enhances "Overdrive" effect',}},
    body={ name="Pitre Tobe +1", augments={'Enhances "Overdrive" effect',}},
    -- hands="Karagoz Guanti +1",
    -- legs="Kara. Pantaloni +1",
    -- feet={ name="Naga Kyahan", augments={'Pet: HP+100','Pet: Accuracy+25','Pet: Attack+25',}},
    -- neck="Shulmanu Collar",
    -- waist="Isa Belt",
    -- left_ear="Rimeice Earring",
    -- right_ear="Kyrene's Earring",
    -- left_ring="Overbearing Ring",
    left_ring="Varar Ring",
    right_ring="Varar Ring",
    -- right_ring="Varar Ring +1",
    -- back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Pet: "Regen"+10','Pet: Damage taken -5%',}},
    }
        
    sets.aftercast.Engaged = {
	
    }
        
    sets.aftercast._tab = {'PTP','PDT', 'Arcubalista', 'UIA', 'RNG'}
    
    sets.aftercast._index = 1
    
    sets.aftercast.Idle = sets.aftercast[sets.aftercast._tab[sets.aftercast._index]]
    
    sets.midcast.Base = sets.aftercast.PDT -- sets.midcast.Haste
    
    DaurdSongs = T{'Water Carol','Water Carol II','Herb Pastoral','Goblin Gavotte'}
    
    --send_command('input /macro book 16')
	--send_command('wait 4;input /lockstyleset 20')
    auto_Init({
        pullstring='input /pet Deploy <t>',
        anchor='Chibily',
        weaponskillstring='input /ws "Raging Fists" <t>;',
        range=15,
		pullRange=20,
        --truststring='input //tru pl',
    })
	pup_Init('Chibily')

end

function pretarget(spell)

end

function precast(spell)
	if string.find(spell.english,'Maneuver') then
		equip(sets.precast.JA.Maneuver)
	elseif sets.precast.JA[spell.english] then 
		equip(sets.precast.JA[spell.english])
	end
    
end

function midcast(spell)
 
end

function aftercast(spell)
    if midaction() then return end
    
    if player.status == 'Engaged' then
        equip(sets.aftercast.Engaged)
    else
		--print('Aftercast Set: '..sets.aftercast._tab[sets.aftercast._index])
		sets.aftercast.Idle = sets.aftercast[sets.aftercast._tab[sets.aftercast._index]]
        equip(sets.aftercast.Idle)
    end
end

function status_change(new,old)
    if new == 'Engaged' then
        equip(sets.aftercast.Engaged)
        --disable('main','sub','ammo')
    elseif T{'Idle','Resting'}:contains(new) then
        equip(sets.aftercast.Idle)
    end
end

function self_command(cmd)
	if string.sub(cmd,1,string.len("co")) == "co" then
		if cmd == "co UIA" then
			sets.aftercast._index = 4
			sets.aftercast.Idle = sets.aftercast[sets.aftercast._tab[sets.aftercast._index]]
			equip(sets.aftercast.Idle)
			windower.add_to_chat(55,'Aftercast Set: '..sets.aftercast._tab[sets.aftercast._index])
		elseif cmd == "co RNG" then
			sets.aftercast._index = 5
			sets.aftercast.Idle = sets.aftercast[sets.aftercast._tab[sets.aftercast._index]]
			equip(sets.aftercast.Idle)
			windower.add_to_chat(55,'Aftercast Set: '..sets.aftercast._tab[sets.aftercast._index])
		end
    end
    auto_command(cmd) 
	pup_command(cmd)
end
