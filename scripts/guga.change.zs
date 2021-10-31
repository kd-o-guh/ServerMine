//Void Portal
craftingTable.removeRecipe(<item:javd:portal_block>);
craftingTable.addShaped("40ee618c-7748-49c2-aeb8-3a75e2580366", <item:javd:portal_block>, [
	[<item:minecraft:gilded_blackstone>, <item:nourished_end:nullstone>, <item:minecraft:gilded_blackstone>], 
	[<item:nourished_end:nullstone>, <item:mekanism:teleportation_core>, <item:nourished_end:nullstone>], 
	[<item:minecraft:gilded_blackstone>, <item:nourished_end:nullstone>, <item:minecraft:gilded_blackstone>]
]);

//Mining Dimension Teleporter
craftingTable.removeRecipe(<item:mining_dimension:teleporter>);
craftingTable.addShaped("45c7dbd0-0c55-4243-a906-c903c83f609d", <item:mining_dimension:teleporter>, [
	[<item:minecraft:stripped_oak_log>, <item:minecraft:netherite_pickaxe>.withTag({Damage: 0 as int}), <item:minecraft:stripped_oak_log>], 
	[<item:tconstruct:greenheart_log>, <item:mekanism:teleportation_core>, <item:tconstruct:greenheart_log>], 
	[<item:minecraft:stripped_oak_log>, <item:tconstruct:greenheart_log>, <item:minecraft:stripped_oak_log>]
]);

//Mob Cage
craftingTable.removeRecipe(<item:cagedmobs:mobcage>);
craftingTable.addShaped("6ae467a7-987a-4984-bd87-6598fbb514d8", <item:cagedmobs:mobcage>, [
	[<item:tconstruct:queens_slime_ingot>, <item:minecraft:chain>, <item:tconstruct:queens_slime_ingot>], 
	[<item:tconstruct:queens_slime_ingot>, <item:additionalbars:crossed_iron_bars>, <item:tconstruct:queens_slime_ingot>], 
	[<item:minecraft:iron_block>, <item:minecraft:iron_block>, <item:minecraft:iron_block>]
]);

//Curious Ring
craftingTable.removeRecipe(<item:curios:ring>);
craftingTable.addShaped("6608c17e-f10d-459f-98a8-7aad55dfaac5", <item:curios:ring>, [
	[<item:tconstruct:rose_gold_ingot>, <item:forbidden_arcanus:arcane_gold_ingot>, <item:tconstruct:rose_gold_ingot>], 
	[<item:forbidden_arcanus:arcane_gold_ingot>, <item:minecraft:air>, <item:forbidden_arcanus:arcane_gold_ingot>], 
	[<item:tconstruct:rose_gold_ingot>, <item:forbidden_arcanus:arcane_gold_ingot>, <item:tconstruct:rose_gold_ingot>]
]);

//Angel Ring
craftingTable.removeRecipe(<item:doomangelring:itemdoomangelring>);
craftingTable.addShaped("a57a3149-f245-4e11-afbc-4b1ea7585940", <item:doomangelring:itemdoomangelring>, [
	[<item:xreliquary:phoenix_down>, <item:elementalcraft:aircrystal>, <item:xreliquary:phoenix_down>], 
	[<item:forbidden_arcanus:golden_dragon_scale>, <item:curios:ring>, <item:forbidden_arcanus:golden_dragon_scale>], 
	[<item:elementalcraft:aircrystal>, <item:forbidden_arcanus:golden_dragon_scale>, <item:elementalcraft:aircrystal>]
]);

//Eternal Stella
craftingTable.removeRecipe(<item:forbidden_arcanus:eternal_stella>);
craftingTable.addShaped("1389610e-6a65-4fb3-af6b-49d7739b5406", <item:forbidden_arcanus:eternal_stella>, [
	[<item:tconstruct:iron_reinforcement>, <item:tconstruct:sky_slime_crystal>, <item:tconstruct:slimesteel_reinforcement>], 
	[<item:tconstruct:earth_slime_crystal>, <item:forbidden_arcanus:stellarite_piece>, <item:tconstruct:ender_slime_crystal>], 
	[<item:tconstruct:slimesteel_reinforcement>, <item:tconstruct:ichor_slime_crystal>, <item:tconstruct:iron_reinforcement>]
]);

