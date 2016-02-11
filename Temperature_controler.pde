// variabes
int roomsAmonut;
float roomScale;

// vectors
PVector roomCoords;

//Arrays
// ArrayList<Room> rooms = new ArrayList<Room>();
Room [] room;

// Body functions
void renderComplex () {
	stroke (255);
	scale  (roomScale);

	room [0] = new Room (
		"Control room",
		60,
		50,
		int (roomCoords.x),
		int (roomCoords.y)
	);
	room [1] = new Room (
		"Room 1",
		190,
		140,
		int (roomCoords.x) + room [0].getWidth (),
		int (roomCoords.y)
	);
	room [2] = new Room (
		"Room 2",
		room [1].getHeight (),
		room [1].getHeight (),
		room [1].getX () + room [1].getWidth (),
		int (roomCoords.y)
	);
	room [3] = new Room (
		"Room 3",
		room [2].getWidth (),
		90,
		room [2].getX (),
		room [2].getY () - 90
	);

	for (int i = 0; i < roomsAmonut; ++i) {
		room [i].render ();
	}
	for (int i = 0; i < roomsAmonut; ++i) {
		room [i].renderText ();
	}
}

//- ## P R O C E S S I N G   S T A N D A R S ######################################################### -//
//- ################################################################################################## -//

void setup() {
	// variable initialization
	roomsAmonut = 4;
	roomScale   = 1.3;

	// vectors
	roomCoords = new PVector (10, 100);

	// Classes

	//Arrays
	// rooms = new ArrayList<Room> ();
	room = new Room [roomsAmonut];

	// Processing main settings
	size       (640, 480);
	background (20);
	noFill     ();

	renderComplex ();
}

void draw() {
	
}

//- ## P R O C E S S I N G   S T A N D A R S ######################################################### -//
//- ################################################################################################## -//