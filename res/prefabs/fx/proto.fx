{
	"type": "fx",
	"name": "proto",
	"duration": 5,
	"cullingRadius": 3,
	"children": [
		{
			"type": "gpuemitter",
			"name": "gpuemitter",
			"maxCount": 25000,
			"gravity": 0.1,
			"radius": 1.6,
			"children": [
				{
					"type": "object",
					"name": "object",
					"scaleX": 0.05,
					"scaleY": 0.05,
					"scaleZ": 0.05,
					"rotationX": -90,
					"children": [
						{
							"type": "polygon",
							"name": "polygon",
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
					"props": {}
				},
				{
					"type": "swarmSimulation",
					"name": "swarmSimulation",
					"props": {}
				}
			]
		}
	]
}