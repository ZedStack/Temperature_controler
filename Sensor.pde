public class Sensor {
	private int _xAxis;
	private int _yAxis;
	private String _ID;

	public Sensor (String ID, int xAxis, int yAxis) {
		this._ID = ID;
		this._xAxis = xAxis;
		this._yAxis = yAxis;
	}

	public void render () {
		rect (
			this._xAxis,
			this._yAxis,
			15,
			15
		);
	}

}