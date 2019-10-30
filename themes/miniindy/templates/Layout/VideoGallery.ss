<%-- <div class="youtubegallery typography"> --%>
    <%-- <div class="row"> --%>
    <% loop $VideosFeed %>
        <div class="col-md-6">
            <div class="d-flex mb-3">
                <div class="col-md-8">
                    <div class="still row">
                        <%-- <a href="$VideoLink?iframe=true&<% if $Up.VideoSize %>$Up.VideoSize<% else %>width=960&height=540<% end_if %>"
                            rel="prettyPhoto[iframes]:first" title="$VideoName">
                            <img src="$VideoImage.URL" alt="$VideoName" class="img-fluid w-100" />
                        </a> --%>
                        <%-- <a href="$VideoLink"> <img src="$VideoImage.URL" alt="$VideoName" class="img-fluid w-100" /></a> --%>
                        <img style="cursor:pointer;" data-toggle="modal" data-target="#popupvideogallery" src="$VideoImage.URL" 
                        data-link="http://players.brightcove.net/1589608515001/default_default/index.html?directedMigration=true&videoId={$VideoData}" 
                        alt="$VideoName" class="img-fluid w-100" data-video-name="$VideoName" data-video-id="$VideoData" data-player-id="myBCPlayer$Pos" data-account-id="1589608515001" />
                    </div>

                </div>
                <div class="col-md-4">
                    <div class="info">
                        <%-- <h6>
                            <a href="$VideoLink?iframe=true&<% if $Up.VideoSize %>$Up.VideoSize<% else %>width=960&height=540<% end_if %>"
                                rel="prettyPhoto[iframes]:second" title="$VideoName">
                                <strong>$VideoName</strong>
                            </a>
                        </h6>     --%>
                        <h6>
                            <div style="cursor:pointer;" data-toggle="modal" data-target="#popupvideogallery$Pos" data-video-name="$VideoName" data-video-id="$VideoData" data-player="myBCPlayer$Pos">
                            <strong style="color: #244673; font-size:13px;">$VideoName</strong>
                            </div>
                        </h6>
                      <!-- Modal -->
                        <%-- <div class="modal fade" id="popupvideogallery$Pos" tabindex="-1" role="dialog" aria-labelledby="popupvideogalleryTitle" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                            <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="popupvideogalleryTitle" style="color:black; font-size:20px;">$VideoName</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                             		<video-js id="myPlayer$Pos" data-account="1589608515001" data-player="HyJPGnaE" data-embed="default" controls="" data-video-id="$VideoData" data-playlist-id="" data-application-id="" class="vjs-fluid"></video-js>
                                    <script src="https://players.brightcove.net/1589608515001/HyJPGnaE_default/index.min.js"></script>
                            </div>
                            </div>
                            </div>
                        </div>
                        </div> --%>


                        $VideoInfo
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
    <% end_loop %>

