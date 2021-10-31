onEvent("recipes", event => {
    event.custom({
        "type": "silents_mechanisms:alloy_smelting",
        "process_time": 600,
        "ingredients": [{
                "value": [{
                    "tag": "forge:ingots/crimson_steel"
                }, ],
                "count": 1
            },
            {
                "value": {
                    "item": "silentgear:azure_electrum_ingot"
                },
                "count": 1
            },
            {
                "value": {
                    "item": "silentgear:crushed_shulker_shell"
                },
                "count": 1
            },
            {
                "value": {
                    "item": "minecraft:netherite_scrap"
                },
                "count": 1
            }
        ],
        "result": {
            "item": "silentgear:tyrian_steel_ingot",
            "count": 4
        }

    })
})