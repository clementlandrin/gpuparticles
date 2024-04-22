{
	"type": "fx",
	"name": "proto",
	"duration": 5,
	"cullingRadius": 3,
	"children": [
		{
			"type": "model",
			"name": "Hero_N",
			"source": "assets/models/Model.FBX",
			"enabled": false,
			"z": -1
		},
		{
			"type": "gpuemitter",
			"name": "gpuemitter",
			"maxCount": 4849,
			"maxLifeTime": 2,
			"minStartSpeed": 0,
			"gravity": 0.1,
			"radius": 1.6,
			"align": "Speed",
			"children": [
				{
					"type": "object",
					"name": "object",
					"scaleX": 0.05,
					"scaleY": 0.05,
					"scaleZ": 0.05,
					"rotationX": 90,
					"rotationY": 90,
					"children": [
						{
							"type": "polygon",
							"name": "polygon",
							"scaleY": 1.89,
							"rotationX": 90,
							"rotationY": 90,
							"kind": 0,
							"args": [
								0
							]
						},
						{
							"type": "material",
							"name": "material",
							"props": {
								"PBR": {
									"mode": "BeforeTonemapping",
									"blend": "Alpha",
									"shadows": true,
									"culling": "None",
									"depthTest": "Less",
									"colorMask": 15,
									"enableStencil": false
								}
							},
							"diffuseMap": "assets/common_textures/arrow.png"
						}
					]
				},
				{
					"type": "sphereSpawn",
					"name": "sphereSpawn",
					"props": {},
					"maxRadius": 0.5
				},
				{
					"type": "gravitySimulation",
					"name": "gravitySimulation",
					"enabled": false,
					"props": {}
				},
				{
					"type": "meshSpawn",
					"name": "meshSpawn",
					"props": {},
					"children": [
						{
							"type": "model",
							"name": "Model",
							"source": "assets/models/Model.FBX"
						}
					]
				},
				{
					"type": "orbitSpeedSimulation",
					"name": "orbitSpeedSimulation",
					"props": {},
					"axisX": 1
				},
				{
					"type": "turbulenceSimulation",
					"name": "turbulenceSimulation",
					"props": {},
					"intensity": 2,
					"octaves": 4,
					"noiseScale": 5,
					"scrollSpeedX": 0,
					"scrollSpeedZ": 1,
					"persistence": 1
				}
			]
		}
	]
}