<div class="modal fade" id="popupvideogallery" tabindex="-1" role="dialog" aria-labelledby="popupvideogalleryTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="popupvideogalleryTitle" style="color:black; font-size:20px;"></h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body">
                <div class="embed-responsive embed-responsive-4by3">
                <iframe class="embed-responsive-item" src="" allowfullscreen></iframe>
                </div>
                <%-- <video-js id="HyJPGnaE" data-player="HyJPGnaE" data-account="1589608515001" data-embed="default" controls=""  data-application-id="" class="vjs-fluid"></video-js>
                <script src="https://players.brightcove.net/1589608515001/HyJPGnaE_default/index.min.js"></script> --%>
        </div>
        </div>
        </div>
    </div>
    </div>

    <%-- </div> --%>
    <%-- <div class="row"> --%>



       <%-- Mini Indy 2019 --%>
        <%-- <div class="col-md-6">
            <div class="d-flex mb-3">
                <div class="col-md-8">
                    <div class="still row">
                        
                        <img style="cursor:pointer;"data-toggle="modal" data-target="#popupvideogallery2019" src="http://www.miniindy.org/assets/Uploads/videos/MiniIndyVideo(2019).jpg" alt="2019 Mini Indy" />
                       
                    </div>    
                </div>
                <div class="col-md-4">
                    <div class="info">
                        <h6>
                            <div style="cursor:pointer;"data-toggle="modal" data-target="#popupvideogallery2019">
                                <strong>Mini Indy 2019</strong>
                            </div>
                        </h6>
                        <div class="modal fade" id="popupvideogallery2019" tabindex="-1" role="dialog" aria-labelledby="popupvideogallery2019Title" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                            <video-js data-account="1589608515001" data-player="HyJPGnaE" data-embed="default" controls="" data-video-id="6063516313001" data-playlist-id="" data-application-id="" class="vjs-fluid"></video-js>
                                            <script src="https://players.brightcove.net/1589608515001/HyJPGnaE_default/index.min.js"></script>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>    
                    <p>
                        <span>2019 Mini Indy Highlight Video.</span>
                        <br>
                        <strong>Duration:</strong>
                        <span>1:59</span>
                    </p>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div> --%>


       <%-- Mini Indy 2018 --%>
        <%-- <div class="col-md-6">
            <div class="d-flex mb-3">
                <div class="col-md-8">
                    <div class="still row">
                        
                        <img style="cursor:pointer;"data-toggle="modal" data-target="#popupvideogallery2018" src="http://www.miniindy.org/assets/Uploads/videos/MiniIndyVideo(2018).jpg" alt="2018 Mini Indy" />
                       
                    </div>    
                </div>
                <div class="col-md-4">
                    <div class="info">
                        <h6>
                            <div style="cursor:pointer;"data-toggle="modal" data-target="#popupvideogallery2018">
                                <strong>Mini Indy 2018</strong>
                            </div>
                        </h6>
                        <div class="modal fade" id="popupvideogallery2018" tabindex="-1" role="dialog" aria-labelledby="popupvideogallery2018Title" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                            <video-js data-account="1589608515001" data-player="HyJPGnaE" data-embed="default" controls="" data-video-id="6017772983001" data-playlist-id="" data-application-id="" class="vjs-fluid"></video-js>
                                            <script src="https://players.brightcove.net/1589608515001/HyJPGnaE_default/index.min.js"></script>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>    
                    <p>
                        <span>2018 Mini Indy Highlight Video.</span>
                        <br>
                        <strong>Duration:</strong>
                        <span>3:13</span>
                    </p>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div> --%>

    <%-- Mini Indy 2017 --%>
        <%-- <div class="col-md-6">
            <div class="d-flex mb-3">
                <div class="col-md-8">
                    <div class="still row">
                        
                        <img style="cursor:pointer;"data-toggle="modal" data-target="#popupvideogallery2017" src="http://www.miniindy.org/assets/Uploads/videos/MiniIndyVideo(2017).jpg" alt="2017 Mini Indy" />
                       
                    </div>    
                </div>
                <div class="col-md-4">
                    <div class="info">
                        <h6>
                            <div style="cursor:pointer;"data-toggle="modal" data-target="#popupvideogallery2017">
                                <strong>Mini Indy 2017</strong>
                            </div>
                        </h6>
                        <div class="modal fade" id="popupvideogallery2017" tabindex="-1" role="dialog" aria-labelledby="popupvideogallery2017Title" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                            <video-js data-account="1589608515001" data-player="HyJPGnaE" data-embed="default" controls="" data-video-id="5644857642001" data-playlist-id="" data-application-id="" class="vjs-fluid"></video-js>
                                            <script src="https://players.brightcove.net/1589608515001/HyJPGnaE_default/index.min.js"></script>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>    
                    <p>
                        <span>2017 Mini Indy Highlight Video.</span>
                        <br>
                        <strong>Duration:</strong>
                        <span>3:13</span>
                    </p>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div> --%>

    <%-- Mini Indy 2016 --%>
        <%-- <div class="col-md-6">
            <div class="d-flex mb-3">
                <div class="col-md-8">
                    <div class="still row">
                        
                        <img style="cursor:pointer;"data-toggle="modal" data-target="#popupvideogallery2016" src="http://www.miniindy.org/assets/Uploads/videos/MiniIndyVideo(2016).jpg" alt="2016 Mini Indy" />
                       
                    </div>    
                </div>
                <div class="col-md-4">
                    <div class="info">
                        <h6>
                            <div style="cursor:pointer;"data-toggle="modal" data-target="#popupvideogallery2016">
                                <strong>Mini Indy 2016</strong>
                            </div>
                        </h6>
                        <div class="modal fade" id="popupvideogallery2016" tabindex="-1" role="dialog" aria-labelledby="popupvideogallery2016Title" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                            <video-js data-account="1589608515001" data-player="HyJPGnaE" data-embed="default" controls="" data-video-id="5080003217001" data-playlist-id="" data-application-id="" class="vjs-fluid"></video-js>
                                            <script src="https://players.brightcove.net/1589608515001/HyJPGnaE_default/index.min.js"></script>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>    
                    <p>
                        <span>2016 Mini Indy Highlight Video.</span>
                        <br>
                        <strong>Duration:</strong>
                        <span>3:21</span>
                    </p>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div> --%>
       
   <%-- Mini Indy 2015 --%>
        <%-- <div class="col-md-6">
            <div class="d-flex mb-3">
                <div class="col-md-8">
                    <div class="still row">
                        
                        <img style="cursor:pointer;"data-toggle="modal" data-target="#popupvideogallery2015" src="http://www.miniindy.org/assets/Uploads/videos/MiniIndyVideo(2015).jpg" alt="2015 Mini Indy" />
                       
                    </div>    
                </div>
                <div class="col-md-4">
                    <div class="info">
                        <h6>
                            <div style="cursor:pointer;"data-toggle="modal" data-target="#popupvideogallery2015">
                                <strong>Mini Indy 2015</strong>
                            </div>
                        </h6>
                        <div class="modal fade" id="popupvideogallery2015" tabindex="-1" role="dialog" aria-labelledby="popupvideogallery2015Title" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                            <video-js data-account="1589608515001" data-player="HyJPGnaE" data-embed="default" controls="" data-video-id="4247871561001" data-playlist-id="" data-application-id="" class="vjs-fluid"></video-js>
                                            <script src="https://players.brightcove.net/1589608515001/HyJPGnaE_default/index.min.js"></script>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>    
                    <p>
                        <span>2015 Mini Indy Highlight Video.</span>
                        <br>
                        <strong>Duration:</strong>
                        <span>3:37</span>
                    </p>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
       --%>



