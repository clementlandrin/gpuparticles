{
	"type": "fx",
	"name": "proto",
	"duration": 5,
	"cullingRadius": 3,
	"children": [
		{
			"type": "gpuemitter",
			"name": "gpuemitter",
			"enabled": false,
			"maxCount": 200000,
			"maxLifeTime": 2,
			"minStartSpeed": 0,
			"maxStartSpeed": 0.1,
			"gravity": 0.1,
			"radius": 1.6,
			"mode": "Camera",
			"align": "Speed",
			"children": [
				{
					"type": "object",
					"name": "particle",
					"scaleX": 0.15,
					"scaleY": 0.15,
					"scaleZ": 0.15,
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
					"type": "gravitySimulation",
					"name": "gravitySimulation",
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
					"type": "turbulenceSimulation",
					"name": "turbulenceSimulation",
					"props": {},
					"intensity": 0.11,
					"octaves": 4,
					"noiseScale": 5,
					"scrollSpeedY": 1,
					"persistence": 1
				},
				{
					"type": "sphereSpawn",
					"name": "sphereSpawn",
					"enabled": false,
					"props": {},
					"minRadius": 0.8
				}
			]
		},
		{
			"type": "gpuemitter",
			"name": "gpuemitter",
			"enabled": false,
			"maxCount": 200000,
			"maxLifeTime": 2,
			"minStartSpeed": 0,
			"gravity": 0.1,
			"radius": 1.6,
			"mode": "Camera",
			"align": "Speed",
			"children": [
				{
					"type": "object",
					"name": "particle",
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
					"minRadius": 0.8
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
					"intensity": 1.5,
					"octaves": 4,
					"noiseScale": 5,
					"scrollSpeedX": 0,
					"scrollSpeedZ": 1,
					"persistence": 1
				}
			]
		},
		{
			"type": "gpuemitter",
			"name": "gpuemitter",
			"maxCount": 200000,
			"maxLifeTime": 2,
			"minStartSpeed": 0,
			"maxStartSpeed": 0,
			"gravity": 0.1,
			"radius": 1.6,
			"mode": "Camera",
			"cameraModeDistance": 150,
			"align": "Speed",
			"children": [
				{
					"type": "object",
					"name": "particle",
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
					"type": "gravitySimulation",
					"name": "gravitySimulation",
					"props": {}
				},
				{
					"type": "turbulenceSimulation",
					"name": "turbulenceSimulation",
					"enabled": false,
					"props": {},
					"intensity": 1.5,
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