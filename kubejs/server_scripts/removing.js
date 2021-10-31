onEvent('recipes', e => {

    e.remove({id: 'appliedenergistics2:grinder/flour'})

    let hided = [
    'titanium:iron_gear',
    'titanium:gold_gear',
    'titanium:diamond_gear',
    'appliedenergistics2:flour',
    'emendatusenigmatica:quartz_gear'
    ]
    //removes
    let changed = [
    
    ]
    for (let item of hided){
        e.remove({output: item})
    }
    for (let trocado of changed){
        e.remove({output: trocado, type: 'minecraft:crafting_shaped'})
        e.remove({output: trocado, type: 'minecraft:crafting_shapeless'})
        e.remove({output: trocado, type: 'silentgear:damage_item'})
    }

})