<%-- Mini Indy 2014 --%>
        <%-- <div class="col-md-6">
            <div class="d-flex mb-3">
                <div class="col-md-8">
                    <div class="still row">
                        
                        <img style="cursor:pointer;"data-toggle="modal" data-target="#popupvideogallery2015" src="http://www.miniindy.org/assets/Uploads/videos/MiniIndyVideo(2014).jpg" alt="2014 Mini Indy" />
                       
                    </div>    
                </div>
                <div class="col-md-4">
                    <div class="info">
                        <h6>
                            <div style="cursor:pointer;"data-toggle="modal" data-target="#popupvideogallery2015">
                                <strong>Mini Indy 2014</strong>
                            </div>
                        </h6>
                        <div class="modal fade" id="popupvideogallery2014" tabindex="-1" role="dialog" aria-labelledby="popupvideogallery2014Title" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                            <video-js data-account="1589608515001" data-player="HyJPGnaE" data-embed="default" controls="" data-video-id="3615745272001" data-playlist-id="" data-application-id="" class="vjs-fluid"></video-js>
                                            <script src="https://players.brightcove.net/1589608515001/HyJPGnaE_default/index.min.js"></script>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>    
                    <p>
                        <span>2014 Mini Indy Highlight Video.</span>
                        <br>
                        <strong>Duration:</strong>
                        <span>3:09</span>
                    </p>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div> --%>
       

