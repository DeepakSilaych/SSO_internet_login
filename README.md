# IITB SSO Internet Login Script

This repository contains a Bash script that automates the process of logging into the IIT Bombay Single Sign-On (SSO) system.

## Usage

1. Clone the repository:
   ```bash
   git clone https://github.com/DeepakSilaych/SSO_internet_login
   cd iitb-sso-login
    ```

2. Open the connect.sh script in your preferred text editor and replace the placeholders with your actual LDAP credentials:
   ```bash
   username="your_username"
   password="your_password"
   ```

3. Make the script executable:
   ```bash
   chmod +x connect.sh
   ```

4. Run the script:
   ```bash
    ./connect.sh
    ```

5. To Automate the process on boot, add the following line to your crontab:
   ```bash
   @reboot /path/to/connect.sh
   ```
    Replace `/path/to/connect.sh` with the actual path to the script.

## Requirements
- [curl](https://curl.se/) should be installed on your system.
- Network access to the IIT Bombay SSO login page.

## Note
- The script is designed to work with the IIT Bombay SSO login page. It may not work with other SSO systems.
- Ensure that your credentials are kept secure. Do not share your connect.sh file with others after you have added your credentials.
- This script checks for internet connectivity before attempting to log in. If you are already connected, it will not attempt to log in again.


## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
