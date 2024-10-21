{
	"type": "fx",
	"name": "proto",
	"duration": 5,
	"cullingRadius": 3,
	"children": [
		{
			"type": "gpuemitter",
			"name": "onMesh",
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
			"name": "swarm",
			"maxCount": 10000,
			"minLifeTime": 0.8,
			"minStartSpeed": 0,
			"gravity": 0.1,
			"radius": 1.6,
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
						},
						{
							"type": "shader",
							"name": "ColorAdd",
							"source": "h3d.shader.ColorAdd",
							"props": {
								"color": [
									0.9568627450980391,
									0.9568627450980391,
									0.9568627450980391
								]
							},
							"children": [
								{
									"type": "curve",
									"name": "color:h",
									"keys": [
										{
											"time": -14.1,
											"value": -0.75625,
											"mode": 2
										},
										{
											"time": -12.7,
											"value": -0.35625,
											"mode": 2
										},
										{
											"time": -10.85,
											"value": 0.5770833333333333,
											"mode": 2
										},
										{
											"time": -10.2,
											"value": -0.55625,
											"mode": 2
										},
										{
											"time": -5.3,
											"value": -1.1229166666666666,
											"mode": 2
										},
										{
											"time": -2.2,
											"value": -0.55625,
											"mode": 2
										},
										{
											"time": 0,
											"value": 0,
											"mode": 2
										}
									]
								},
								{
									"type": "curve",
									"name": "color:s",
									"keys": [
										{
											"time": 0,
											"value": 0,
											"mode": 2
										},
										{
											"time": 0.17857142857142858,
											"value": 0.6819444444444445,
											"mode": 2
										},
										{
											"time": 0.43214285714285716,
											"value": 0.8375,
											"mode": 2
										},
										{
											"time": 0.725,
											"value": 0.7708333333333334,
											"mode": 2
										},
										{
											"time": 0.825,
											"value": 0.3486111111111111,
											"mode": 2
										},
										{
											"time": 0.9607142857142857,
											"value": 0.015277777777777777,
											"mode": 2
										}
									]
								},
								{
									"type": "curve",
									"name": "color:l",
									"keys": [
										{
											"time": 0,
											"value": 1,
											"mode": 2
										},
										{
											"time": 0.11428571428571428,
											"value": 0.007638888888888862,
											"mode": 2
										},
										{
											"time": 0.29285714285714287,
											"value": 0.7298611111111111,
											"mode": 2
										},
										{
											"time": 0.32142857142857145,
											"value": 0.1298611111111111,
											"mode": 2
										},
										{
											"time": 0.5571428571428572,
											"value": 0.8520833333333333,
											"mode": 2
										},
										{
											"time": 0.6857142857142857,
											"value": 0,
											"mode": 2
										},
										{
											"time": 0.7535714285714286,
											"value": 0.7520833333333333,
											"mode": 2
										},
										{
											"time": 0.8321428571428572,
											"value": 0.09652777777777777,
											"mode": 2
										},
										{
											"time": 0.8892857142857142,
											"value": 0.8520833333333333,
											"mode": 2
										},
										{
											"time": 1,
											"value": 0,
											"mode": 2
										},
										{
											"time": 1.0214285714285714,
											"value": 0.6631944444444444,
											"mode": 2
										}
									]
								}
							]
						},
						{
							"type": "shader",
							"name": "AlphaMult",
							"source": "h3d.shader.AlphaMult",
							"props": {
								"alpha": 0.11
							},
							"children": [
								{
									"type": "curve",
									"name": "alpha",
									"keys": [
										{
											"time": 0,
											"value": 0,
											"mode": 2
										},
										{
											"time": 0.2,
											"value": 1,
											"mode": 2
										},
										{
											"time": 0.8,
											"value": 1,
											"mode": 2
										},
										{
											"time": 1,
											"value": 0,
											"mode": 2
										}
									]
								}
							]
						}
					]
				},
				{
					"type": "sphereSpawn",
					"name": "sphereSpawn",
					"props": {},
					"minRadius": 0.4
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
					"noiseScale": 30,
					"scrollSpeedX": 0,
					"scrollSpeedZ": 1,
					"innerTurmoil": 1,
					"persistence": 1
				}
			]
		},
		{
			"type": "gpuemitter",
			"name": "snow",
			"enabled": false,
			"maxCount": 10000,
			"minLifeTime": 1,
			"maxLifeTime": 2,
			"minStartSpeed": 0,
			"maxStartSpeed": 0,
			"gravity": 0.1,
			"radius": 1.6,
			"mode": "Camera",
			"align": "Speed",
			"children": [
				{
					"type": "object",
					"name": "particle",
					"scaleX": 0.1,
					"scaleY": 0.1,
					"scaleZ": 0.1,
					"rotationX": 90,
					"rotationY": 90,
					"children": [
						{
							"type": "polygon",
							"name": "polygon",
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
							"diffuseMap": "assets/common_textures/radial.png"
						}
					]
				},
				{
					"type": "gravitySimulation",
					"name": "gravitySimulation",
					"props": {},
					"children": [
						{
							"type": "curve",
							"name": "gravity:x",
							"keys": [
								{
									"time": 0,
									"value": 0,
									"mode": 2
								},
								{
									"time": 1,
									"value": 1,
									"mode": 2
								}
							]
						},
						{
							"type": "curve",
							"name": "gravity:y",
							"keys": [
								{
									"time": 0,
									"value": 0,
									"mode": 2
								},
								{
									"time": 1,
									"value": 1,
									"mode": 2
								}
							]
						},
						{
							"type": "curve",
							"name": "gravity:z",
							"keys": [
								{
									"time": 0.11071428571428571,
									"value": 0.015277777777777777,
									"mode": 2
								},
								{
									"time": 0.5321428571428571,
									"value": -0.9402777777777778,
									"mode": 2
								},
								{
									"time": 0.7464285714285714,
									"value": 0.015277777777777777,
									"mode": 2
								},
								{
									"time": 0.9964285714285714,
									"value": -0.006944444444444444,
									"mode": 2
								}
							]
						}
					]
				},
				{
					"type": "turbulenceSimulation",
					"name": "turbulenceSimulation",
					"props": {},
					"intensity": 0.27,
					"octaves": 1,
					"noiseScale": 5,
					"scrollSpeedX": 0.1,
					"scrollSpeedY": 0.1,
					"persistence": 1
				},
				{
					"type": "cubeSpawn",
					"name": "cubeSpawn",
					"enabled": false,
					"props": {}
				}
			]
		}
	]
}