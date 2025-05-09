# Nutrition-Scanning-App

## Overview
A prototype app measures daily nutrients consumed by scanning your food.

## Setup Instructions
1. Clone the Repository:
```
git clone https://github.com/imsanchit/Nutrition-Scanning-App.git
cd Nutrition-Scanning-App/Nutrition\ Scanner
```
2. Run the Project

## Libraries Used and Why
*Charts:* To draw the bar chart.

>  No 3rd party framework used.

## Notes and Assumptions
This is only a prototype type to show the basic scanning functionality. The data used here is mock data. 

## Approach and Challenges
I started by identifying the critical functionality and views of the app. This included the usage of the camera and photo library APIs and showing them efficiently to the user. I used `SwiftUI` to render the UI, since it provides multi-platform support out of the box. My main focus areas were to maintain code modularity, reusability, and I tried to ensure the same in the project. For this, I have added separate modules for each screen and added relevant folders for extensions and other resource files.

Some challenges I encountered include:
[Challenge]: To add support for dark theme.

[Solution]: Implemented protocol-driven color tokens and applied them throughout the views. To support the dark theme, I introduced a struct that conforms to the color protocol specifically for dark mode.

Overall, I ensured the solution is scalable, well-documented, efficient, and easy to use—whatever applies.
