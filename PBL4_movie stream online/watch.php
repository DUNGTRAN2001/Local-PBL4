<?php
if (isset($_GET['film_id'])) $film_id = $_GET['film_id'];
if (isset($_GET['episode'])) $episode = $_GET['episode'];
if (isset($_GET['num_view'])) $num_view = $_GET['num_view' ] + 1;
$sql = "select * from `episode` where `film_id` = '$film_id' and `episode` = '$episode'";
$update_view = "update film set num_view = $num_view where id = $film_id";
$mysql_query =mysqli_query($link, $update_view);
$query = mysqli_query($link, $sql);
$r = mysqli_fetch_assoc($query);
?>
<div id="content">
    <div id="movie-display">
        <div class="row cur-location">
            <nav id="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="?mod=home">Xem phim</a>
                    </li>
                    /
                    <li class="breadcrumb-item">
                        <?php
                        if (isset($_GET['film_id'])) $film_id = $_GET['film_id'];
                        $sql = "select * from `film` where `id` = '$film_id'";
                        $query = mysqli_query($link, $sql);
                        $r1 = mysqli_fetch_assoc($query);
                        $type_movie = $r1['type_movie'];
                        $sql2 = "select * from `type-movie` where `id` = '$type_movie'";
                        $query = mysqli_query($link, $sql2);
                        $r2 = mysqli_fetch_assoc($query);
                        ?>
                        <a href="?mod=list&type=<?php echo $r2['handle'] ?>&year=2021"><?php echo $r2['name'] ?></a>
                    </li>
                    /
                    <?php
                    $sql = "select * from `film` where `id` = '$film_id'";
                    $query = mysqli_query($link, $sql);
                    $r3 = mysqli_fetch_assoc($query);
                    ?>
                    <li class="breadcrumb-item active" aria-current="page"><?php echo $r3['name'] ?></li>
                </ol>
            </nav>
        </div>
        <div class="row body_video">
            <video width="100%" height="100%" controls>
                <source src="<?php echo $r['content'] ?>" type="video/mp4">
                <!-- <src="https://www.w3schools.com/tags/movie.mp4" type="video/mp4"> -->
                Your browser does not support the video tag.
            </video>
            <div class="share">
                <div class="row">
                    <button type="button" class="btn btn-secondary">
                        <img src="images/icons/plus.png" alt="Share" width="20px"> Thêm vào hộp
                    </button>
                    <!-- <button type="button" class="btn btn-primary share_fb">
                        <img src="images/icons/facebook_square_lightblue-512.png" alt="Share" width="20px"> Share
                    </button> -->

                        <!-- share -->
                        <div id="fb-root"></div>
                        <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v12.0" nonce="5acb3WOq"></script>

                        <div class=" btn fb-share-button" data-href="https://developers.facebook.com/docs/plugins/" data-layout="button_count" data-size="small" >
                            <a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&amp;src=sdkpreparse" class="fb-xfbml-parse-ignore">Chia sẻ</a>
                        </div>


                    <button type="button" class="btn btn-secondary">AutoNext: On</button>
                    <button type="button" class="btn btn-secondary">Phóng to</button>
                    <button type="button" class="btn btn-secondary">
                        <img src="images/icons/lamp.png" alt="Share" width="20px"> Tắt đèn
                    </button>
                </div>

            </div>
        </div>
    </div>
    <div id="detail">
        <div class="row">
            <p>Bạn đang xem phim
                <a href="#"><?php echo $r3['name'] ?></a> online chất lượng cao miễn phí tại <a href="?mod=home"><strong>phimmoi.net</strong></a>
            </p>
            <fieldset>
                <legend>Hướng khắc phục lỗi xem phim</legend>
                <ul>
                    <li>Sử dụng DNS 8.8.8.8, 8.8.4.4 hoặc 208.67.222.222, 208.67.220.220 để xem phim nhanh
                        hơn.
                    </li>
                    <li>Chất lượng phim mặc định chiếu là 360. Để xem phim chất lượng cao hơn xin vui lòng
                        đóng thêm tiền.</li>
                    <li>Xem phim nhanh hơn với trình duyệt Google Chrome, Cốc Cốc</li>
                    <li>Nếu bạn không xem được phim vui lòng nhấn CTRL + F5 hoặc CMD + R trên MAC vài lần.</li>
                </ul>
            </fieldset>
        </div>

    </div>

</div>