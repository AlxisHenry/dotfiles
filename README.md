<a name="readme-top"></a>

<div align="center">

  <img src="https://cdn.alexishenry.eu/shared/images/logo.png" alt="logo" width="220" height="auto" />
  <h1>
    Dotfiles
  </h1>

<a href="https://github.com/CCI-Campus/CCI-Appro/tree/sass/docs"><strong> Documentation »</strong></a>

**Inspired by [@mathiasbynens](https://github.com/mathiasbynens/dotfiles) dotfiles repository.**

<h4>
    <a href="https://github.com/AlxisHenry/dotfiles">Github</a>
  <span> · </span>
    <a href="https://github.com/AlxisHenry/dotfiles/issues">Report a bug</a>
  <span> · </span>
    <a href="https://github.com/AlxisHenry/dotfiles/issues">Up an idea</a>
  </h4>
</div>

<br />

# :notebook_with_decorative_cover: Summary

- [Getting Started](#toolbox-getting-started)
  * [Bootstrap](#gear-installation)
  * [Chocolatey](#gear-update)
- [Contributing](#heavy_dollar_sign-contributing)
- [Authors](#wave-auteurs)

## :toolbox: Getting Started

### :gear: Bootstrap

```bash
# Setup
git clone https://github.com/AlxisHenry/dotfiles.git && cd dotfiles && source deploy.sh
# Update
cd dotfiles && [set -- -force;] source deploy.sh
```

### :gear: Chocolatey

**To bootstrap your windows, clone this repository and launch the commands below :**

```ps1
PS C:\Users\Me> Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'));
PS C:\Users\Me> choco install make
PS C:\Users\Me> make choco
```

## :heavy_dollar_sign: Contributing

*Contributions are always welcome!*

**To contribute, follow the next steps :**

- **Create new branch**

- **Create a merge request**

## :wave: Authors

- [@mathiasbynens](https://github.com/mathiasbynens)
- [@AlxisHenry](https://www.github.com/AlxisHenry) 


<!-- ## :page_with_curl: Liens utiles -->

<p align="right">(<a href="#readme-top">back to top</a>)</p>