SET "SetupResources=c:\MakerDen\Resources\"
SET "Solution=c:\MakerDen\Source\"
SET "RPiName=RPiWinIoT"

REM Clone user guide and setup resources

rd /s /q c:\MakerDen
git clone https://github.com/MakerDen/IoT-Maker-Den-Documentation-and-Resources.git --depth 1 c:\MakerDen

REM Kick off the Solution Clone

call c:\MakerDen\Resources\Setup\CloneMakerDen %RPiName%
