/*!
 * Copyright (c) 2022 Darkosto Entertainment LLC
 *
 * All rights reserved.
 */

/*
 * This file is used to register things like biomes, items, blocks, etc. Topography searches for all scripts ending with Registration.js and executes them.
 */

/*
 * Registers a biome.
 * Currently extremely simple. Basically makes a blank biome.
 */
register(Util.Biomes.makeBiome("topography:infinite_dark"));