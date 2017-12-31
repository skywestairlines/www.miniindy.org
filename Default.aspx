<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Debug="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>SkyTrack</title>
    <link rel="stylesheet" href="assets/css/jquery-ui.css">
    <link rel="stylesheet" href="assets/css/styles.min.css">
    <link rel="stylesheet" href="assets/css/theme.css">
    <link rel="stylesheet" href="assets/css/screen.css">
    <!-- <script src="assets/js/iframe.js"></script> -->
    <!--[if lt IE 9]>
  <script src="https://cdn.jsdelivr.net/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://cdn.jsdelivr.net/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
    <script type="text/javascript" src="assets/js/jquery.min.js"></script>
    <script type="text/javascript" src="assets/js/jquery.ui.js"></script>
    <script type="text/javascript" src="assets/js/plugins.js"></script>
    <script type="text/javascript" src="assets/js/scripts.min.js"></script>
    <script type="text/javascript" src="assets/js/actions.js"></script>
    <script type="text/javascript">
        //Global Variables used by the functions in this script block *************************************
        var stCardID = parseInt('<%=Request.QueryString["CardID"]%>'),
        skyTrackUserName = '<%=Request.QueryString["User"]%>',
        isSkyTrackViewer = '<%=Request.QueryString["viewer"]%>',
        baseCardDir = '<%=ConfigurationManager.AppSettings["BaseDir"]%>',
        uri = '<%=ConfigurationManager.AppSettings["WebServiceBase"]%>',
        na_uri = uri + "/nacomments/",
        docURI = uri + "/loadcard/",
        get_uri = docURI + stCardID,
        post_uri = uri + '/block',
        //the timestamp that represents the moment in time when the user's remembered credentials expires
        timerCountDown = new Date(1970, 0),
        //userName, //username
        //password, //remembered password
        rememberedUserName, //remembered username
        rememberedPassword, //remembered password
        employee, //Employee signature: (userID) Initials
        docCompleted, //time stamp when the document was completed, or null if not completed
        cardResult = null, //Skytrack data
        bFirstRun = false,  // Indicates if we've already loaded the frame once to work around an IE Permission error
        pulseCounter = 0, // A counter to slow down the pulsing of the forget password button
        isDblClickd = false, // Remember if the last event was a double-click
        sendInfo = {},
        serverTimeoutInMS = 30000,
        // These two vars are for testing purposes only...
        iSleepMS = 0, // Sleep milliseconds to simulate outstation slowness.
        intentionallyCrashWebService = false,
        allowRightClicking  =  false,
        authenticationSubmit = false; //Check if the authentication form is being submitted to SkyTrack

    </script>
    <script type="text/javascript">
        $.adjustHeight = function () {
            var lastHeight = 0, curHeight = 0, $frame = $('iframe#maincontent').closest('div');
            currHeight = $(window).height() - $('nav.navbar').height();
            if (currHeight != lastHeight) {
                $frame.height(lastHeight = currHeight - 30);
                // $frame.css('height', lastHeight + 'px');
            }
        };
        $(window).resize(function () {
            $.adjustHeight();
        });
        function IsIFrameReady() {
            if (window.frames.length > 0) {
                if (window.frames[0].bTheFrameIsReady) {
                    if (window.frames[0].bTheFrameIsReady !== undefined && window.frames[0].bTheFrameIsReady === true) {
                        var iframe = $('iframe#maincontent'),
                        targetframe = iframe.contents();

                        targetframe.find('head').append('<link href="<%=Request.ApplicationPath%>/assets/css/skytrack.css" rel="stylesheet">');

            var linkScript = document.createElement('script');
            linkScript.type = 'text/javascript';
            linkScript.src = '<%=Request.ApplicationPath%>/assets/js/Hlink.js';
            targetframe.find('body').append(linkScript);
            targetframe.find('body, .page-header').removeAttr('style');

            inputBoxes = 'input[disabled],input.signoff_box';
            $('.content').fadeIn('slow');
            $.adjustHeight();
            $('.loading-frame').fadeOut();
            PopulateCard();
            return;
        }
    }
}
    setTimeout(IsIFrameReady, 250);
}
    </script>

