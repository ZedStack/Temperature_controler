// Imports
import g4p_controls.*;

// variables
int roomsAmonut;
int roomScale;
int sensorsAmount;
int globalTemperatureTimer;

// Classes
Temperature globaltemperature;

// vectors
PVector roomCoords;

//Arrays
Room   [] room;
Sensor [] sensor;

// Body functions
void mousePosition () {
	text (mouseX, 0, height);
	text (mouseY, 40, height);
}
void renderComplex () {
	stroke (255);

	room [0] = new Room (
		"Control room",
		(90 * roomScale) / 100,
		(70 * roomScale) / 100,
		int (roomCoords.x),
		int (roomCoords.y)
	);
	room [1] = new Room (
		"Room 1",
		(190 * roomScale) / 100,
		(140 * roomScale) / 100,
		int (roomCoords.x) + room [0].getWidth (),
		int (roomCoords.y)
	);
	room [2] = new Room (
		"Room 2",
		(room [1].getHeight () * roomScale) / 100,
		(room [1].getHeight () * roomScale) / 100,
		room [1].getX () + room [1].getWidth (),
		int (roomCoords.y)
	);
	room [3] = new Room (
		"Room 3",
		(room [2].getWidth () * roomScale) / 100,
		(90 * roomScale) / 100,
		room [2].getX (),
		room [2].getY () - 90
	);

	for (int i = 0; i < roomsAmonut; ++i) {
		room [i].render ();
	}
	// for (int i = 0; i < roomsAmonut; ++i) {
	// 	room [i].renderText ();
	// }
}
void renderSensors () {
	stroke (20, 200, 20);

	sensor [0] = new Sensor ( "Sensor #1", 100, 200 );
	sensor [1] = new Sensor ( "Sensor #2", 100, 250 );
	sensor [2] = new Sensor ( "Sensor #3", 290,  95 );
	sensor [3] = new Sensor ( "Sensor #4", 290, 135 );
	sensor [4] = new Sensor ( "Sensor #5", 290, 235 );
	sensor [5] = new Sensor ( "Sensor #6", 358, 295 );

	for (int i = 0; i < sensorsAmount; ++i) {
		sensor [i].render ();
	}
}

//- ## P R O C E S S I N G   S T A N D A R S ######################################################## -//
//- ################################################################################################# -//

void setup() {
	// variable initialization
	roomsAmonut            = 4;
	roomScale              = 100;
	sensorsAmount          = 6;
	globalTemperatureTimer = 0;

	// vectors
	roomCoords = new PVector (10, 170);

	// Classes
	globaltemperature = new Temperature (24.0, 37.0, 10.0);

	//Arrays
	room   = new Room [roomsAmonut];
	sensor = new Sensor [sensorsAmount];

	// Processing main settings
	// size       (800, 480, JAVA2D);
	size       (518, 321, JAVA2D); // 5" display
	// size       (640, 480, JAVA2D);
	// fullScreen (JAVA2D);
	frameRate  (60);
	background (20);
	noFill     ();

	// Visualization
	// renderComplex ();
	// renderSensors ();
	// createGUI ();
}

void draw() {
	background    (20);

	if (globalTemperatureTimer == 10) {
		globaltemperature.checkTemperature ();
		globalTemperatureTimer = 0;
	}

	stroke (255);
	text   (globaltemperature.getTemperature (), 0, height);
	// renderComplex ();
	// mousePosition ();
	// renderSensors ();
	// createGUI ();
	globalTemperatureTimer++;
}

//- ## P R O C E S S I N G   S T A N D A R S ######################################################## -//
//- ################################################################################################# -//