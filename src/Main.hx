import h3d.impl.GlDriver;
import hrt.prefab.fx.gpuemitter.MeshSpawn;
import hrt.prefab.fx.gpuemitter.GPUEmitter;

enum Movement {
	None;
	Circle;
	Random;
}

class Main extends hxd.App {
	static public var inst : Main;
	static var prevCam : h3d.Camera;
	static var movement : Movement = None;

	public var benchmark : h3d.impl.Benchmark;
	public var time : Float = 0.0;
	public var attachTo : h3d.scene.Object;

	override function init() {
		s3d.renderer = new Renderer();
		benchmark = new h3d.impl.Benchmark();
		benchmark.enable = true;
		s2d.add(benchmark, 10);
		var shared = new hrt.prefab.ContextShared(s3d);

		var sceneRes = hxd.Res.prefabs.scene;
		sceneRes.load().make(shared);
		sceneRes.watch(reload);

		var camController = new h3d.scene.CameraController(10, s3d);
		if ( prevCam != null ) {
			s3d.camera.load(prevCam);
			camController.loadFromCamera(false);
		}

		attachTo = s3d.find(o -> o.name == "attachTo" ? o : null);

		for ( s in s3d.findAll(o -> Std.downcast(o, h3d.scene.Skin)) )
			s.visible = false;

		// var meshBatch = new h3d.scene.MeshBatch(h3d.prim.Sphere.defaultUnitSphere(), null, s3d);
		// meshBatch.begin();
		// meshBatch.worldPosition = new h3d.Matrix();
		// for ( i in 0...10 ) {
		// 	meshBatch.worldPosition.initTranslation(i / 10.0, 0.0, 0.0);
		// 	meshBatch.emitInstance();
		// }
	}

	function reload() {
		prevCam = s3d.camera.clone();
		inst.dispose();
		inst = new Main();
	}

	override function update( dt : Float ) {
		super.update(dt);
		time += dt;
		if ( hxd.Key.isPressed(hxd.Key.F5) )
			reload();
		benchmark.setPosition(0, s2d.height - benchmark.height);
		benchmark.begin();
		if ( hxd.Key.isPressed(hxd.Key.F6) ) {
			if ( !benchmark.visible ) {
				benchmark.visible = true;
				benchmark.measureCpu = false;
			} else if ( benchmark.measureCpu )
				benchmark.visible = false;
			else
				benchmark.measureCpu = true;
		}
		if ( hxd.Key.isPressed(hxd.Key.F1) ) {
			movement = switch (movement) {
			case None:
				Circle;
			case Circle:
				Random;
			case Random:
				None;
			}
		}
		if ( hxd.Key.isPressed(hxd.Key.F2) ) {
			var gpuEmitter = s3d.findAll(o -> Std.downcast(o, GPUEmitterObject));
			for ( g in gpuEmitter ) {
				var sh = g.spawnPass.getShader(MeshSpawn.MeshSpawnShader);
				if ( sh != null )
					sh.attachTo(attachTo.find(o -> Std.downcast(o, h3d.scene.Mesh)));
			}
		}
		var radius = 2.0;
		inline function debugMoveObj(o : h3d.scene.Object) {
			switch(movement) {
			case None:
				o.setPosition(0.0, 0.0, 0.0);
				o.setRotation(0.0, 0.0, 0.0);
			case Circle:
				var angle = time * 2.0;
				o.setPosition(radius * Math.cos(angle), radius * Math.sin(angle), 0.0);
				o.setRotation(0.0, 0.0, angle);
			case Random:
				o.setPosition(radius * Math.cos(time * 2.0), radius * Math.sin(time * 2.0), 0.0);
				o.setRotation(radius * Math.sin(time * 3.0), 1.215 * time, 2.0 * time);
			}
		}
		var gpuEmitters = s3d.findAll(o -> Std.downcast(o, GPUEmitter.GPUEmitterObject));
		for ( gpuEmitter in gpuEmitters ) {
			var meshSpawnShader = gpuEmitter.spawnPass.getShader(hrt.prefab.fx.gpuemitter.MeshSpawn.MeshSpawnShader);
			if ( meshSpawnShader == null )
				debugMoveObj(gpuEmitter);
			else
				debugMoveObj(meshSpawnShader.mesh);	
		}

		if ( attachTo != null )
			attachTo.z = Math.sin(time);
	}

	static function main() {
		#if hlsdl
		GlDriver.enableComputeShaders();
		#end
		h3d.mat.MaterialSetup.current = new h3d.mat.PbrMaterialSetup();
		hxd.res.Resource.LIVE_UPDATE = true;
		hxd.Res.initLocal();

		inst = new Main();

		var shaderDumpDir = "shaders/";
		if ( sys.FileSystem.exists(shaderDumpDir) )
			for ( f in sys.FileSystem.readDirectory(shaderDumpDir) ) 
				sys.FileSystem.deleteFile(shaderDumpDir + f);
	}
}