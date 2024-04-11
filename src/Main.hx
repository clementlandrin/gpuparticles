class Main extends hxd.App {
	static public  var inst : Main;
	public var benchmark : h3d.impl.Benchmark;

	static var prevCam : h3d.Camera;
	function reload() {
		prevCam = s3d.camera.clone();
		inst.dispose();
		inst = new Main();
	}

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
	}

	override function update( dt : Float ) {
		super.update(dt);
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
	}

	static function main() {
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