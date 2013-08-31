--[[ 

Argent, un petit mod permettant de crééer une économie sur un serveur minetest.
Créé par turbogus et aidé par Zaraki98
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
--Pièce en charbon (1 centimes) :
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

--Tube de piece en charbon (9 centimes) :
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

--Pièce en acier (10 centimes) :
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

--Tube de piece en acier (90 centimes) :
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

--Pièce en argent (50 centimes) :
minetest.register_craftitem("argent:piece_argent", {
	description = " piece en argent",
	inventory_image = "piece_argent.png",
})
minetest.register_craft(
{
	output = "argent:piece_argent";
	recipe = 
		{
			{"argent:poincon"},
			{"default:silver_ingot"},
		};
	replacements = 
		{
			{"argent:poincon","argent:poincon"},
		};
});
minetest.register_craft(
{
	output = "argent:piece_argent",
	recipe = {
			{"argent:piece_acier","argent:piece_acier","argent:piece_acier"},
			{"argent:piece_acier","argent:piece_acier"},
		}
}
)

--Tube de pièces en argent (4€ 50) :
minetest.register_craftitem("argent:tube_piece_argent", {
	description = "tube de 9 pieces en argent",
	inventory_image = "tube_piece_argent.png",
})
minetest.register_craft(
{
	output = "argent:tube_piece_argent",
	recipe = 
		{
			{"argent:piece_argent","argent:piece_argent","argent:piece_argent"},
			{"argent:piece_argent","argent:piece_argent","argent:piece_argent"},
			{"argent:piece_argent","argent:piece_argent","argent:piece_argent"},
		}
}
)
minetest.register_craft(
{
	output = "argent:piece_argent 9",
	recipe = 
		{
			{"argent:tube_piece_argent"},
		}
}
)

--Pièce en or (1€) :
minetest.register_craftitem("argent:piece_or", {
	description = " piece en or",
	inventory_image = "piece_or.png",
})
minetest.register_craft(
{
	output = "argent:piece_or";
	recipe = 
		{
			{"argent:poincon"},
			{"default:gold_ingot"},
		};
	replacements = 
		{
			{"argent:poincon","argent:poincon"},
		};
});
minetest.register_craft(
{
	output = "argent:piece_or",
	recipe = {
			{"argent:piece_argent","argent:piece_argent"},
		}
}
)

--Tube de pièces en or (9€) :
minetest.register_craftitem("argent:tube_piece_or", {
	description = "tube de 9 pieces en or",
	inventory_image = "tube_piece_or.png",
})
minetest.register_craft(
{
	output = "argent:tube_piece_or",
	recipe = 
		{
			{"argent:piece_or","argent:piece_or","argent:piece_or"},
			{"argent:piece_or","argent:piece_or","argent:piece_or"},
			{"argent:piece_or","argent:piece_or","argent:piece_or"},
		}
}
)
minetest.register_craft(
{
	output = "argent:piece_or 9",
	recipe = 
		{
			{"argent:tube_piece_or"},
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
			{"default:gold_ingot 10"},
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
		{"argent:tube_piece_or","argent:piece_or"},
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
--			{"default:gold_ingot 20"},
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
		{"argent:piece_or","argent:piece_or"},
		{"argent:tube_piece_or"},
		{"argent:tube_piece_or"},
		
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
			{"default:gold_ingot 50"},
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
		{"argent:piece_or 50"},
	}
}
)
minetest.register_craft(
{
	output="argent:billet50",
	recipe=
	{
		{"argent:piece_acier 99","argent:piece_acier 99","argent:piece_acier 99"},
		{"argent:piece_acier 99","argent:piece_acier 99","argent:piece_acier 5"},
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
	output="argent:billet100",
	recipe=
		{
			{"argent:tampon"},
			{"default:mese_crystal"},
			{"default:paper"},
		}
	replacements = 
		{
			{"argent:tampon","argent:tampon"},
		};
}
)
minetest.register_craft(
{
	output="argent:billet100",
	recipe=
	{
		{"argent:piece_or 99","argent:piece_or"},
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
minetest.register_craftitem("argent:billet200", {
	description = " billet de 200",
	inventory_image = "billet200.png",
})

minetest.register_craft(
{
	output="argent:billet200",
	recipe=
		{
			{"argent:tampon"},
			{"default:mese_crystal 2"},
			{"default:paper"},
		}
	replacements = 
		{
			{"argent:tampon","argent:tampon"},
		};
}
)
minetest.register_craft(
{
	output="argent:billet200",
	recipe=
	{
		{"argent:piece_or 99","argent:piece_or 99","argent:piece_or 2"},
	}
}
)
minetest.register_craft(
{
	output="argent:billet200",
	recipe=
	{
		{"argent:billet100 2"},
	}
}
)
minetest.register_craft(
{
	output="argent:billet200",
	recipe=
	{
		{"argent:billet10 20"},
	}
}
)
minetest.register_craft(
{
	output="argent:billet200",
	recipe=
	{
		{"argent:billet20 10"},
	}
}
)

--Billet de 500
minetest.register_craftitem("argent:billet500", {
	description = " billet de 500",
	inventory_image = "billet500.png",
})

minetest.register_craft(
{
	output="argent:billet500",
	recipe=
		{
			{"argent:tampon"},
			{"default:mese_crystal 5"},
			{"default:paper"},
		}
	replacements = 
		{
			{"argent:tampon","argent:tampon"},
		};
}
)
minetest.register_craft(
{
	output="argent:billet500",
	recipe=
	{
		{"argent:piece_or 99","argent:piece_or 99","argent:piece_or 99"},
		{"argent:piece_or 99","argent:piece_or 99","argent:piece_or 5"},
	}
}
)
minetest.register_craft(
{
	output="argent:billet500",
	recipe=
	{
		{"argent:billet100 5"},
	}
}
)
minetest.register_craft(
{
	output="argent:billet500",
	recipe=
	{
		{"argent:billet10 50"},
	}
}
)
minetest.register_craft(
{
	output="argent:billet500",
	recipe=
	{
		{"argent:billet20 25"},
	}
}
)


--[[

Convertions :

- 10 pièces en charbon = 1 pièce en fer
- 50 pièces en charbon = 5 pièces en fer = 1 pièce en argent
- 100 pièces en charbon = 10 pièces en fer = 2 pièces en argent = 1 pièce en or 
- 1.000 pièces en charbon = 100 pièces en fer = 20 pièces en argent = 10 pièces en or = 1 billet de 10 // 1 billet de 10 = 1 feuille à billet + 10 gold_ingot + tampon
- 2.000 pièces en charbon = 200 pièces en fer = 40 pièces en argent = 20 pièces en or = 1 billet de 20 // 1 billet de 20 = 1 feuille à billet + 20 gold_ingot + tampon
- 5.000 pièces en charbon = 500 pièces en fer = 100 pièces en argent = 50 pièces en or = 1 billet de 50 // 1 billet de 50 = 1 feuille à billet + 50 gold_ingot + tampon
- 10.000 pièces en charbon = 1.000 pièces en fer = 200 pièces en argent = 100 pièces en or = 1 billet de 100 // 1 billet de 100 = 1 feuille à billet + 1 mese_crystal + tampon
- 20.000 pièces en charbon = 2.000 pièces en fer = 400 pièces en argent = 200 pièces en or = 1 billet de 200 // 1 billet de 200 = 1 feuille à billet + 2 mese_crystal + tampon
- 50.000 pièce en charbon = 5.000 pièces en fer = 1.000 pièces en argent = 500 pièces en or = 1 billet de 500 // 1 billet de 500 = 1 feuille à billet + 5 mese_crystal + tampon 

]]--
