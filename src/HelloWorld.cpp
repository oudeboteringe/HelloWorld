#include "s3e.h"
#include <string>
using namespace std;

// Main entry point for the application
int main()
{
	int iMess_ = 0;
	int nmsSleep_ = 1000;
	string mess_;

    // Wait for a quit request from the host OS
    while (!s3eDeviceCheckQuitRequest())
    {
        // Fill background blue
        s3eSurfaceClear(0, 0, 255);
 
        // Print a line of debug text to the screen at top left (0,0)
        // Starting the text with the ` (backtick) char followed by 'x' and a hex value
        // determines the colour of the text.
		if (iMess_ == 0)
		{
			mess_ = "`xffffffCristiane is mijn schatje!";
		}
		else
		{
			mess_ = "`xffffffCristiane is mijn baby!";
		}
		s3eDebugPrint(120, 150, mess_.c_str(), 0);
 
        // Flip the surface buffer to screen
        s3eSurfaceShow();
 
        // Sleep for nmsSleep_ to allow the OS to process events etc.
		s3eDeviceYield(nmsSleep_);

		iMess_++;
		if (iMess_ > 1)
		{
			iMess_ = 0;
		}
    }
    return 0;
}