<%-- Mini Indy 2013 --%>
        <%-- <div class="col-md-6">
            <div class="d-flex mb-3">
                <div class="col-md-8">
                    <div class="still row">
                        
                        <img style="cursor:pointer;"data-toggle="modal" data-target="#popupvideogallery2013" src="http://www.miniindy.org/assets/Uploads/videos/MiniIndyVideo(2013).jpg" alt="2013 Mini Indy" />
                       
                    </div>    
                </div>
                <div class="col-md-4">
                    <div class="info">
                        <h6>
                            <div style="cursor:pointer;"data-toggle="modal" data-target="#popupvideogallery2013">
                                <strong>Mini Indy 2013</strong>
                            </div>
                        </h6>
                        <div class="modal fade" id="popupvideogallery2013" tabindex="-1" role="dialog" aria-labelledby="popupvideogallery2013Title" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                            <video-js data-account="1589608515001" data-player="HyJPGnaE" data-embed="default" controls="" data-video-id="2752863011001" data-playlist-id="" data-application-id="" class="vjs-fluid"></video-js>
                                            <script src="https://players.brightcove.net/1589608515001/HyJPGnaE_default/index.min.js"></script>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>    
                    <p>
                        <span>2013 Mini Indy Highlight Video.</span>
                        <br>
                        <strong>Duration:</strong>
                        <span>3:16</span>
                    </p>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div> --%>

<%-- Mini Indy 2012 --%>
        <%-- <div class="col-md-6">
            <div class="d-flex mb-3">
                <div class="col-md-8">
                    <div class="still row">
                        
                        <img style="cursor:pointer;"data-toggle="modal" data-target="#popupvideogallery2012" src="http://www.miniindy.org/assets/Uploads/videos/MiniIndyVideo(2012).jpg" alt="2012 Mini Indy" />
                       
                    </div>    
                </div>
                <div class="col-md-4">
                    <div class="info">
                        <h6>
                            <div style="cursor:pointer;"data-toggle="modal" data-target="#popupvideogallery2012">
                                <strong>Mini Indy 2012</strong>
                            </div>
                        </h6>
                        <div class="modal fade" id="popupvideogallery2012" tabindex="-1" role="dialog" aria-labelledby="popupvideogallery2012Title" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                            <video-js data-account="1589608515001" data-player="HyJPGnaE" data-embed="default" controls="" data-video-id="2758921996001" data-playlist-id="" data-application-id="" class="vjs-fluid"></video-js>
                                            <script src="https://players.brightcove.net/1589608515001/HyJPGnaE_default/index.min.js"></script>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>    
                    <p>
                        <span>2012 Mini Indy Highlight Video.</span>
                        <br>
                        <strong>Duration:</strong>
                        <span>4:22</span>
                    </p>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div> --%>
        




<%-- Mini Indy 2011 --%>
        <%-- <div class="col-md-6">
            <div class="d-flex mb-3">
                <div class="col-md-8">
                    <div class="still row">
                        
                        <img style="cursor:pointer;"data-toggle="modal" data-target="#popupvideogallery2011" src="http://www.miniindy.org/assets/Uploads/videos/MiniIndyVideo(2011).jpg" alt="2011 Mini Indy" />
                       
                    </div>    
                </div>
                <div class="col-md-4">
                    <div class="info">
                        <h6>
                            <div style="cursor:pointer;"data-toggle="modal" data-target="#popupvideogallery2011">
                                <strong>Mini Indy 2011</strong>
                            </div>
                        </h6>
                        <div class="modal fade" id="popupvideogallery2011" tabindex="-1" role="dialog" aria-labelledby="popupvideogallery2011Title" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                            <video-js data-account="1589608515001" data-player="HyJPGnaE" data-embed="default" controls="" data-video-id="1618248604001" data-playlist-id="" data-application-id="" class="vjs-fluid"></video-js>
                                            <script src="https://players.brightcove.net/1589608515001/HyJPGnaE_default/index.min.js"></script>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>    
                    <p>
                        <span>2011 Mini Indy Highlight Video.</span>
                        <br>
                        <strong>Duration:</strong>
                        <span>3:38</span>
                    </p>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div> --%>
       