//Ultimerite Ingot
craftingTable.removeRecipe(<item:upgradednetherite:ultimate_upgraded_netherite_ingot>);
<recipetype:create:mechanical_crafting>.addRecipe("5ba8e973-d6ca-429c-b5c4-b4c433c22f18", <item:upgradednetherite:ultimate_upgraded_netherite_ingot>, 
[
	[<item:atum:nebu_ingot>, <item:forbidden_arcanus:arcane_gold_ingot>, <item:forbidden_arcanus:obsidian_ingot>, <item:natureminerals:uvarovite_ingot>, <item:natureminerals:kunzite_ingot>, <item:natureminerals:stibnite_ingot>, <item:natureminerals:astrite_ingot>, <item:natureminerals:thounite_ingot>, <item:useless_sword:undying_ingot>], 
	[<item:silentgear:crimson_iron_ingot>, <item:silentgear:crimson_steel_ingot>, <item:silentgear:blaze_gold_ingot>, <item:silentgear:azure_silver_ingot>, <item:silentgear:azure_electrum_ingot>, <item:silentgear:tyrian_steel_ingot>, <item:twilightforest:ironwood_ingot>, <item:twilightforest:fiery_ingot>, <item:twilightforest:knightmetal_ingot>], 
	[<item:tconstruct:cobalt_ingot>, <item:tconstruct:slimesteel_ingot>, <item:tconstruct:tinkers_bronze_ingot>, <item:tconstruct:rose_gold_ingot>, <item:tconstruct:pig_iron_ingot>, <item:tconstruct:queens_slime_ingot>, <item:tconstruct:manyullyn_ingot>, <item:tconstruct:hepatizon_ingot>, <item:useless_sword:valhalla_ingot>], 
	[<item:theabyss:fusioningot>, <item:theabyss:phantom_ingot>, <item:theabyss:loran_ingot>, <item:theabyss:garnite_ingot>, <item:theabyss:unorithe_ingot>, <item:theabyss:netherfire_ingot>, <item:theabyss:knight_ingot>, <item:psi:ebony_psimetal>, <item:psi:ivory_psimetal>], 
	[<item:upgradednetherite:gold_upgraded_netherite_ingot>, <item:upgradednetherite:fire_upgraded_netherite_ingot>, <item:upgradednetherite:ender_upgraded_netherite_ingot>, <item:upgradednetherite:water_upgraded_netherite_ingot>, <item:upgradednetherite:wither_upgraded_netherite_ingot>, <item:upgradednetherite:poison_upgraded_netherite_ingot>, <item:upgradednetherite:phantom_upgraded_netherite_ingot>, <item:upgradednetherite:feather_upgraded_netherite_ingot>, <item:upgradednetherite:corrupt_upgraded_netherite_ingot>]
	
]);

//Solar Panel V
craftingTable.removeRecipe(<item:solarflux:sp_5>);
craftingTable.addShaped("99915319-c044-4534-b92c-e630b95f55cf", <item:solarflux:sp_5>, [
	[<item:solarflux:photovoltaic_cell_3>, <item:solarflux:photovoltaic_cell_3>, <item:solarflux:photovoltaic_cell_3>], 
	[<item:solarflux:sp_4>, <item:emendatusenigmatica:lumium_gear>, <item:solarflux:sp_4>], 
	[<item:solarflux:sp_4>, <item:emendatusenigmatica:electrum_block>, <item:solarflux:sp_4>]
]);

//Solar Panel VI
craftingTable.removeRecipe(<item:solarflux:sp_6>);
craftingTable.addShaped("ec315d83-b371-446f-b8e4-7dddc31ae432", <item:solarflux:sp_6>, [
	[<item:solarflux:photovoltaic_cell_4>, <item:solarflux:photovoltaic_cell_4>, <item:solarflux:photovoltaic_cell_4>], 
	[<item:solarflux:sp_5>, <item:emendatusenigmatica:enderium_gear>, <item:solarflux:sp_5>], 
	[<item:solarflux:sp_5>, <item:silentgear:tyrian_steel_block>, <item:solarflux:sp_5>]
]);

