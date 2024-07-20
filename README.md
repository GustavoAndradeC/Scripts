### How to use the script (Windows PowerShell)

Running **PowerShell** as administrator prompts the following command:

```Powershell
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned
```
> The code quoted above defines an execution policy for your current user, allowing you to run scripts without restrictions

Access the **path** of the script to **execute**

```Powershell
.\ScriptName.ps1
```
___

### How to use the script (Linux) 

Use a text editor to create the **RestFluig.sh** file and Paste the script **content**

```
nano RestFluig.sh
```

> Give the script execution permission, navigate to the directory where you saved the script and make it executable:
```
chmod +x RestFluig.sh
```

Run the **script**
```
./RestFluig.sh
```



