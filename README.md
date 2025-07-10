# 🎨🌈 HueHaven  
*A Java GUI-based Color Palette Manager*  
> **Crafted with heart by Neha & Diwakar**  
> *A creative sanctuary where every shade finds its story.*

---

## ✨ About HueHaven  

**HueHaven** is a Java-based desktop application that empowers users to design, explore, and store beautiful color palettes. Built using **Java AWT & Swing**, the project integrates classic **data structures** and a **MySQL database** to deliver a seamless creative experience. Whether you're a designer, developer, or just color-curious — HueHaven offers an intuitive UI and curated inspiration.

🧠 A fusion of logic & design  
🧪 A playground for Stack, ArrayList, Queue  
📦 A personal vault for colorful expression

---

## 🛠️ Technologies Used

| Category        | Tools / Concepts                         |
|----------------|-------------------------------------------|
| GUI Framework   | Java AWT & Swing                         |
| Programming Logic | Java SE with Stack, ArrayList, Queue    |
| Database        | MySQL + JDBC Connector                   |
| Image Assets    | PNG image-based palettes per theme       |


---

## 📁 Application Pages & Functionalities

### 1️⃣ **Signup Page**  
Registers new users with unique usernames and secure password storage in MySQL.

### 2️⃣ **Login Page**  
Authenticates returning users, handles validation, and provides feedback for incorrect credentials.

### 3️⃣ **Palette Home Page**  
A welcoming dashboard with clean navigation — choose to design your own palette or explore suggested themes.

### 4️⃣ **Color Picker Page**  
Interactive palette builder:
- Select colors with `JColorChooser`
- Name them, preview them dynamically
- Undo/Redo functionality using `Stack`
- Save palettes linked to your account in the database using `ArrayList`

### 5️⃣ **Suggested Palette Viewer Page**  
A gallery-style interface to explore curated theme-based palette images (Spring, Autumn, Dark, Red, Blue, Green).  
- Browse by theme  
- Mark favorite palettes  
- All data retrieved from MySQL using queries

### 6️⃣ **Favorites Viewer Page**  
Your personalized inspiration wall.  
- Scroll through favorited palette images  
- Navigate with Next/Previous buttons  
- Displays saved items using `Queue` and ArrayList

### 7️⃣ **MySQL Database Design**
Tables created:
- `users` (login credentials)  
- `palettes` (saved palettes by user)  
- `user_palettes` (color entries per palette)  
- `suggested_palettes` (theme images)  
- `favorite_palettes` (saved favorites)

Features:
- Foreign keys with cascade deletion  
- Theme/image management  
- Structured queries with prepared statements

---

## 🚀 How to Run HueHaven Locally

1. **Clone this repository**  
   ```bash
   git clone https://github.com/your-username/HueHaven.git

**🛠️ Database Setup Instructions**
To get HueHaven up and running with full functionality, follow these steps to configure the MySQL database:

**📦 Step 1: Create the Database and Tables**
Run the provided SQL script (database_script.sql) inside MySQL Workbench or your preferred SQL client.

**Step 2: Configure JDBC in Java**
Open your Java project file DBUtil.java and make sure the database credentials are correct: 
String url = "jdbc:mysql://localhost:3306/color_palette_app";
String username = "root";       // Replace with your DB username
String password = "yourpassword"; // Replace with your DB password

**🙌 Creators**
✨ Neha ✨ Diwakar

Together, we created HueHaven as a heartfelt student project celebrating collaboration, learning, and colorful creativity 🎉

**📃 License**
This project is available for learning and inspiration. Attribution appreciated! 🌸 You’re welcome to fork, improve, and create your own shade of HueHaven 💡

Let me know if you'd like help embedding real screenshots, linking your LinkedIn post or adding badges like "Java", "MySQL", or "UI Design". HueHaven already looks fabulous, and now its README will glow just as brightly! 🌈🚀💫

## 🔗 Project Showcase on LinkedIn  
Check out how HueHaven was shared with the dev community!  
👉 [View LinkedIn Post](https://www.linkedin.com/posts/neha-shit-a653b929a_javagui-swingdevelopment-mysql-activity-7349043479383035905-hEvo?utm_source=share&utm_medium=member_desktop&rcm=ACoAAEhRga0Bao9_FJeym3SHh-d7VkwPgXS7-rE)