<%-- Mini Indy 2010 --%>
        <%-- <div class="col-md-6">
            <div class="d-flex mb-3">
                <div class="col-md-8">
                    <div class="still row">
                        
                        <img style="cursor:pointer;"data-toggle="modal" data-target="#popupvideogallery2011" src="http://www.miniindy.org/assets/Uploads/videos/MiniIndyVideo(2010).jpg" alt="2010 Mini Indy" />
                       
                    </div>    
                </div>
                <div class="col-md-4">
                    <div class="info">
                        <h6>
                            <div style="cursor:pointer;"data-toggle="modal" data-target="#popupvideogallery2010">
                                <strong>Mini Indy 2010</strong>
                            </div>
                        </h6>
                        <div class="modal fade" id="popupvideogallery2010" tabindex="-1" role="dialog" aria-labelledby="popupvideogallery2010Title" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                            <video-js data-account="1589608515001" data-player="HyJPGnaE" data-embed="default" controls="" data-video-id="2761500545001" data-playlist-id="" data-application-id="" class="vjs-fluid"></video-js>
                                            <script src="https://players.brightcove.net/1589608515001/HyJPGnaE_default/index.min.js"></script>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>    
                    <p>
                        <span>2010 Mini Indy Highlight Video.</span>
                        <br>
                        <strong>Duration:</strong>
                        <span>3:19</span>
                    </p>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div> --%>

<%-- Mini Indy 2009 --%>
        <%-- <div class="col-md-6">
            <div class="d-flex mb-3">
                <div class="col-md-8">
                    <div class="still row">
                        
                        <img style="cursor:pointer;"data-toggle="modal" data-target="#popupvideogallery2009" src="http://www.miniindy.org/assets/Uploads/videos/MiniIndyVideo(2009).jpg" alt="2009 Mini Indy" />
                       
                    </div>    
                </div>
                <div class="col-md-4">
                    <div class="info">
                        <h6>
                            <div style="cursor:pointer;"data-toggle="modal" data-target="#popupvideogallery2009">
                                <strong>Mini Indy 2009</strong>
                            </div>
                        </h6>
                        <div class="modal fade" id="popupvideogallery2009" tabindex="-1" role="dialog" aria-labelledby="popupvideogallery2009Title" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                            <video-js data-account="1589608515001" data-player="HyJPGnaE" data-embed="default" controls="" data-video-id="2764603255001" data-playlist-id="" data-application-id="" class="vjs-fluid"></video-js>
                                            <script src="https://players.brightcove.net/1589608515001/HyJPGnaE_default/index.min.js"></script>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>    
                    <p>
                        <span>2009 Mini Indy Highlight Video.</span>
                        <br>
                        <strong>Duration:</strong>
                        <span>2:57</span>
                    </p>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div> --%>


