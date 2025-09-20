# Helm

## For Windows (Manual Download)
 1. Open your web browser
 2. Go to: https://github.com/helm/helm/releases
 3. Find the latest release and download helm-v3.x.x-windows-amd64.zip
 4. Extract the zip file to a folder like C:\helm
 5. Add C:\helm\windows-amd64 to your PATH
    ```bash
     # To add to PATH:
     setx PATH "%PATH%;C:\helm\windows-amd64" /M
    ```
 6. Open a new Command Prompt and verify installation:
    ```bash
     helm version
     where helm
     dir helm*
    ```

## Create a Helm Chart
```bash
mkdir charts

helm create charts/flask-application
```