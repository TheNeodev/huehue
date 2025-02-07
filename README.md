

# huehue

A simple prank batch file designed to surprise your friends with a harmless "hack" prank. When executed, this script checks your internet connection, opens Notepad, simulates a funny message being typed out, and then opens a YouTube video for a playful twist.

## Features

- **Internet Check:** Uses a ping to 8.8.8.8 to ensure an active internet connection.
- **Automated Message:** Opens Notepad and injects a humorous message using a temporary VBS script.
- **Fun Reveal:** Launches a YouTube link to complete the prank experience.

## How It Works

1. **Connectivity Check:**  
   The script pings Google's DNS server (8.8.8.8). If the ping fails, an error message is displayed prompting you to connect to the internet.

2. **Notepad Activation:**  
   If connected, it opens Notepad and waits briefly.

3. **Message Injection:**  
   A temporary VBScript is generated that:
   - Activates Notepad.
   - Simulates typing the message:  
     *"haha, corngatulations, i hacked ur computer, now watch this: https://youtu.be/xzJn0zdwuoM?si=m3Qgd-ayiXWqlVV9"*

4. **Prank Execution:**  
   Finally, the script opens the specified YouTube video, revealing the prank.

## Prerequisites

- **Operating System:** Windows (the script uses Batch and VBScript).
- **Internet Connection:** Required to pass the connectivity check and open the YouTube link.

## Usage

1. **Download or Clone the Repository:**

   ```bash
   git clone https://github.com/TheNeodev/huehue.git
   ```

2. **Run the Script:**

   Simply double-click on `huehue.bat` or run it from the Command Prompt:

   ```bat
   huehue.bat
   ```

## Disclaimer

**Warning:**  
This prank file is meant solely for harmless fun. Use it only on devices you own or have explicit permission to experiment on. The creator is not responsible for any consequences that may arise from unauthorized or malicious use. Always prank responsibly.

## License

This project is licensed under the BSD-2-Clause License. See the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! If you have ideas to improve the prank or add new features, feel free to fork the repository and submit a pull request.

## Author

Developed by [TheNeodev](https://github.com/TheNeodev).

---

This README provides a clear explanation of what the prank file does, how to use it, and the necessary warnings and licensing details. You can customize further if additional details or instructions become necessary.
