// draw signal

float amplitude = 100.0 , frequency = 1000, phase = 0; 

void drawNewSignal()
{
    int i; 
    
    fill(0);
    noStroke();
    rect(xL, yT, xS, yS);
    
    stroke (255, 255, 0);         // gelbe Linien
    for (i = 1; i < 128; i++)
    {
        line(xL + (i-1) * 4, yT + yS - (signal[i-1]) * 2, 
             xL +  i    * 4, yT + yS - (signal[i]    * 2)); 
    }
}


void prepareNewSinusSignal(float a, float f, float p)
{
    int i;
    
    for (i = 0; i < 128; i++)
    {
      
        signal[i] = 128 + (int)(a * sin((i * f/20371) + p));  // 20371 = 2pi / 128
      
    }
    newSignal = true; 
}
