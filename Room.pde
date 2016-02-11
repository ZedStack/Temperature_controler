public class Room {
	// private variables
	private int _xAxis;
	private int _yAxis;
	private int _roomWidth;
	private int _roomHeight;
	private String _name;

	// Constructor
	public Room (String name,  int roomWidth, int roomHeight, int xAxis, int yAxis) {
		this._xAxis      = xAxis;
		this._yAxis      = yAxis;
		this._roomWidth  = roomWidth;
		this._roomHeight = roomHeight;
		this._name       = name;
	}

	// Public functions
	public void render () {
		stroke(255);

		rect (
			this._xAxis,
			this._yAxis,
			this._roomWidth,
			this._roomHeight
		);
	}
	public void renderText () {
		stroke (180);

		text (
			this._name,
			this._xAxis + 10,
			(this._yAxis + this._roomHeight) - 10
		);
	}

	// Returns
	public int getX      () { return this._xAxis; }
	public int getY      () { return this._yAxis; }
	public int getWidth  () { return this._roomWidth; }
	public int getHeight () { return this._roomHeight; }
}