<%-- Mini Indy 2008 --%>
        <%-- <div class="col-md-6">
            <div class="d-flex mb-3">
                <div class="col-md-8">
                    <div class="still row">
                        
                        <img style="cursor:pointer;"data-toggle="modal" data-target="#popupvideogallery2008" src="http://www.miniindy.org/assets/Uploads/videos/MiniIndyVideo(2008).jpg" alt="2008 Mini Indy" />
                       
                    </div>    
                </div>
                <div class="col-md-4">
                    <div class="info">
                        <h6>
                            <div style="cursor:pointer;"data-toggle="modal" data-target="#popupvideogallery2008">
                                <strong>Mini Indy 2008</strong>
                            </div>
                        </h6>
                        <div class="modal fade" id="popupvideogallery2008" tabindex="-1" role="dialog" aria-labelledby="popupvideogallery2008Title" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                            <video-js data-account="1589608515001" data-player="HyJPGnaE" data-embed="default" controls="" data-video-id="2763953960001" data-playlist-id="" data-application-id="" class="vjs-fluid"></video-js>
                                            <script src="https://players.brightcove.net/1589608515001/HyJPGnaE_default/index.min.js"></script>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>    
                    <p>
                        <span>2008 Mini Indy Highlight Video.</span>
                        <br>
                        <strong>Duration:</strong>
                        <span>2:54</span>
                    </p>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div> --%>

<%-- Mini Indy 2007 --%>
        <%-- <div class="col-md-6">
            <div class="d-flex mb-3">
                <div class="col-md-8">
                    <div class="still row">
                        
                        <img style="cursor:pointer;"data-toggle="modal" data-target="#popupvideogallery2007" src="http://www.miniindy.org/assets/Uploads/videos/MiniIndyVideo(2007).jpg" alt="2007 Mini Indy" />
                       
                    </div>    
                </div>
                <div class="col-md-4">
                    <div class="info">
                        <h6>
                            <div style="cursor:pointer;"data-toggle="modal" data-target="#popupvideogallery2007">
                                <strong>Mini Indy 2007</strong>
                            </div>
                        </h6>
                        <div class="modal fade" id="popupvideogallery2007" tabindex="-1" role="dialog" aria-labelledby="popupvideogallery2007Title" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                            <video-js data-account="1589608515001" data-player="HyJPGnaE" data-embed="default" controls="" data-video-id="2764666066001" data-playlist-id="" data-application-id="" class="vjs-fluid"></video-js>
                                            <script src="https://players.brightcove.net/1589608515001/HyJPGnaE_default/index.min.js"></script>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>    
                    <p>
                        <span>2007 Mini Indy Highlight Video.</span>
                        <br>
                        <strong>Duration:</strong>
                        <span>4:35</span>
                    </p>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div> --%>


<%-- Mini Indy 2006 --%>
        <%-- <div class="col-md-6">
            <div class="d-flex mb-3">
                <div class="col-md-8">
                    <div class="still row">
                        
                        <img style="cursor:pointer;"data-toggle="modal" data-target="#popupvideogallery2006" src="http://www.miniindy.org/assets/Uploads/videos/MiniIndyVideo(2006).jpg" alt="2006 Mini Indy" />
                       
                    </div>    
                </div>
                <div class="col-md-4">
                    <div class="info">
                        <h6>
                            <div style="cursor:pointer;"data-toggle="modal" data-target="#popupvideogallery2006">
                                <strong>Mini Indy 2006</strong>
                            </div>
                        </h6>
                        <div class="modal fade" id="popupvideogallery2006" tabindex="-1" role="dialog" aria-labelledby="popupvideogallery2006Title" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                            <video-js data-account="1589608515001" data-player="HyJPGnaE" data-embed="default" controls="" data-video-id="2764660090001" data-playlist-id="" data-application-id="" class="vjs-fluid"></video-js>
                                            <script src="https://players.brightcove.net/1589608515001/HyJPGnaE_default/index.min.js"></script>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>    
                    <p>
                        <span>2006 Mini Indy Highlight Video.</span>
                        <br>
                        <strong>Duration:</strong>
                        <span>4:20</span>
                    </p>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div> --%>
       
