class Renderer extends h3d.scene.pbr.Renderer {
	override function mark(id : String) {
		Main.inst.benchmark.measure(id);
	}
}