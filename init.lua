--[[ 

Argent, un petit mod permettant de crééer une économie sur un serveur minetest.
Créé par turbogus
Code et graphisme en GPL

]]--

--**************************************************************************************
--Poinçon à pièces :
minetest.register_craftitem("argent:poincon", {
	description = "poincon",
	inventory_image = "poincon.png",
})

minetest.register_craft({
	output = "argent:poincon",
	recipe = {
		{"","default:stick",""},
		{"","default:stick",""},
		{"default:steel_ingot","default:steel_ingot","default:steel_ingot"},
	}
})

--Tampon à billet :
minetest.register_craftitem("argent:tampon", {
	description = "tampon",
	inventory_image = "tampon.png",
})

minetest.register_craft(
{
	output = "argent:tampon",
	recipe =
		{
			{"","default:stick",""},
			{"default:steel_ingot","default:steel_ingot","default:steel_ingot"},
			{"default:steel_ingot","default:steel_ingot","default:steel_ingot"},
		}

})

--**************************************************************************************
--Pièce en charbon :
minetest.register_craftitem("argent:piece_charbon", {
	description = " piece en charbon",
	inventory_image = "piece_charbon.png",
})

minetest.register_craft(
{
	output = "argent:piece_charbon";
	recipe = 
		{
			{"argent:poincon"},
			{"default:coal_lump"},
		};
	replacements = 
		{
			{"argent:poincon","argent:poincon"},
		};
});

--Tube de piece en charbon :
minetest.register_craftitem("argent:tube_piece_charbon", {
	description = "tube de 9 pieces en charbon",
	inventory_image = "tube_piece_charbon.png",
})
minetest.register_craft(
{
	output = "argent:tube_piece_charbon",
	recipe = 
		{
			{"argent:piece_charbon","argent:piece_charbon","argent:piece_charbon"},
			{"argent:piece_charbon","argent:piece_charbon","argent:piece_charbon"},
			{"argent:piece_charbon","argent:piece_charbon","argent:piece_charbon"},
		}
}
)
minetest.register_craft(
{
	output = "argent:piece_charbon 9",
	recipe = 
		{
			{"argent:tube_piece_charbon"},
		}
}
)

--Pièce en acier :
minetest.register_craftitem("argent:piece_acier", {
	description = " piece en acier",
	inventory_image = "piece_acier.png",
})
minetest.register_craft(
{
	output = "argent:piece_acier";
	recipe = 
		{
			{"argent:poincon"},
			{"default:steel_ingot"},
		};
	replacements = 
		{
			{"argent:poincon","argent:poincon"},
		};
});
minetest.register_craft(
{
	output = "argent:piece_acier",
	recipe = {
			{"argent:tube_piece_charbon","argent:piece_charbon"},
		}
}
)

--Tube de piece en acier :
minetest.register_craftitem("argent:tube_piece_acier", {
	description = "tube de 9 pieces en acier",
	inventory_image = "tube_piece_acier.png",
})
minetest.register_craft(
{
	output = "argent:tube_piece_acier",
	recipe = 
		{
			{"argent:piece_acier","argent:piece_acier","argent:piece_acier"},
			{"argent:piece_acier","argent:piece_acier","argent:piece_acier"},
			{"argent:piece_acier","argent:piece_acier","argent:piece_acier"},
		}
}
)
minetest.register_craft(
{
	output = "argent:piece_acier 9",
	recipe = 
		{
			{"argent:tube_piece_acier"},
		}
}
)

--**************************************************************************************
--Billet de 10
minetest.register_craftitem("argent:billet10", {
	description = " billet de 10",
	inventory_image = "billet10.png",
})
minetest.register_craft(
{
	output="argent:billet10";
	recipe=
		{
			{"argent:tampon"},
			{"default:steel_ingot 10"},
			{"default:paper"},
		};
	replacements = 
		{
			{"argent:tampon","argent:tampon"},
		};
});
minetest.register_craft(
{
	output="argent:billet10",
	recipe=
	{
		{"argent:tube_piece_acier","argent:piece_acier"},
	}
}
)

--Billet de 20
minetest.register_craftitem("argent:billet20", {
	description = " billet de 20",
	inventory_image = "billet20.png",
})

