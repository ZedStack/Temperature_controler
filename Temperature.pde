public class Temperature {
	private float _initialTemperature;
	private float _maxTemperature;
	private float _minTemperature;
	private float _currentTemperature;

	public Temperature (float initilaTemperature,float maxtemperature, float minTemperature) {
		this._initialTemperature = initilaTemperature;
		this._maxTemperature     = maxtemperature;
		this._minTemperature     = minTemperature;

		this._currentTemperature = initilaTemperature;
	}

	public void checkTemperature () {
		if (
			this._currentTemperature > this._minTemperature &&
			this._currentTemperature < this._maxTemperature)
		{
			int randomFactor = int (random(0, 2));

			if (randomFactor == 0) {
				this._currentTemperature -= 0.2;
			}
			else if (randomFactor == 1) {
				this._currentTemperature += 0.2;
			}
		}
		else this._currentTemperature = this._initialTemperature;
	}

	public float getTemperature () {
		return this._currentTemperature;
	}
}