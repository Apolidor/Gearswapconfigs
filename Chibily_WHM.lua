include('organizer-lib')

function get_sets()
    sets.precast = {}
    sets.precast.JA = {}

    -- Precast Sets   
    sets.precast.FC = {
		main="Ababinili",
        ammo="Impatiens",
        head="Vanya Hood",
		neck="Twilight Torque",
		ear1="Loquacious earring",
		ear2="Nourishing earring +1",
        body="Inyanga jubbah",
		hands="Gendewitha Gages",
		legs="Ebers pantaloons +1",
		feet="Kaykaus Boots",
        back="Mending cape",
		waist="Witful belt",
		Ring1="Lebeche ring",
		ring2="Kishar Ring",
		}
    
    -- Midcast Sets
    sets.midcast = {}

    sets.midcast.Debuff = {
		main="Izcalli",
        sub="Genbu's shield",
        range="Homiliary",
        head="Inyanga tiara +2",
		neck="Twilight Torque",
		ear1="Glorious earring",
		ear2="Nourishing earring +1",
        body="Ebers Bliaut",
		hands="Kaykaus cuffs",
		legs="Ebers pantaloons +1",
		feet="Kaykaus boots",
		waist="Witful belt",
		Ring1="Lebeche ring",
		ring2="Sirona's Ring",
		}
    
    sets.midcast.Buff = {
		main="Izcalli",
        sub="Sors shield",
        ammo="Impatiens",
        head="Vanya Hood",
		neck="Incanter's Torque",
		ear1="Glorious earring",
		ear2="Nourishing earring +1",
        body="Ebers Bliaut",
		hands="Kaykaus cuffs",
		legs="Ebers pantaloons +1",
		feet="Kaykaus boots",
		waist="Witful belt",
		Ring1="Lebeche ring",
		ring2="Sirona's Ring",
		}
        
    sets.midcast.Cure = {
		main="Izcalli",
        sub="Sors shield",
        ammo="Impatiens",
        head="Vanya Hood",
		neck="Incanter's Torque",
		ear1="Glorious earring",
		ear2="Nourishing earring +1",
        body="Ebers Bliaud",
		hands="Kaykaus cuffs",
		legs="Ebers pantaloons +1",
		feet="Kaykaus boots",
		waist="Witful belt",
		Ring1="Lebeche ring",
		ring2="Sirona's Ring",
		}
    
    sets.midcast.Cursna={
        head={ name="Vanya Hood", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
        body="Vanya Robe",
        hands="Hieros Mittens",
        legs={ name="Vanya Slops", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
        ring1="Haoma's Ring",
        ring2="Haoma's Ring",
        back="Oretan. Cape +1",
        feet="Vanya Clogs",
        neck="Debilis Medallion",
    }
    
    
    --Aftercast Sets
    sets.aftercast = {}
    
    sets.aftercast.refresh = {
		main="Mafic cudgel",
        sub="Genbu's shield",
        ammo="Homiliary",
        head="Inyanga tiara +2",
		neck="Twilight Torque",
        body="Ischemia chasuble",
		hands="Inyanga dastanas +2",
		legs="Inyanga Shalwar +2",
		feet="Inyanga crackows +2",
        back="Mending cape",
		Ring1="Inyanga ring",
		ring2="Thurandaut Ring",
		}
end

function precast(spell)
    if spell.action_type == 'Magic' then
        equip(sets.precast.FC)
    end
end

function midcast(spell)
    if string.find(spell.english,'Cur') then
        equip(sets.midcast.Base,sets.midcast.Cure)
    else
		equip(sets.midcast.Buff)
	end
end

function aftercast(spell)
    if midaction() then return end    
     equip(sets.aftercast.refresh)
    
end