<%-- Mini Indy 2005 --%>
        <%-- <div class="col-md-6">
            <div class="d-flex mb-3">
                <div class="col-md-8">
                    <div class="still row">
                        
                        <img style="cursor:pointer;"data-toggle="modal" data-target="#popupvideogallery2005" src="http://www.miniindy.org/assets/Uploads/videos/MiniIndyVideo(2005).jpg" alt="2005 Mini Indy" />
                       
                    </div>    
                </div>
                <div class="col-md-4">
                    <div class="info">
                        <h6>
                            <div style="cursor:pointer;"data-toggle="modal" data-target="#popupvideogallery2005">
                                <strong>Mini Indy 2005</strong>
                            </div>
                        </h6>
                        <div class="modal fade" id="popupvideogallery2005" tabindex="-1" role="dialog" aria-labelledby="popupvideogallery2005Title" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                            <video-js data-account="1589608515001" data-player="HyJPGnaE" data-embed="default" controls="" data-video-id="2764666037001" data-playlist-id="" data-application-id="" class="vjs-fluid"></video-js>
                                            <script src="https://players.brightcove.net/1589608515001/HyJPGnaE_default/index.min.js"></script>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>    
                    <p>
                        <span>2005 Mini Indy Highlight Video.</span>
                        <br>
                        <strong>Duration:</strong>
                        <span>3:34</span>
                    </p>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div> --%>

     
<%-- Mini Indy 2004 --%>
        <%-- <div class="col-md-6">
            <div class="d-flex mb-3">
                <div class="col-md-8">
                    <div class="still row">
                        
                        <img style="cursor:pointer;"data-toggle="modal" data-target="#popupvideogallery2004" src="http://www.miniindy.org/assets/Uploads/videos/MiniIndyVideo(2004).jpg" alt="2004 Mini Indy" />
                       
                    </div>    
                </div>
                <div class="col-md-4">
                    <div class="info">
                        <h6>
                            <div style="cursor:pointer;"data-toggle="modal" data-target="#popupvideogallery2004">
                                <strong>Mini Indy 2004</strong>
                            </div>
                        </h6>
                        <div class="modal fade" id="popupvideogallery2004" tabindex="-1" role="dialog" aria-labelledby="popupvideogallery2004Title" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                            <video-js data-account="1589608515001" data-player="HyJPGnaE" data-embed="default" controls="" data-video-id="2764615612001" data-playlist-id="" data-application-id="" class="vjs-fluid"></video-js>
                                            <script src="https://players.brightcove.net/1589608515001/HyJPGnaE_default/index.min.js"></script>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>    
                    <p>
                        <span>2004 Mini Indy Highlight Video.</span>
                        <br>
                        <strong>Duration:</strong>
                        <span>3:44</span>
                    </p>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div> --%>


<%-- Mini Indy 2003 --%>
        <%-- <div class="col-md-6">
            <div class="d-flex mb-3">
                <div class="col-md-8">
                    <div class="still row">
                        
                        <img style="cursor:pointer;"data-toggle="modal" data-target="#popupvideogallery2004" src="http://www.miniindy.org/assets/Uploads/videos/MiniIndyVideo(2003).jpg" alt="2003 Mini Indy" />
                       
                    </div>    
                </div>
                <div class="col-md-4">
                    <div class="info">
                        <h6>
                            <div style="cursor:pointer;"data-toggle="modal" data-target="#popupvideogallery2004">
                                <strong>Mini Indy 2003</strong>
                            </div>
                        </h6>
                        <div class="modal fade" id="popupvideogallery2003" tabindex="-1" role="dialog" aria-labelledby="popupvideogallery2003Title" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                            <div class="modal-dialog modal-dialog-centered " role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                            <video-js data-account="1589608515001" data-player="HyJPGnaE" data-embed="default" controls="" data-video-id="2764608748001" data-playlist-id="" data-application-id="" class="vjs-fluid"></video-js>
                                            <script src="https://players.brightcove.net/1589608515001/HyJPGnaE_default/index.min.js"></script>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>    
                    <p>
                        <span>2003 Mini Indy Highlight Video.</span>
                        <br>
                        <strong>Duration:</strong>
                        <span>1:57</span>
                    </p>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div> --%>

    <%-- </div> --%>
<%-- </div>        --%>