//Solar Panel VII
craftingTable.removeRecipe(<item:solarflux:sp_7>);
craftingTable.addShaped("c1c58d18-5f41-4df9-b71c-594c826b0f20", <item:solarflux:sp_7>, [
	[<item:solarflux:photovoltaic_cell_5>, <item:solarflux:photovoltaic_cell_5>, <item:solarflux:photovoltaic_cell_5>], 
	[<item:powah:solar_panel_nitro>, <item:mekanism:ultimate_control_circuit>, <item:powah:solar_panel_nitro>], 
	[<item:solarflux:sp_6>, <item:emendatusenigmatica:enderium_block>, <item:solarflux:sp_6>]
]);

//Solar Panel VIII
craftingTable.removeRecipe(<item:solarflux:sp_8>);
craftingTable.addShaped("b11b8b57-b5c9-42dc-befe-cb68879327b1", <item:solarflux:sp_8>, [
	[<item:solarflux:photovoltaic_cell_6>, <item:solarflux:photovoltaic_cell_6>, <item:solarflux:photovoltaic_cell_6>], 
	[<item:solarflux:sp_7>, <item:forbidden_arcanus:arcane_dragon_egg>, <item:solarflux:sp_7>], 
	[<item:solarflux:sp_7>, <item:forbidden_arcanus:aquatic_dragon_scale>, <item:solarflux:sp_7>]
]);

//Reactor (Hardened)
craftingTable.removeRecipe(<item:powah:reactor_hardened>);
craftingTable.addShaped("4e5c26bb-6c68-4418-af72-5fb6230d3057", <item:powah:reactor_hardened>, [
	[<item:powah:uraninite>, <item:powah:capacitor_hardened>, <item:powah:uraninite>], 
	[<item:powah:capacitor_hardened>, <item:powah:reactor_basic>, <item:powah:capacitor_hardened>], 
	[<item:powah:uraninite>, <item:powah:capacitor_hardened>, <item:powah:uraninite>]
]);

//Reactor (Blazing)
craftingTable.removeRecipe(<item:powah:reactor_blazing>);
craftingTable.addShaped("f2c16b68-9a7c-4b98-a5aa-2418656d9f35", <item:powah:reactor_blazing>, [
	[<item:powah:uraninite>, <item:powah:capacitor_blazing>, <item:powah:uraninite>], 
	[<item:powah:capacitor_blazing>, <item:powah:reactor_hardened>, <item:powah:capacitor_blazing>], 
	[<item:powah:uraninite>, <item:powah:capacitor_blazing>, <item:powah:uraninite>]
]);

//Reactor (Niotic)
craftingTable.removeRecipe(<item:powah:reactor_niotic>);
craftingTable.addShaped("f2822545-49f9-4a7f-9528-cba10ce05116", <item:powah:reactor_niotic>, [
	[<item:powah:uraninite>, <item:powah:capacitor_niotic>, <item:powah:uraninite>], 
	[<item:powah:capacitor_niotic>, <item:powah:reactor_blazing>, <item:powah:capacitor_niotic>], 
	[<item:powah:uraninite>, <item:powah:capacitor_niotic>, <item:powah:uraninite>]
]);

//Reactor (Spirited)
craftingTable.removeRecipe(<item:powah:reactor_spirited>);
craftingTable.addShaped("a009eb25-c372-4ac8-bf94-42c81f609ec5", <item:powah:reactor_spirited>, [
	[<item:powah:uraninite>, <item:powah:capacitor_spirited>, <item:powah:uraninite>], 
	[<item:powah:capacitor_spirited>, <item:powah:reactor_niotic>, <item:powah:capacitor_spirited>], 
	[<item:powah:uraninite>, <item:powah:capacitor_spirited>, <item:powah:uraninite>]
]);

//Reactor (Nitro)
craftingTable.removeRecipe(<item:powah:reactor_nitro>);
craftingTable.addShaped("12a66a55-26c3-4bcf-8a3c-324e3e9017a2", <item:powah:reactor_nitro>, [
	[<item:powah:uraninite>, <item:powah:capacitor_nitro>, <item:powah:uraninite>], 
	[<item:powah:capacitor_nitro>, <item:powah:reactor_spirited>, <item:powah:capacitor_nitro>], 
	[<item:powah:uraninite>, <item:powah:capacitor_nitro>, <item:powah:uraninite>]
]);