</head>
<body>
  <input type="hidden" name="SkyTrackViewer" id="SkyTrackViewer" value="<%=Request.QueryString["viewer"]%>"/>
  <nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed pull-left" data-toggle="collapse" data-target="#main-nav-top" aria-expanded="false">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <ul class="list-inline pull-right visible-xs">
          <li class="hidden">
            <a href="#" class="page-comments"><img src="assets/imgs/comment.gif"></a>
            <span class="comment-hover"></span>
          </li>
          <li class="hidden">
            <a title="Click to fix the following error(s):" href="#" class="page-errors" data-container="body" data-toggle="popover" data-placement="bottom" data-content="" data-html="true"><img src="assets/imgs/error.gif"></a>
          </li>
          <li class="card-remaining no-border">
            <a href="#" class="dropdown-toggle card-progress" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" title="click to see remaining blocks"><!-- <span class="card-progress pull-left"></span> --></a>
          </li>
        </ul>
        <form class="navbar-right visible-xs">
          <input type="button" class="timer btn btn-warning btn-lg" style="display:none" value=""/>
        </form>
      </div>
      <div class="collapse navbar-collapse" id="main-nav-top">
        <ul class="nav navbar-nav top-menu-old" id="top-menu">
          <li class="hidden-xs">
            <a href="#sidebar" class="toggle" title="Open topics in a side bar">
              <img src="assets/imgs/topic.gif" alt="View Topics" />
            </a>
          </li>
          <li class="hidden-sky">
            <a href="#opencard" class="opennew" title="Open new card (in SkyTrack)">
              <img src="assets/imgs/open-task.gif" alt="Open New" />
            </a>
          </li>
          <li class="dropdown">
            <a href="#show-topics" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" title="Click to select topic">
              <span class="title">Topic</span> <span class="caret"></span>
            </a>
            <ul class="dropdown-menu" id="show-topics">
              <li><a class="scroll" href="#topic-1">Job Setup</a></li>
              <li><a class="scroll" href="#topic-2">Job Information</a></li>
              <li><a class="scroll" href="#topic-3">Procedure</a></li>
              <li><a class="scroll" href="#topic-4">Close Out</a></li>
            </ul>
          </li>
          <li>
            <a href="#" id="print-card" title="click to print">
              <img src="assets/imgs/print.gif" alt="Print Card" />
            </a>
          </li>
          <li class="hidden-xs">
            <span class="zoom-btns pull-right hidden">
              <button type="button" id="zoom-reset" value="" title="Reset Zoom">x</button>
                <button type="button" id="zoom-in" value="" title="Zoom In">+</button>
            </span>
            <span class="zoom-btns pull-left hidden">
              <button type="button" id="zoom-toggle" value="" title="Toggle Zoom">~</button>
                <button type="button" id="zoom-out" value="" title="Zoom Out">-</button>
            </span>
            <select name="zoom" id="inputZoom" class="form-control input-sm">
              <option value="25">25%</option>
              <option value="50">50%</option>
              <option value="75">75%</option>
              <option value="100" selected>100%</option>
              <option value="125">125%</option>
              <option value="150">150%</option>
              <option value="175">175%</option>
              <option value="200">200%</option>
            </select>
        </li>
        <li>
          <a href="#" id="refresh-prev" title="click to reload the page">
            <img src="assets/imgs/refresh.gif" alt="Refresh" />
          </a>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" title="Settings/Options"><img src="assets/imgs/options.gif"> <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li>Graphic Options</li>
            <li><input type="radio" name="img-nav" class="popup-img" checked> <small>Popup Graphics</small></li>
            <li><input type="radio" name="img-nav" class="scroll-img"> <small>Scroll to Graphic</small></li>
            <li><input type="radio" name="img-nav" class="drag-img"> <small>Draggable Graphic</small></li>
            <li><input type="checkbox" name="zoom-switch" id="zoom-switch"> <small>Turn On Image Zoom</small></li>
            <li>Page Navigation</li>
            <li><input type="checkbox" name="add-bookmarks" class="bookmark-page"> <small>Bookmark Blocks</small></li>
            <li><input type="checkbox" name="more-zoom" class="bookmark-page"> <small>Add Zoom Controls</small></li>
            <li>Errors Popup</li>
            <li><input type="radio" name="error-dialog" class="x-button-hide" checked> <small>Hide with X button</small></li>
            <li><input type="radio" name="error-dialog" class="block-exit-hide"> <small>Hide on block exit</small></li>
          </ul>
        </li>
        <li class="dropdown hidden-xs card-remaining no-border">
          <a href="#" class="dropdown-toggle card-progress" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" title="click to see remaining blocks"><!-- <span class="card-progress pull-left"></span> --></a>
        </li>
      </ul>
      <form class="navbar-right">
        <input type="button" class="timer btn btn-warning btn-lg" style="display:none" value=""/>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li class="hidden">
          <a href="#" class="page-comments"><img src="assets/imgs/comment.gif"></a>
          <span class="comment-hover"></span>
        </li>
        <li class="hidden hidden-xs">
          <a title="Click to fix the following error(s):" href="#" class="page-errors" data-container="body" data-toggle="popover" data-placement="bottom" data-content="" data-html="true"><img src="assets/imgs/error.gif"></a>
        </li>
      </ul>
    </div>
  </div>
  <div class="main alert alert alert-danger text-center">
      <img src="assets/imgs/error.gif" class="alert-icon pull-left"> <span class="alert-msg"></span> <button id="close-main-alert" type="button" class="close" data-dismiss="main" aria-hidden="true">&times;</button>
    </div>
