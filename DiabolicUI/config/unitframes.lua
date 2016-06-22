local ADDON, Engine = ...
local path = ([[Interface\AddOns\%s\media\]]):format(ADDON)

-- static config 
local config = {
	structure = {
		
	},
	visuals = {
		-- artwork is attached to the actionbar module's "Controller: Main" widget's frame
		artwork = {
			health = {
				backdrop = {
					size = { 256, 256 },
					position = { "BOTTOMLEFT", -256 + (256 - 160)/2 -8, -(256 - 160)/2 -6},
					texture = path .. [[textures\DiabolicUI_PlayerGlobes_150x150_Backdrop.tga]],
					color = { 0, 0, 0, 1 }
				},
				overlay = {
					size = { 256, 256 },
					position = { "BOTTOMLEFT", -256 + (256 - 160)/2 -8, -(256 - 160)/2 -6},
					texture = path .. [[textures\DiabolicUI_PlayerGlobes_150x150_Border.tga]],
					color = { 1, 1, 1, 1 }
				}
			},
			power = {
				backdrop = {
					size = { 256, 256 },
					position = { "BOTTOMRIGHT", 256 - (256 - 160)/2 +8, -(256 - 160)/2 -6},
					texture = path .. [[textures\DiabolicUI_PlayerGlobes_150x150_Backdrop.tga]],
					color = { 0, 0, 0, 1 }
				},
				overlay = {
					size = { 256, 256 },
					position = { "BOTTOMRIGHT", 256 - (256 - 160)/2 +8, -(256 - 160)/2 -6},
					texture = path .. [[textures\DiabolicUI_PlayerGlobes_150x150_Border.tga]],
					color = { 1, 1, 1, 1 }
				}
			}
		},
		units = {
			player = {
				castbar = {
					size = { 227, 15 },
					--position = { "CENTER", "UICenter", "CENTER", 0, -200 },
					position = { "BOTTOM", "Main", "TOP", 0, 160 },
					texture = path .. [[statusbars\DiabolicUI_StatusBar_512x64_Dark_Warcraft.tga]],
					color = { .4, .4, .9 }, 
					safezone = {
						delay = {
							font_object = DiabolicCastBarLatency,
							position = { "BOTTOMRIGHT", -4, 1 }
						}
					},
					name = {
						font_object = DiabolicCastBarNormal,
						position = { "BOTTOM", 0, -30 }
					},
					value = {
						
					},
					icon = {
						
					},
					spark = {
						size = { 128, 128 },
						texture = path .. [[statusbars\DiabolicUI_StatusBar_128x128_Spark_Warcraft.tga]],
						flash = { 2.75, 1.25, .45, .95 }
					},
					backdrop = {
						size = { 512, 64 },
						position =  { "TOPLEFT", -142, 25 },
						texture = path .. [[textures\DiabolicUI_Target_227x15_Backdrop.tga]]
					},
					border = {
						size = { 512, 64 },
						position =  { "TOPLEFT", -142, 25 },
						texture = path .. [[textures\DiabolicUI_Target_227x15_Border.tga]]
					}
				},
				left = {
					size = { 140, 140 }, 
					position = { "BOTTOMLEFT", "Main", "BOTTOMLEFT", -140 + (140 - 160)/2 -8, -(140 - 160)/2 -6 },
					orbs = {
						health = {
							size = { 150, 150 },
							position = { "CENTER" },
							color = { 175/255, 17/255, 28/255 }, -- blood
							--color = { 138/255, 7/255, 7/255 }, -- blood
							spark = {
								size = { 128, 128 },
								overflow = 8,
								texture = path .. [[statusbars\DiabolicUI_StatusBar_128x128_SparkVertical_Warcraft.tga]],
								flash = { 2.75, 1.25, .45, .95 },
								flash_size = { 64, 16 },
								flash_texture = path .. [[textures\DiabolicUI_Tooltip_Header_TitleBackground.tga]]
							},
							layers = {
								gradient = {
									alpha = .85,
									texture = path .. [[textures\DiabolicUI_HealthGlobe512x512_Gradient.tga]]
								},
								moon = {
									alpha = .5,
									texture = path .. [[textures\DiabolicUI_HealthGlobe512x512_Moon.tga]]
								},
								smoke = {
									alpha = .5,
									texture = path .. [[textures\DiabolicUI_HealthGlobe512x512_Smoke.tga]]
								},
								shade = {
									alpha = .9,
									texture = path .. [[textures\DiabolicUI_HealthGlobe512x512_Shade.tga]]
								}
							}
						}
					}
				},
				right = {
					size = { 140, 140 },
					position = { "BOTTOMRIGHT", "Main", "BOTTOMRIGHT", 140 - (140 - 160)/2 +8, -(140 - 160)/2 -6 },
					orbs = {
						power = {
							size = { 150, 150 },
							position = { "CENTER" },
							color = { 37/255, 37/255, 198/255 },
							spark = {
								size = { 128, 128 },
								overflow = 8,
								texture = path .. [[statusbars\DiabolicUI_StatusBar_128x128_SparkVertical_Warcraft.tga]],
								flash = { 2.75, 1.25, .45, .95 },
								flash_size = { 64, 16 },
								flash_texture = path .. [[textures\DiabolicUI_Tooltip_Header_TitleBackground.tga]]
							},
							layers = {
								gradient = {
									alpha = .85,
									texture = path .. [[textures\DiabolicUI_HealthGlobe512x512_Gradient.tga]]
								},
								moon = {
									alpha = .75,
									texture = path .. [[textures\DiabolicUI_HealthGlobe512x512_Moon.tga]]
								},
								smoke = {
									alpha = .5,
									texture = path .. [[textures\DiabolicUI_HealthGlobe512x512_Smoke.tga]]
								},
								shade = {
									alpha = .75,
									texture = path .. [[textures\DiabolicUI_HealthGlobe512x512_Shade.tga]]
								}
							}
						}
					}
				}
			},
			target = {
				size = { 346, 40 },
				position = { "TOP", "UICenter", "TOP", 0, -(66 + 3) },
				health = {
					size = { 305, 15 },
					position = { "TOP", 0, -3 },
					texture = path .. [[statusbars\DiabolicUI_StatusBar_512x64_Dark_Warcraft.tga]]
				},
				power = { 
					size = { 274, 10 },
					position = { "TOP", 0, -(3 + 25) },
					texture = path .. [[statusbars\DiabolicUI_StatusBar_512x64_Dark_Warcraft.tga]]
				},
				name = {
					font_object = DiabolicUnitFrameLarge,
					position = { "TOP", 0, 32 }
				},
				classification = {
					font_object = DiabolicUnitFrameNormal,
					position = {
						normal_single = { "TOP", 0, -50 +12 },
						normal_double = { "TOP", 0, -50 },
						boss_single = { "TOP", 0, -72 +12 },
						boss_double = { "TOP", 0, -72 }
					}
				},
				textures = {
					size = { 512, 128 },
					position = { "TOP", 0, 53 },
					layers = {
						backdrop = {
							single = path .. [[textures\DiabolicUI_Target_305x15_Backdrop.tga]],
							double = path .. [[textures\DiabolicUI_Target_305x15_Backdrop2Bars.tga]]
						},
						border = {
							standard_single = {
								normal = path .. [[textures\DiabolicUI_Target_305x15_Border.tga]],
								highlight = path .. [[textures\DiabolicUI_Target_305x15_BorderHighlight.tga]]
							},
							standard_double = {
								normal = path .. [[textures\DiabolicUI_Target_305x15_Border2Bars.tga]],
								highlight = path .. [[textures\DiabolicUI_Target_305x15_Border2BarsHighlight.tga]]
							},
							boss_single = {
								normal = path .. [[textures\DiabolicUI_Target_305x15_BorderBoss.tga]],
								highlight = path .. [[textures\DiabolicUI_Target_305x15_BorderBossHighlight.tga]]
							},
							boss_double = {
								normal = path .. [[textures\DiabolicUI_Target_305x15_BorderBoss2Bars.tga]],
								highlight = path .. [[textures\DiabolicUI_Target_305x15_BorderBoss2BarsHighlight.tga]]
							}
						}
					}
				}
			},
			tot = {},
			focus = {},
			pet = {
				size = { 90, 17 + 8 + 70 },
				position = { "TOPLEFT", "UICenter", "TOPLEFT", 60, -60 },
				backdrop = {
					texture_size = { 256, 64 },
					texture_position = { "TOPLEFT", -83, 24 -(70 + 8)},
					texture = path .. [[textures\DiabolicUI_Target_80x15_Backdrop.tga]]
				},
				border = {
					texture_size = { 256, 64 },
					texture_position = { "TOPLEFT", -83, 24 -(70 + 8)},
					textures = {
						normal = path .. [[textures\DiabolicUI_Target_80x15_Border.tga]],
						highlight = path .. [[textures\DiabolicUI_Target_80x15_Highlight.tga]]
					}
				},
				health = {
					size = { 82, 9 },
					position = { "BOTTOM", 0, 7 },
					texture = path .. [[statusbars\DiabolicUI_StatusBar_512x64_Dark_Warcraft.tga]]
				},
				power = { 
					size = { 82, 3 },
					position = { "BOTTOM", 0, 3 },
					texture = path .. [[statusbars\DiabolicUI_StatusBar_512x64_Dark_Warcraft.tga]]
				},
				portrait = {
					size = { 70, 70 },
					position = { "TOP", 0, 0 },
					texture_size = { 128, 128 }, 
					texture_position = { "CENTER", 0, 0 },
					textures = {
						backdrop = path .. [[textures\DiabolicUI_Target_80x80_PortraitBackdrop.tga]],
						border = path .. [[textures\DiabolicUI_Target_80x80_PortraitBorder.tga]],
						highlight = path .. [[textures\DiabolicUI_Target_80x80_PortraitBorderHighlight.tga]]
					}
				},
				name = {
					font_object = DiabolicUnitFrameNormal,
					position = { "TOP", 0, 28 }
				}
			},
			party = {},
			raid = {}
		},
		colors = {
			
		}
	}
}

-- default user settings
local db = {
	player = {
	},
	target = {
	}
}

Engine:NewStaticConfig("UnitFrames", config)
Engine:NewConfig("UnitFrames", db)
