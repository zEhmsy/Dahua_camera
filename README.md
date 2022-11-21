# Dahua_camera
<div id="top"></div>

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/zEhmsy/Dahua_camera/project_icon">
    <img src="project_icon.png" alt="Logo" width="80" height="80">
  </a>

<h3 align="center">DAHUA HTML API CONTROLLER</h3>

  <p align="center">
    project_description
    <br />
    <a href="https://github.com/zEhmsy/Dahua_camera"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/zEhmsy/Dahua_camera">View Demo</a>
    ·
    <a href="https://github.com/zEhmsy/Dahua_camera/issues">Report Bug</a>
    ·
    <a href="https://github.com/zEhmsy/Dahua_camera/issues">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#progetto">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

[![Product Name Screen Shot][product-screenshot]](https://docs.opencv.org/4.x/d1/dfb/intro.html)

### Controllare le telecamere attraverso il semplice prompt dei comandi di Windows

![](images/object_detected.gif)

<p align="right">(<a href="#top">back to top</a>)</p>



### Built With

* [File Batch](https://www.wikiwand.com/it/File_batch)

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- USAGE EXAMPLES -->
## Project


<!-- ROADMAP -->

## Roadmap

- Topics
  - Manipulate http request
  - Control Camera
  - Network managment

See the [open issues](https://github.com/zEhmsy/Dahua_camera/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- GETTING STARTED -->

## Getting Started

### Prerequisites & Installation

1. Clone the repo
   ```sh
   git clone https://github.com/zEhmsy/Dahua_camera.git
   ```
2. **Install curl**
    You might already have curl
    It is possible that you won't need to download anything:

    If you are on Windows 10, version 1803 or later, your OS ships with a copy of curl, already set up and ready to use.

    If you have Git for Windows installed (if you downloaded Git from git-scm.com, the answer is yes), you have curl.exe under:
    ```sh
    C:\Program Files\Git\mingw64\bin\
    ```
    Simply add the above path to PATH.

    *Installing curl with a package manager*
    If you are already using a package manager, it may be more convenient to install with one:

    For Chocolatey, run ```choco install curl```
    For MSYS2, run ``pacman -S curl``
    For Scoop, run ``scoop install curl``
    For Cygwin, add the curl package in Cygwin Setup. EDIT by a reader: Cygwin installer design has changed, please choose curl packages as follows:
    new Cygwin installer design

    *Installing curl manually*
    Downloading curl
    It is too easy to accidentally download the wrong thing. If, on the curl homepage, you click the large and prominent "Download" section in the site header, and then the large and prominent ``curl-7.62.0.tar.gz`` link in its body, you will have downloaded a curl source package, which contains curl's source code but not ``curl.exe``. Watch out for that.

    Instead, click the large and prominent download links on this page. Those are the official Windows builds, and they are provided by the curl-for-win project.

    If you have more esoteric needs (e.g. you want cygwin builds, third-party builds, libcurl, header files, sources, etc.), use the curl download wizard. After answering five questions, you will be presented with a list of download links.

    *Extracting and setting up curl*
    Find ``curl.exe`` within your downloaded package; it's probably under ``bin\``.

    Pick a location on your hard drive that will serve as a permanent home for curl:

    If you want to give curl its own folder, ``C:\Program Files\curl\`` or ``C:\curl\`` will do.
    If you have many loose executables, and you do not want to add many individual folders to PATH, use a single folder such as ``C:\Program Files\tools\`` or ``C:\tools\`` for the purpose.
    Place ``curl.exe`` under the folder. And never move the folder or its contents.

    Next, you'll want to make curl available anywhere from the command line. To do this, add the folder to ``PATH``, like this:

    1.Click the Windows 10 start menu. Start typing "environment".
    2.You'll see the search result **Edit the system environment variables**. Choose it.
    3.A System Properties window will popup. Click the **Environment Variables** button at the bottom.
    4.Select the "Path" variable under "System variables" (the lower box). Click the **Edit** button.
    5.Click the **Add** button and paste in the folder path where ``curl.exe`` lives.
    6.Click **OK** as needed. Close open console windows and reopen, so they get the new ``PATH``.
    *Now enjoy typing curl at any command prompt. Party time!*
3. Double-click on bat file

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- LICENSE -->

## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- CONTACT -->

## Contact

Giuseppe Tururro - [@instagram_handle](https://www.instagram.com/turturrogiuseppe/) - info.g.turturro@gmail.com

Project Link: [https://github.com/zEhmsy/Dahua_camera](https://github.com/zEhmsy/Dahua_camera)

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->

## Acknowledgments

* [HTTP API - REST](https://www.wikiwand.com/it/Representational_state_transfer)
* [CURL](https://www.wikiwand.com/it/Curl)

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->

<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[contributors-shield]: https://img.shields.io/github/contributors/zEhmsy/Dahua_camera.svg?style=for-the-badge
[contributors-url]: https://github.com/zEhmsy/Dahua_camera/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/zEhmsy/Dahua_camera.svg?style=for-the-badge
[forks-url]: https://github.com/zEhmsy/Dahua_camera/network/members
[stars-shield]: https://img.shields.io/github/stars/zEhmsy/Dahua_camera.svg?style=for-the-badge
[stars-url]: https://github.com/zEhmsy/Dahua_camera/stargazers
[issues-shield]: https://img.shields.io/github/issues/zEhmsy/Dahua_camera.svg?style=for-the-badge
[issues-url]: https://github.com/zEhmsy/Dahua_camera/issues
[license-shield]: https://img.shields.io/github/license/zEhmsy/Dahua_camera.svg?style=for-the-badge
[license-url]: https://github.com/zEhmsy/Dahua_camera/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/g-turturro
[product-screenshot]: product_screenshot.PNG
