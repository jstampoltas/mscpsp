<!DOCTYPE html>
<html lang="en">
<head>
    <title>Search</title>
    <meta charset="utf-8">
    <meta name="format-detection" content="telephone=no"/>
    <link rel="icon" href="../images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="search.css"/>
    <link rel="stylesheet" href="../css/grid.css"/>
    <link rel="stylesheet" href="../css/style.css">
    <script src="../js/jquery.js"></script>
    <script src="../js/jquery-migrate-1.2.1.js"></script>
    <script src="./search.js"></script>
    <!--[if lt IE 9]>
    <div id="ie6-alert" style="width: 100%; text-align:center;">
        <img src="http://beatie6.frontcube.com/images/ie6.jpg" alt="Upgrade IE 6" width="640" height="344" border="0"
             usemap="#Map" longdesc="http://die6.frontcube.com"/>
        <map name="Map" id="Map">
            <area shape="rect" coords="496,201,604,329"
                  href="http://www.microsoft.com/windows/internet-explorer/default.aspx" target="_blank"
                  alt="Download Interent Explorer"/>
            <area shape="rect" coords="380,201,488,329" href="http://www.apple.com/safari/download/" target="_blank"
                  alt="Download Apple Safari"/>
            <area shape="rect" coords="268,202,376,330" href="http://www.opera.com/download/" target="_blank"
                  alt="Download Opera"/>
            <area shape="rect" coords="155,202,263,330" href="http://www.mozilla.com/" target="_blank"
                  alt="Download Firefox"/>
            <area shape="rect" coords="35,201,143,329" href="http://www.google.com/chrome" target="_blank"
                  alt="Download Google Chrome"/>
        </map>
    </div>
    <script src="../js/html5shiv.js"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="../css/ie.css">
    <![endif]-->
</head>
<body>
<div class="page">
    <!--============================== Header =================================-->
    <header id="header">
        <div id="stuck_container">
            <div class="put-left logo-caption">
                <img class="put-left" src="../images/index_img-01.jpg" alt=""/>
                <h1 class="put-right color_1">
                    <a href="../index.html">Tea
                        <span>co</span>
                    </a>
                </h1>
            </div>

            <div class="put-right search-form-wrapper">
                <a id="search-button" class=" fa fa-search color_3" href="#"></a>

                <form id="search" action="search.php" method="get" accept-charset="utf-8">
                    <label class="input_wrap" for="search2">
                        <input id="search2" onfocus="if(this.value == 'Search'){this.value = '';}"
                               onblur="if(this.value == ''){this.value='Search';}" type="text" name="s" value="Search"/>
                    </label>
                    <a class="fa fa-angle-right" onclick="document.getElementById('search').submit()"
                       href="#"></a>
                </form>
            </div>

            <nav class="put-right header-menu">
                <ul class="sf-menu">
                    <li class="first-item">
                        <a href="../index.html">Company</a>
                        <ul>
                            <li>
                                <a href="#">Quisque nulla</a>
                            </li>
                            <li>
                                <a href="#">Vestibulum libero nis</a>
                                <ul>
                                    <li>
                                        <a href="#">Porta vel scelerisque eget</a>
                                    </li>
                                    <li>
                                        <a href="#">Malesuada at neque</a>
                                    </li>
                                    <li>
                                        <a href="#">Vivamus eget nibh</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Pellentesque</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="../index-1.html">Discover tea</a>
                    </li>
                    <li>
                        <a href="../index-2.html">Wholesale</a>
                    </li>
                    <li>
                        <a href="../index-3.html">Services</a>
                    </li>
                    <li>
                        <a href="../index-4.html">Contacts</a>
                    </li>
                    <li class="last">
                        <a href="../index-5.html">Blog</a>
                    </li>
                </ul>
            </nav>
            <div class="clearfix"></div>
        </div>
    </header>

    <!--============================ Content ================================-->
    <div id="content">
        <div class="wrapper_5 last-child">
            <div class="container">
                <div class="row">
                    <div class="grid_12">
                        <h2 class="color_4 center wrap11">Search</h2>
                        <h5 class="color_4 center">Search results</h5>
                        <div id="search-results"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--======================== Footer =================================-->
    <footer id="footer">
        <div class="container">
            <div class="row">
                <div class="grid_12">
                    <p class="copyright color_1">
                        <span class="first color_2">tea company </span><span>&copy;
                            <span id="copyright-year"></span></span>
                        <a href="index-6.html">Privacy policy</a>
                    </p>
                    <ul class="list">
                        <li>
                            <a href="#">Sed ut</a>
                        </li>
                        <li>
                            <a href="#">Perspiciatis unde</a>
                        </li>
                        <li>
                            <a href="#">Omnis iste natus</a>
                        </li>
                        <li>
                            <a href="#">Sit voluptatem</a>
                        </li>
                        <li>
                            <a href="#">Accusantium</a>
                        </li>
                        <li class="last">
                            <a href="#">Doloremque laudantium</a>
                        </li>
                    </ul>

                </div>
            </div>
        </div>
    </footer>
    <div id="toTop">
        <span class="fa fa-arrow-circle-up"></span>
    </div>
</div>
<script src="./script.js"></script>
</body>
</html>