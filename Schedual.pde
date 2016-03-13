import javax.swing.*;
import java.util.Calendar;
String[] mon = {"", "", "", "", "", ""};
String[] tues = {"", "", "", "", "", ""};
String[] wed = {"", "", "", "", "", ""};
String[] thurs = {"", "", "", "", "", ""};
String[] fri = {"", "", "", "", "", ""};

Calendar c;
int dayOfWeek;

void setup() {
  c = Calendar.getInstance();
  dayOfWeek = c.get(Calendar.DAY_OF_WEEK) - 1;
  println(dayOfWeek);
  fullScreen();
}
void draw() {
  c = Calendar.getInstance();
  dayOfWeek = c.get(Calendar.DAY_OF_WEEK) - 1;
  strokeWeight(5);
  background(255, 255, 255);
  fill(255);
  rect(width/3, height/12*11, width/3, height/12);
  textAlign(LEFT, TOP);
  
  textSize(28);
  fill(0);
  text("  When should I do my homework?", width/3, height/12*11+7);
  textSize(44);
  

  text("    Mon", width/7, height/9);
  text("    Tues", width/7*2, height/9);
  text("    Wed", width/7*3, height/9);
  text("   Thurs", width/7*4, height/9);
  text("     Fri", width/7*5, height/9);
  textSize(40);
  text("English", 5, height/9*2);
  text("History", 5, height/9*3);
  text("Math", 5, height/9*4);
  text("Science", 5, height/9*5);
  text("Language", 5, height/9*6);
  text("Other", 5, height/9*7);
  line(width/7, height/9, width/7, height/9*8);
  line(width/7*2, height/9, width/7*2, height/9*8);
  line(width/7*3, height/9, width/7*3, height/9*8);
  line(width/7*4, height/9, width/7*4, height/9*8);
  line(width/7*5, height/9, width/7*5, height/9*8);
  line(width/7*6, height/9, width/7*6, height/9*8);

  line(width/7, height/9, width/7*6, height/9);
  line(width/7, height/9*2, width/7*6, height/9*2);
  line(width/7, height/9*3, width/7*6, height/9*3);
  line(width/7, height/9*4, width/7*6, height/9*4);
  line(width/7, height/9*5, width/7*6, height/9*5);
  line(width/7, height/9*6, width/7*6, height/9*6);
  line(width/7, height/9*7, width/7*6, height/9*7);
  line(width/7, height/9*8, width/7*6, height/9*8);
  textSize(20);

  for (int i=0; i<6; i++) {
    if(dayOfWeek == 1 && minute() == 0 && hour() == 12)
      mon[i] = "";
    if((dayOfWeek == 6 && hour() > 11) || dayOfWeek == 5 || dayOfWeek == 0 || (dayOfWeek == 1 && hour() < 12))
      fill(255, 0, 0);
    else
      fill(0);
    text(mon[i], (width/7) + 5, height/9*(i+2) + 5, width / 7 - 5, height / 9);
  }
  for (int i=0; i<6; i++) {
    if(dayOfWeek == 2 && minute() == 0 && hour() == 12)
      tues[i] = "";
    if((dayOfWeek == 1 && hour() > 11) || (dayOfWeek == 2 && hour() < 12))
      fill(255, 0, 0);
    else
      fill(0);
    text(tues[i], (width/7 * 2) + 5, height/9*(i+2) + 5, width / 7 - 5, height / 9);
  }
  for (int i=0; i<6; i++) {
    if(dayOfWeek == 3 && minute() == 0 && hour() == 12)
      wed[i] = "";
    if((dayOfWeek == 2 && hour() > 11) || (dayOfWeek == 3 && hour() < 12))
      fill(255, 0, 0);
    else
      fill(0);
    text(wed[i], (width/7 * 3) + 5, height/9*(i+2) + 5, width / 7 - 5, height / 9);
  }
  for (int i=0; i<6; i++) {
    if(dayOfWeek == 4 && minute() == 0 && hour() == 12)
      thurs[i] = "";
    if((dayOfWeek == 3 && hour() > 11) || (dayOfWeek == 4 && hour() < 12))
      fill(255, 0, 0);
    else
      fill(0);
    text(thurs[i], (width/7 * 4) + 5, height/9*(i+2) + 5, width / 7 - 5, height / 9);
  }
  for (int i=0; i<6; i++) {
    if(dayOfWeek == 5 && minute() == 0 && hour() == 12)
      fri[i] = "";
    if((dayOfWeek == 4 && hour() > 11) || (dayOfWeek == 5 && hour() < 12))
      fill(255, 0, 0);
    else
      fill(0);
    text(fri[i], (width/7 * 5) + 5, height/9*(i+2) + 5, width / 7 - 5, height / 9);
  }
}

void mouseClicked() {
  if(mouseX>width/3 && mouseX<width/3*2 && mouseY>height/12*11){
    JOptionPane.showMessageDialog(null,"NOW!");
  }
  int subject = -1;
  if (mouseY > height / 9 * 2 && mouseY < height / 9 * 3) {
    subject = 0;
  }
  if (mouseY > height / 9 * 3 && mouseY < height / 9 * 4) {
    subject = 1;
  }
  if (mouseY > height / 9 * 4 && mouseY < height / 9 * 5) {
    subject = 2;
  }
  if (mouseY > height / 9 * 5 && mouseY < height / 9 * 6) {
    subject = 3;
  }
  if (mouseY > height / 9 * 6 && mouseY < height / 9 * 7) {
    subject = 4;
  }
  if (mouseY > height / 9 * 7 && mouseY < height / 9 * 8) {
    subject = 5;
  }

  if (subject > -1 && subject < 6) {
    if (mouseX > width / 7 * 1 && mouseX < width / 7 * 2) {
      String assignment=JOptionPane.showInputDialog("Assignment:", mon[subject]);
      if (assignment != null) {
        mon[subject] = assignment;
      }
    }
    if (mouseX > width / 7 * 2 && mouseX < width / 7 * 3) {
      String assignment=JOptionPane.showInputDialog("Assignment:", tues[subject]);
      if (assignment != null) {
        tues[subject] = assignment;
      }
    }
    if (mouseX > width / 7 * 3 && mouseX < width / 7 * 4) {
      String assignment=JOptionPane.showInputDialog("Assignment:", wed[subject]);
      if (assignment != null) {
        wed[subject] = assignment;
      }
    }
    if (mouseX > width / 7 * 4 && mouseX < width / 7 * 5) {
      String assignment=JOptionPane.showInputDialog("Assignment:", thurs[subject]);
      if (assignment != null) {
        thurs[subject] = assignment;
      }
    }
    if (mouseX > width / 7 * 5 && mouseX < width / 7 * 6) {
      String assignment=JOptionPane.showInputDialog("Assignment:", fri[subject]);
      if (assignment != null) {
        fri[subject] = assignment;
      }
    }
  }
}