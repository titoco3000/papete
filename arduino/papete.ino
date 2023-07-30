/*
  Esse script deve ser colocado na papete. O circuito que ele espera é o descrito a seguir,
  para dois tipos de arduino diferentes:

  MPU6050  NodeMCU      Description
  ======= ==========    ====================================================
  VCC     VU (3.3V)     Power
  GND     G             Ground
  SCL     D1 (GPIO05)   I2C clock
  SDA     D2 (GPIO04)   I2C data
  XDA     not connected
  XCL     not connected
  AD0     not connected
  INT     not connected


  MPU6050  UNO          Description
  ======= ==========    ====================================================
  VCC     VU (5V)       Power
  GND     G             Ground
  SCL     A5            I2C clock
  SDA     A4            I2C data
  XDA     not connected
  XCL     not connected
  AD0     not connected
  INT     not connected
*/

#include <Adafruit_MPU6050.h>
#include <Adafruit_Sensor.h>
#include <Wire.h>

char lado = 'D';

Adafruit_MPU6050 mpu;
//acelerometro, giroscopio e termometro
sensors_event_t a, g, temp;

void setup() {
  Serial.begin(9600);

  //tenta iniciar
  if (!mpu.begin()) {
    Serial.println("Falha ao localizar MPU6050");
    while (1) {
      delay(10);
    }
  }

  
  /*
  configurações do MPU, copiado de:
  https://wiki.dfrobot.com/How_to_Use_a_Three-Axis_Accelerometer_for_Tilt_Sensing
  */
  mpu.setAccelerometerRange(MPU6050_RANGE_8_G);
  mpu.setGyroRange(MPU6050_RANGE_500_DEG);
  mpu.setFilterBandwidth(MPU6050_BAND_21_HZ);

  //da um tempinho para iniciar
  delay(100);
}

double pitch, roll;
void loop() {
  //obtem leitura do sensor
  mpu.getEvent(&a, &g, &temp);

  //obtem os angulos em rad
  pitch = atan2((- a.acceleration.x) , sqrt(a.acceleration.y * a.acceleration.y + a.acceleration.z * a.acceleration.z));
  roll = atan2(a.acceleration.y , a.acceleration.z); 

  //imprime valores
  Serial.print(lado);
  Serial.print(pitch,6);
  Serial.print("\t");
  Serial.println(roll,6);
  delay(50);
}
