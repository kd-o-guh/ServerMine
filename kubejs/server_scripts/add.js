onEvent('recipes', event => {

    event.remove({ output: 'pipez:basic_upgrade' })
    event.shaped('pipez:basic_upgrade', [
        ' A ',
        'ABA',
        ' A '
    ], {
        A: 'minecraft:iron_nugget',
        B: 'minecraft:redstone'
    })

    event.remove({ output: 'pipez:improved_upgrade' })
    event.shaped('pipez:improved_upgrade', [
        ' A ',
        'ABA',
        ' A '
    ], {
        A: 'minecraft:gold_nugget',
        B: 'pipez:basic_upgrade'
    })

    event.remove({ output: 'pipez:advanced_upgrade' })
    event.shaped('pipez:advanced_upgrade', [
        ' A ',
        'ABA',
        ' A '
    ], {
        A: '#forge:nuggets/diamond',
        B: 'pipez:improved_upgrade'
    })

    event.remove({ output: 'pipez:ultimate_upgrade' })
    event.shaped('pipez:ultimate_upgrade', [
        ' A ',
        'ABA',
        ' A '
    ], {
        A: 'minecraft:netherite_ingot',
        B: 'pipez:advanced_upgrade'
    })

})

onEvent('item.tags', event => {
    event.add('forge:nuggets/diamond', 'silentgear:diamond_shard')
})