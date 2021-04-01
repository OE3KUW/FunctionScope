//****************************************************************
// PROCESSING - FunctionScope
// қuran 2021 March 
//****************************************************************

// const:
int xL = 20;
int yT = 20;
int xB = 45;
int yB = 12;
int xS = 512;
int yS = 500;
int xW = xL + xS / 2; 
int yW = yT + yT * 4 + yS;

int[] signal = new int[128];
boolean newSignal; 




button sinus;      
button triangle;
button rectangle;
button freq;
button ampli;
button phase_;




void setup()
{
  size(1000, 700);
  background(20,80,100);
  
  // Scope:
  
  fill(0); 
  rect(xL, yT, xS, yS);
  newSignal = false; 
  
  // Buttons:
  
  sinus = new button(xL, yT - yB, "sinus");
  triangle = new button(xL + xB, yT - yB, "triangle");
  rectangle = new button(xL + xB + xB, yT - yB, "rect");
  
  freq  = new button(xL, yT + yS + yB,    "freq"); 
  ampli = new button(xL, yT + yS + yB * 3,"ampli");   
  phase_ = new button(xL, yT + yS + yB * 5,"phase"); 
  
  // Wheel:
  
  drawWheel();
  
  // all inits:
 
  
}

void draw()
{
   int i; 
  
   sinus.moveOver(mouseX,mouseY);
   triangle.moveOver(mouseX,mouseY);
   rectangle.moveOver(mouseX,mouseY);
   ampli.moveOver(mouseX,mouseY);
   freq.moveOver(mouseX,mouseY);
   phase_.moveOver(mouseX,mouseY);
   
   
   if (newSignal)
   {
       drawNewSignal();
       
       newSignal = false;
       drawWheel();
   }
   
}


void mousePressed()
{
int i; 

  if (sinus.click(mouseX, mouseY))
  {
    frequency = 1000;
    amplitude = 100;
    phase = 0;
    prepareNewSinusSignal(amplitude, frequency, phase);
    angle = 0;
  }
  
  if (triangle.click(mouseX, mouseY))
  {
    println("click! - Dreieck");
  }

  if (rectangle.click(mouseX, mouseY))
  {
    println("click! - Dreieck");
  }

  if (ampli.click(mouseX, mouseY))
  {
    wheelMode = 2; 
    angle = 0; 
    drawWheel();

  }
  if (freq.click(mouseX, mouseY))
  {
    wheelMode = 1; 
    angle = 0; 
    println("freq!");
    drawWheel();

  }
  if (phase_.click(mouseX, mouseY))
  {
    wheelMode = 3; 
    angle = 0; 
    println("freq!");
    drawWheel();

  }
  
  

  if (clickWheel(mouseX, mouseY))
  {
    if (mouseButton == LEFT)
    {
        angle += 0.2;
    }

    if (mouseButton == RIGHT)
    {
        angle -= 0.2;
    }
    
    if (wheelMode == 1) // Frequency
    {
       frequency = 1000* (1 + angle);
       prepareNewSinusSignal(amplitude, frequency, phase);
       
    }

    if (wheelMode == 2) // Amplitude
    {
       amplitude = 100 * (1 + angle);
       prepareNewSinusSignal(amplitude, frequency, phase);
       
    }
    
    if (wheelMode == 3) // Phase
    {
       phase = 0.1 + angle;
       prepareNewSinusSignal(amplitude, frequency, phase);
       
    }
    
    
    

    drawWheel();
    
  }



}