</nav>
<!-- Main Content Section -->
<div class="wrapper container-fluid">
  <div class="row">
    <div class="loading-frame"><img src="assets/imgs/spinner.gif" alt=""></div>
    <!-- <div class="main alert alert alert-danger text-center">
      <img src="assets/imgs/error.gif" class="alert-icon pull-left"> <span class="alert-msg"></span> <button type="button" class="close" data-dismiss="main" aria-hidden="true">&times;</button>
    </div> -->
  </div>
  <div class="row">
    <div class="sidebar">
      <ul class="sidebar-menu" id="side-menu">
        <li><a href="#">Job Setup</a></li>
        <li><a href="#">Job Information</a></li>
        <li><a href="#">Procedure</a></li>
        <li><a href="#">Close Out</a></li>
      </ul>
    </div>
    <div class="content" style="display: none">
      <iframe id="maincontent" src="http://tullis.skywest.com/WebTaskCards/taskcards/12-320-700-01/taskcard-1.html" frameborder="no" runat="server" height="0"></iframe>
    </div>
    <div id="draggable" class="ui-widget-content">

      <div class="panel panel-default">
        <div class="panel-heading">
          <button type="button" class="btn btn-danger btn-close" onclick="$('#draggable').fadeOut();"> &times; </button>
            <h3 class="panel-title title"></h3>
        </div>
        <div class="panel-body">
            <div class="img-wrapper">
              <img class="img-responsive" src="//placehold.it/600X600&text=No Image is Found!" />
            </div>
        </div>
      </div>
    </div>
  </div>
<div id="jump-to-top">
  <a href="#scrollTop" class="hidden">
    <img class="img-circle pull-right" src="assets/imgs/uparrows.png" alt="Scroll to top" title="scroll to top" />
  </a>
</div>
</div>
<div class="modal fade" id="login-modal" tabindex='-1'>
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close escape-auth" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title">SkyTrack Authentication</h4>
      </div>
      <div class="modal-body">
        <form method="post" id="login-form" class="form-horizontal" autocomplete="off">
          <input type="hidden" name="newvalue" id="newvalue" value=""/>
          <input type="hidden" name="oldvalue" id="oldvalue" value=""/>
          <input type="hidden" name="blockname" id="blockname" value=""/>
          <div class="sky-response">
            <div class="alert alert-info text-center" role="alert">
              <strong class="pull-left"><i class="fa fa-exclamation-circle"></i></strong> <span class="message">Enter both username and password below.</span>
            </div>
          </div>
          <div class="form-group field">
            <label class="col-sm-3 control-label text-right">User Name</label>
            <div class="col-sm-9">
              <input class="form-control input-sm" type="text" id="emp-no" name="username" value="" autocomplete="off" required>
            </div>
          </div>
          <div class="form-group field">
            <label class="col-sm-3 control-label text-right">Password</label>
            <div class="col-sm-9">
              <input class="form-control input-sm" type="password" id="user-id" name="password" value="" autocomplete="off" required="required">
            </div>
          </div>
          <div class="form-group field">
            <div class="collapse" id="show-comments">
              <label class="col-sm-3 text-right">Comment *</label>
              <div class="col-sm-9">
                <textarea class="form-control field" rows="3" id="txtComments" placeholder="Please enter a short explanation about why this block is not applicable"></textarea>
                <span class="help-block">* <small>RII Authorization Required</small></span>
              </div>
            </div>
          </div>
          <div class="form-group field">
            <div class="col-sm-offset-3 col-sm-4">
              <div class="checkbox">
                <label><input type="checkbox" name="remember"> Remember</label>
              </div>
            </div>
            <div class="col-sm-5">
              <button type="submit" class="btn btn-primary btn-block" id="submit-login">Save</button>
            </div>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <span class="signature"></span>
        <button type="reset" class="btn btn-sm btn-default escape-auth" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" tabindex="-1" role="dialog" id="graphics-popup">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title text-center">Graphics</h4>
      </div>
      <div class="modal-body">
        <img class="img-responsive" />
      </div>
      <div class="modal-footer">
        <div class="pull-left">
          <label class="checkbox-inline">
            <!-- <input type="checkbox" name="popup-switch" id="popup-switch"> Show Larger Image -->
          </label>
        </div>
        <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Close</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<asp:Literal ID="ltlMenu" runat="server" />
<script src="assets/js/apphost.js"></script>
<script src="assets/js/skytrack.js"></script>

</body>
</html>