--minetest.register_craft(
--{
--	output="argent:billet20";
--	recipe=
--		{
--			{"argent:tampon"},
--			{"default:steel_ingot 20"},
--			{"default:paper"},
--		};
--	replacements=
--		{
--			{"argent:tampon","argent:tampon"},
--		};
--});
minetest.register_craft(
{
	output="argent:billet20",
	recipe=
	{	
		{"argent:piece_acier","argent:piece_acier"},
		{"argent:tube_piece_acier"},
		{"argent:tube_piece_acier"},
		
	}
}
)
minetest.register_craft(
{
	output="argent:billet20",
	recipe=
	{
		{"argent:billet10"},
		{"argent:billet10"},
	}
}
)

--[[
--Billet de 50
minetest.register_craftitem("argent:billet50", {
	description = " billet de 50",
	inventory_image = "billet50.png",
})

minetest.register_craft(
{
	output="argent:billet50";
	recipe=
		{
			{"argent:tampon"},
			{"default:steel_ingot 50"},
			{"default:paper"},
		};
	replacements=
		{
			{"argent:tampon","argent:tampon"},
		};
});
minetest.register_craft(
{
	output="argent:billet50",
	recipe=
	{
		{"argent:piece_acier 50"},
	}
}
)
minetest.register_craft(
{
	output="argent:billet50",
	recipe=
	{
		{"argent:piece_charbon 99","argent:piece_charbon 99","argent:piece_charbon 99"},
		{"argent:piece_charbon 99","argent:piece_charbon 99","argent:piece_charbon 5"},
	}
}
)
minetest.register_craft(
{
	output="argent:billet50",
	recipe=
	{
		{"argent:billet10 5"},
	}
}
)
minetest.register_craft(
{
	output="argent:billet50",
	recipe=
	{
		{"argent:billet10 "},
		{"argent:billet20 2"},
	}
}
)
minetest.register_craft(
{
	output="argent:billet50",
	recipe=
	{
		{"argent:billet10 3 "},
		{"argent:billet20 1"},
	}
}
)
--Billet de 100
minetest.register_craftitem("argent:billet100", {
	description = " billet de 100",
	inventory_image = "billet100.png",
})


minetest.register_craft(
{
	output = "argent:billet100";
	recipe =
		{
			{"argent:tampon"},
			{"default:steel_ingot ","default:steel_ingot"},
			{"default:paper"},
		};
	replacements=
		{
			{"argent:tampon","argent:tampon"},
		};
});
minetest.register_craft(
{
	output="argent:billet100",
	recipe=
		{
			{"argent:tampon"},
			{"default:mese_crystal"},
			{"default:paper"},
		}
}
)
minetest.register_craft(
{
	output="argent:billet100",
	recipe=
	{
		{"argent:piece_acier 99","argent:piece_acier"},
	}
}
)
minetest.register_craft(
{
	output="argent:billet100",
	recipe=
	{
		{"argent:billet10 10"},
	}
}
)
minetest.register_craft(
{
	output="argent:billet100",
	recipe=
	{
		{"argent:billet20 5"},
	}
}
)

]]--

--Billet de 200

--Billet de 500

--[[

Convertions :

- 10 pièces en charbon = 1 pièce en fer
- 100 pièces en charbon = 10 pièces en fer = 1 billet de 10 // 1 billet de 10 = 1 feuille à billet + 10 iron_lump + tampon 
- 200 pièce en charbon = 20 pièces en fer = 1 billet de 20 // 1 billet de 20 = 1 feuille à billet + 20 iron_lump + tampon
- 500 pièces en charbon = 50 pièces en fer = 1 billet de 50 // 1 billet de 50 = 1 feuille à billet + 50 iron_lump + tampon
- 1000 pièces en charbon = 100 pièces en fer = 1 billet de 100 // 1 billet de 100 = 1 feuille à billet + 1 mese_diamond + tampon
- 2000 pièces en charbon = 200 pièces en fer = 1 billet de 200 // 1 billet de 200 = 1 feuille à billet + 2 mese_diamond + tampon
- 5000 pièce en charbon = 500 pièces en fer = 1 billet de 500 // 1 billet de 500 = 1 feuille à billet + 5 mese diamond + tampon 

]]--
