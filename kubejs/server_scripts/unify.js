// priority: 4

global["RECIPE_UNIFY"] = true
global["HIDE_UNIFIED_ITEMS"] = true

global["unifypriorities"] = [
    "emendatusenigmatica",
    "minecraft",
    "kubejs",
    "thermal",
    "jaopca",
    "silents_mechanisms",
    "mekanism",
    "create",
    "appliedenergistics2",
    "dustrial_decor"
]

var tags = [
    "forge:dusts/quartz",
    "forge:dusts/obsidian",
    "forge:ingots/redstone_alloy",
    "forge:dough/wheat"
]

var tagGen = [
    "lapis_lazuli=storage_blocks,ingots,nuggets,dusts,ores,gears,plates,rods",
    "iron=storage_blocks,ingots,nuggets,dusts,ores,gears,plates,rods",
    "gold=storage_blocks,ingots,nuggets,dusts,ores,gears,plates,rods",
    "copper=storage_blocks,ingots,nuggets,dusts,ores,gears,plates,rods",
    "tin=storage_blocks,ingots,nuggets,dusts,ores,gears,plates,rods",
    "lead=storage_blocks,ingots,nuggets,dusts,ores,gears,plates,rods",
    "bronze=storage_blocks,ingots,nuggets,dusts,gears,plates,rods",
    "steel=storage_blocks,ingots,nuggets,dusts,gears,plates,rods",
    "uranium=storage_blocks,ingots,nuggets,dusts,ores,gears,plates,rods",
    "zinc=storage_blocks,ingots,nuggets,dusts,ores,gears,plates,rods",
    "brass=storage_blocks,ingots,nuggets,dusts,gears,plates,rods",
    "silver=storage_blocks,ingots,nuggets,dusts,ores,gears,plates,rods",
    "nickel=storage_blocks,ingots,nuggets,dusts,ores,gears,plates,rods",
    "platinum=storage_blocks,ingots,nuggets,dusts,ores,gears,plates,rods",
    "aluminum=storage_blocks,ingots,nuggets,dusts,ores,gears,plates,rods",
    "enderium=storage_blocks,ingots,nuggets,dusts,gears,plates,rods",
    "signalum=storage_blocks,ingots,nuggets,dusts,gears,plates,rods",
    "electrum=storage_blocks,ingots,nuggets,dusts,gears,plates,rods",
    "lumium=storage_blocks,ingots,nuggets,dusts,gears,plates,rods",
    "fluorite=storage_blocks,ingots,nuggets,dusts,ores,gears,plates,rods,gems",
    "certus_quartz=storage_blocks,ingots,nuggets,dusts,ores,gears,plates,rods,gems",
    "charged_certus_quartz=storage_blocks,ingots,nuggets,dusts,ores,gears,plates,rods,gems",
    "fluix=storage_blocks,ingots,nuggets,dusts,ores,gears,plates,rods,gems",
]
for (let line of tagGen) {
    let data = line.split("=")
    for (let type of data[1].split(",")) {
        tags.push("forge:" + type + "/" + data[0])
    }
}

// Replace input and output of recipes (and iterate over tags!)
onEvent("recipes", event => {
    // Iterate over tags (they should be loaded)
    var tagitems = new Map()
    tagLoop:
    for (let tag of tags) {
        let ingr = Ingredient.of("#"+tag)
        if (ingr) {
            let stacks = ingr.getStacks().toArray()
            for (let mod of global["unifypriorities"]) {
                for (let stack of stacks) {
                    if (stack.getMod() == mod) {
                        tagitems[tag] = stack.getId()
                        continue tagLoop
                    }
                }
            }
            if (stacks.length > 0) tagitems[tag] = stacks[0].getId()
        }
    }
    // Update tags
    global["unifytags"] = tags
    global["tagitems"] = tagitems
    
    // Unify the rest
    if (global["RECIPE_UNIFY"]) {
        for (let tag of global["unifytags"]) {
            let ingr = Ingredient.of("#"+tag)
            if (ingr) {
                let stacks = ingr.getStacks().toArray()
                let oItem = global["tagitems"][tag]
                for (let tItem of stacks) {
                    event.replaceInput({}, tItem.getId(), "#"+tag)
                    event.replaceOutput({}, tItem.getId(), oItem)
                }
            }
        }
    }
})