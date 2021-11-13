<?php
$host = 'localhost';
$user = 'root';
$pass = '';
$db = 'assfilm';
//error_reporting(0);//Chan thong bao loi

$link = mysqli_connect($host, $user, $pass, $db) or die('Lỗi kết nối');
if (isset($_GET['film_id'])) $film_id = $_GET['film_id'];
$sql = "select * from `film` where `id` = '$film_id'";
$query = mysqli_query($link, $sql);
$r = mysqli_fetch_assoc($query);
?>

</style>
<div id="content">
    <div class="block" id="page-info">
        <div class="blocktitle breadcrumbs">
            <div class="item">
                <a href="?mod=home" title="Xem Phim Nhanh, Xem Phim Online chất lượng cao miễn phí">
                    <span>Xem phim</span>
                </a>
            </div>
            <div class="item">
                <?php
                $type_movie = $r['type_movie'];
                $sql = "select * from `type-movie` where `id` = '$type_movie'";
                $query = mysqli_query($link, $sql);
                $r1 = mysqli_fetch_assoc($query);
                ?>
                <a href="?mod=list&type=<?php echo $r1['handle'] ?>&year=2021 "><span><?php echo $r1['name'] ?></span></a>
            </div>
            <div class="item last-child">
                <span itemprop="title"><?php echo $r['name'] ?></span>
            </div>
        </div>
        <div class="info">
            <h2 class="title fr"><?php echo $r['name'] ?></h2>
            <div class="poster"><a href="#" title="Xem phim <?php echo $r['name'] ?>"><img src="<?php echo $r['image'] ?>" alt="<?php echo $r['name'] ?>"></a></div>
            <div class="name2 fr">
                <h3><?php echo $r['name2'] ?></h3><span class="year" style="font-size:12px"></span>
            </div>
            <div class="dinfo">
                <div class="col1 fr">
                    <ul>
                        <li>Status: <span class="status1"><?php echo $r['status'] ?></span></li>
                        <li>Đạo diễn: <?php echo $r['director'] ?></li>
                        <li>Diễn viên: <?php echo $r['actor'] ?></li>
                        <li>Thể loại: <a href="the-loai/phim-hanh-dong/" title="Phim Hành Động"> Phim Hành Động</a></li>
                    </ul>
                </div>
                <div class="col2">
                    <ul>
                        <?php
                        $nation_id = $r['nation_id'];
                        $sql = "select * from `nation` where `id` = '$nation_id'";
                        $query = mysqli_query($link, $sql);
                        $r2 = mysqli_fetch_assoc($query);
                        ?>
                        <li>Quốc gia: <a href="?mod=list&type=nation&id=<?php echo $r2['id'] ?>" title="Phim <?php echo $r2['name'] ?>"><?php echo $r2['name'] ?></a></li>
                        <li>Thời lượng: <?php echo $r['duration'] ?> Phút</li>
                        <li>Lượt xem: <?php echo $r['num_view'] ?></li>
                        <li>Đăng bởi: <?php echo $r['author'] ?></li>
                    </ul>
                </div>
            </div>
            <div class="groups-btn">
                <a href="?mod=watch&film_id=<?php echo $r['id'] ?>&episode=1&num_view=<?php echo $r['num_view'] ?>">
                    <div class="btn-watch fr"></div>
                </a>
            </div>
        </div>
        <div class="detail">
            <div class="blocktitle tab">Thông tin phim</div>
            <div class="content">
                <h4>Nội dung phim <?php echo $r['name'] ?>:</h4>
                <p><?php echo $r['description'] ?></p>
            </div>
        </div>
    </div>



    <!-- bình luận -->
    <h4 style="font-size: 20px; color: #dacb46; margin: 10px 8px; font-weight: 500;">
        BÌNH LUẬN PHIM : <?php echo $r['name'] ?></h4>
    <div id="fb-root"></div>
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v12.0" nonce="oPHxNpjW">
    </script>

    <div class="fb-comments" data-href="https://developers.facebook.com/docs/plugins/comments#configurator" data-width="670" data-numposts="5" style="background-color: #e3e3e3; border-radius: 4px;">
    </div>


    <!-- ratting -->
    <?php
    if (isset($_POST['save'])) {


        $uID = $link->real_escape_string($_POST['uID']);
        $rateIndex = $link->real_escape_string($_POST['rateIndex']);
        $rateIndex++;
        if (!$uID) {
            $link->query(query: "INSERT INTO stars (rateIndex) value ('$rateIndex') ");
            $sql1 = $link->query(query: "SELECT id FROM stars ORDER BY id DESC LIMIT 1");
            $uData = $sql1->fetch_assoc();
            $uID = $uData['id'];
        } else {
            $link->query(query: "UPDATE stars SET rateIndex='$rateIndex' WHERE id='$uID'");
        }
        exit(json_encode(array('id' => $uID)));
    }
    $sql1 = $link->query(query:"SELECT id FROM stars");
    $numR = $sql1->num_rows;

    $sql1 = $link->query(query:"SELECT SUM(rateIndex) AS total FROM stars");
    $rData = $sql1->fetch_array();
    $total =$rData['total'];

    $avg =round(($total / $numR), 1) ;
    ?>
    
    <div align="center" style="background: #353434; padding: 50px; ">
        <i class="fa fa-star fa-2x" data-index="0"></i>
        <i class="fa fa-star fa-2x" data-index="1"></i>
        <i class="fa fa-star fa-2x" data-index="2"></i>
        <i class="fa fa-star fa-2x" data-index="3"></i>
        <i class="fa fa-star fa-2x" data-index="4"></i>
        <br><br>
        <?php
            echo ("<h2>Xếp Hạng : $avg</h2>");
        ?>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script>
        var rateIndex = -1,
            uID = 0;
        $(document).ready(function() {
            resetStarColors();

            if (localStorage.getItem('rateIndex') != null){
                setStars(parseInt(localStorage.getItem('rateIndex')));
                uID = localStorage.getItem('uID');
            }
                $('.fa-star').on('click', function() {
                rateIndex = parseInt($(this).data('index'));
                localStorage.setItem('rateIndex', rateIndex);
                saveToTheDB();
            });

            $('.fa-star').mouseover(function() {
                resetStarColors();

                var currentIndex = parseInt($(this).data('index'));
                setStars(currentIndex);
            });
            $('.fa-star').mouseleave(function() {
                resetStarColors();

                if (rateIndex != -1)
                    setStars(rateIndex)
            });
        });

        function saveToTheDB() {
            $.ajax({
                url: "detail.php",
                method: "POST",
                dataType: "json",
                data: {
                    save: 1,
                    uID: uID,
                    rateIndex: rateIndex
                },
                success: function(r) {
                    uID = r.id;
                    localStorage.setItem('uID', uID);
                }
            })
        }

        function setStars(max) {
            for (var i = 0; i <= max; i++)
                $('.fa-star:eq(' + i + ')').css('color', 'yellow');
        }

        function resetStarColors() {
            $('.fa-star').css('color', 'white');
        }
    </script>

</div>