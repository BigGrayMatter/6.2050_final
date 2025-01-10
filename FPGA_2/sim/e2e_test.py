import serial
import time
import pygame
import sys

PORT = "/dev/cu.usbserial-8874292300961" 
BAUDRATE = 115200  # Match your UART baud rate

WINDOW_WIDTH = 320
WINDOW_HEIGHT = 180
POINT_RADIUS = 3
POINT_COLOR = (255, 255, 255)  # White point to match HDMI output
BACKGROUND_COLOR = (0, 0, 0)

def decode_coordinate(data):
    byte1_data = data[0] & 0x3F  # Bottom 6 bits
    byte2_data = data[1] & 0x3F  # Bottom 6 bits
    byte3_data = data[2] & 0x1F  # Bottom 5 bits
    
    # Check alignment bits
    alignment1 = (data[0] >> 6) & 0x3  # Should be 0b00
    alignment2 = (data[1] >> 6) & 0x3  # Should be 0b01
    alignment3 = (data[2] >> 6) & 0x3  # Should be 0b10
    
    if alignment1 != 0 or alignment2 != 1 or alignment3 != 2:
        print(f"Alignment error: {alignment1}, {alignment2}, {alignment3}")
        return None
        
    value = (byte1_data | 
            (byte2_data << 6) |
            (byte3_data << 12))
    
    return value

try:
    ser = serial.Serial(
        port=PORT,
        baudrate=BAUDRATE,
        bytesize=serial.EIGHTBITS,
        parity=serial.PARITY_NONE,
        stopbits=serial.STOPBITS_ONE
    )

    pygame.init()
    screen = pygame.display.set_mode((WINDOW_WIDTH, WINDOW_HEIGHT))
    pygame.display.set_caption("Projected Coordinates Visualizer")
    clock = pygame.time.Clock()

    print(f"Connected to {PORT} at {BAUDRATE} baud")

    while True:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit()
                ser.close()
                sys.exit()

        if ser.in_waiting >= 6:  # Wait for 6 bytes (3 for x, 3 for y)
            # Read x coordinate
            x_data = ser.read(3)
            x = decode_coordinate(x_data)
            
            # Read y coordinate
            y_data = ser.read(3)
            y = decode_coordinate(y_data)
            
            if x is not None and y is not None:
                print(f"Projected coordinates: ({x}, {y})")
                
                screen.fill(BACKGROUND_COLOR)
                
                # Only draw if coordinates are within bounds
                if 0 <= x < WINDOW_WIDTH and 0 <= y < WINDOW_HEIGHT:
                    pygame.draw.circle(screen, POINT_COLOR, (x, y), POINT_RADIUS)
                
                pygame.display.flip()
            
        clock.tick(60)

except KeyboardInterrupt:
    print("\nExiting...")
except serial.SerialException as e:
    print(f"Error opening serial port: {e}")
finally:
    pygame.quit()
    if 'ser' in locals():
        ser.close()