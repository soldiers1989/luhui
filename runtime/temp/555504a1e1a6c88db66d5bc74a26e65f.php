<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:70:"D:\php2016\WWW\luhui\public/../application/index\view\index\index.html";i:1536212647;s:62:"D:\php2016\WWW\luhui\application\index\view\public\header.html";i:1536130199;s:60:"D:\php2016\WWW\luhui\application\index\view\public\head.html";i:1536219529;s:60:"D:\php2016\WWW\luhui\application\index\view\public\foot.html";i:1536214804;}*/ ?>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>山东鲁汇</title>
  <meta name="keywords" content="山东鲁汇">
  <meta name="description" content="山东鲁汇">
  <link href="/static/www/css/boot.css" rel="stylesheet">
  <link href="/static/www/css/luhui.css" rel="stylesheet">
</head>
 <body>
  <div class="navbar navbar-default" style="height: 128px">
    <div class="container" style="width: 1400px;">
      <div class="navbar-header" style="width: 500px">
        <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand hidden-sm" href="/" onclick="_hmt.push(['_trackEvent', 'navbar', 'click', 'navbar-首页'])" style="width: 500px;margin-top:35px ">
          <img src="/static/www/img/LH.png" alt="" style="width:75px;height: 68px;float: left;">
          <img src="/static/www/img/logo_text.png" alt="" style="width:296px;height: 28px;margin: 5%  0  0 20% " >
         </a>
      </div>
      <div class="navbar-collapse collapse" role="navigation">
        <ul class="nav navbar-nav" style="margin-top:35px">
          <li class="hidden-sm hidden-md">
            <a href="/" target="_blank"><span class="nav_head_title">HOME</span><p style="margin-top: 10px">首页</p></a>
          </li>
          <li>
            <a href="/#chanpin" target="_blank"><span class="nav_head_title">PRODUCTS</span><p style="margin-top: 10px">产品展示</p></a>
          </li>
          <li>
            <a href="/#shengchan" target="_blank"><span class="nav_head_title">ENVIRONMENT</span><p style="margin-top: 10px">生产环境</p></a>
          </li>
          <li>
              <a href="/#news" target="_blank"><span class="nav_head_title">NEWS</span><p style="margin-top: 10px">新闻资讯</p></a>
          </li>
          <li>
            <a href="/#lianxiwomen" target="_blank"><span class="nav_head_title">CONTACT</span><p style="margin-top: 10px">联系我们</p></a>
          </li>
        </ul>
      </div>
    </div>
  </div>
  <div class="bs-example" data-example-id="carousel-with-captions">
    <div id="carousel-example-captions" class="carousel slide" data-ride="carousel" style="width: 1440px;margin: auto">
      <ol class="carousel-indicators">
        <?php foreach($banner_data as $key=>$vo): if($key == 0): ?>
            <li data-target="#carousel-example-captions" data-slide-to="<?php echo $key; ?>" class="active"></li>
          <?php else: ?>
            <li data-target="#carousel-example-captions" data-slide-to="<?php echo $key; ?>" class=""></li>
          <?php endif; endforeach; ?>
      </ol>
      <div class="carousel-inner" role="listbox" style="text-align: center">
        <?php foreach($banner_data as $key=>$vo): if($key == 0): ?>
            <div class="item active" >
              <a target="view_window" href="http://<?php echo $vo['bn_url']; ?>">
                <img  data-src="<?php echo $vo['bn_img']; ?>" alt="900x500" src="/static/uploads/banner/<?php echo $vo['bn_img']; ?>" data-holder-rendered="true"  style="display:inline-block;width: 100%;height: 512px;">
              <div class="carousel-caption">
                <div>
                  <h2><?php echo $vo['bn_title']; ?></h2>
                  <div style="margin-top: 3%">
                    <p style="border-bottom:solid 1px #ffffff;width: 52%;"></p>
                    <p style="width: 52%;"><?php echo $vo['bn_content']; ?></p>
                    <p style="border-bottom:solid 1px #ffffff;width: 52%"></p>
                  </div>
                </div>
              </div>
              </a>
            </div>
          <?php else: ?>
            <div class="item" style="width: 100%">
              <a target="view_window" href="http://<?php echo $vo['bn_url']; ?>">
                <img href="<?php echo (isset($vo['url']) && ($vo['url'] !== '')?$vo['url']:''); ?>" data-src="<?php echo $vo['bn_img']; ?>" alt="900x500" src="/static/uploads/banner/<?php echo $vo['bn_img']; ?>" data-holder-rendered="true" style="display:inline-block;width: 1440px;height: 512px;">
              </a>
              <div class="carousel-caption">
                <div>
                  <h2><?php echo $vo['bn_title']; ?></h2>
                  <div style="margin-top: 3%">
                    <p style="border-bottom:solid 1px #ffffff;width: 52%;"></p>
                    <p style="width: 52%;"><?php echo $vo['bn_content']; ?></p>
                    <p style="border-bottom:solid 1px #ffffff;width: 52%"></p>
                  </div>
                </div>

              </div>
              </a>
            </div>
          <?php endif; endforeach; ?>
      <a class="carousel-control" href="#carousel-example-captions" role="button" data-slide="prev" style="margin-left: 5%">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true" ></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#carousel-example-captions" role="button" data-slide="next" style="background-image:none;margin-right: 5%">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </div>


<div class="container bs-docs-container" style="text-indent: 2em;">

  <div class="row">
    <div class="col-md-12">
      <br>
      <br><br>
      <h3 href="#" style="font-weight:bold;color: #003366;text-align: center">青岛鲁慧</h3>
      <div style="text-align: center">
        <img src="/static/www/img/widget.png" alt=""><br><br>
      </div>
      <div style="width: 98%;">
        <a class="miaoshu" style="width: 50%;">青岛鲁慧机械有限公司成立于2017年6月，公司位于美丽的海滨城市青岛城阳，是一家从事生产、销售规模化与现代化畜禽养殖设备的高新技术企业。公司集加工、销售机械设备及配件、供水管道、通风风机、温控设备、货物进出口、技术进出口与服务为一体，主要产品包括：鸡舍自动喂料线（料盘）、鸡舍自动饮水系统（乳头饮水线）等。
          <br>公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧鑽自动机床、单轴五刀自动车床等设备，生产效率、市场占有率及销售收入在国内同行业中名列前茅。<br>
          公司以技术为核心，不断创新，与时俱进，力争在国内机械制造行业占领一席之地，并向国际一流的畜牧机械制造企业看齐。公司的销售网络遍布全国，极大促进各地规模化养殖业发展，为畜牧业发展提供设备保障，并积极与世界接轨，开发外国客户，将产品推向世界。<br>
          公司以诚信为基础，以品质为依托，本着“服务客户，奉献进取”的理念，立志推进畜牧业养殖的规范化发展，提高效率、降低成本，不断研发提高企业竞争力，为社会奉献力量。</a><br><br><br> <br>
      </div>

    </div>
  </div>
</div>
<div id="chanpin" class="container bs-docs-container" style="text-align:center;text-align: center;background-color: #3873af;width:1440px;height: 1050px">
  <div class="row">
    <div class="col-md-12" style="margin-bottom: 87px">
      <h3 href="#" style="color:#fff;margin-top:99px;margin-bottom: 0px;font-family: SourceHanSansSC-Medium;">产品展示</h3>
      <img src="/static/www/img/juxing.png" alt="">
    </div>
    <div class="col-md-2">

    </div>
    <div class="col-md-2">
    </div>
</div>
    <div class="bs-example" data-example-id="carousel-with-captions">
      <div id="carousel-example-captions1" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner" role="listbox" style="text-align: center">
          <?php foreach($product as $key=>$vo): if($key == 0): ?>
          <div class="item active" >
            <img data-src="<?php echo $vo['pd_img']; ?>" alt="900x500" src="/static/uploads/product/<?php echo $vo['pd_img']; ?>" data-holder-rendered="true"  style="display:inline-block;width: 536px;height: 408px;border: #ffffff 10px solid">
            <div>
              <h2 style="font-size: 36px;font-family:MicrosoftYaHei;color:#fff"><?php echo $vo['pd_title']; ?></h2>
              <div style="width: 63%;margin-left: 19%;">
                <p class="chanpin_fubiaoti"><?php echo $vo['pd_content']; ?></p>
              </div>
            </div>
          </div>

          <?php else: ?>
          <div class="item" style="width: 100%">
            <img data-src="<?php echo $vo['pd_img']; ?>" alt="900x500" src="/static/uploads/product/<?php echo $vo['pd_img']; ?>" data-holder-rendered="true" style="display:inline-block;width: 536px;height: 408px;border: #ffffff 10px solid">
            <div>
              <h2 style="font-size: 36px;font-family:MicrosoftYaHei;color:#fff"><?php echo $vo['pd_title']; ?></h2>
              <div style="width: 63%;margin-left: 19%;font-size: 24px;color: #fff;font-family:MicrosoftYaHei;">
                <p class="chanpin_fubiaoti"><?php echo $vo['pd_content']; ?></p>
              </div>
            </div>
          </div>

          <?php endif; endforeach; ?>
          <a class="left carousel-control" href="#carousel-example-captions1" role="button" data-slide="prev" style="left: 8%;background-image:none">
            <div class="col-md-2" style="margin-left: 40%;margin-top: 20%">
              <div class="chanpin_control">
                <img src="/static/www/img/xiaoyu.png">
              </div>
            </div>
          </a>
          <a class="right carousel-control" href="#carousel-example-captions1" role="button" data-slide="next" style="right:6%;background-image:none">
            <div class="col-md-2" style="margin-top: 20%">
              <div class="chanpin_control">
                <img src="/static/www/img/dayu.png">
              </div>
            </div>
          </a>
        </div>
      </div>
    </div>
</div>


<div id="shengchan" class="container bs-docs-container" style="text-align:center">

  <div class="row">
    <div class="col-md-12">
      <br>
      <br><br>
      <h3 href="#" style="font-weight:bold;margin-bottom: 0;">生产环境</h3>
      <img src="/static/www/img/widget.png" alt=""><br><br><br>
      <?php foreach($production as $key => $vo): if(($key)%2 == 0): ?>
          <div class="miao_div">
            <img src="<?php echo $imgpath_production; ?><?php echo $vo['pe_img']; ?>" alt="" class="luhui_img_a">
            <a class="miaoshu miaoshu_bianju" href="#"><?php echo $vo['pe_title']; ?></a>
          </div>
      <br><br><br>
        <?php else: ?>
      <div class="miao_div">
        <a class="miaoshu miaoshu_bianju" href="#" style="float: left"><?php echo $vo['pe_title']; ?>
        </a><img src="<?php echo $imgpath_production; ?><?php echo $vo['pe_img']; ?>" alt="" class="luhui_img_a" style="float: right">
      </div>
      <br><br>
      <br> <br>
        <?php endif; endforeach; ?>
    </div>
  </div>
</div>

<div class="container bs-docs-container" style="text-align:center;text-align: center;background-color: #3873af;width: 1440px;">
  <div class="row">
    <img src="/static/www/img/hengfu.jpg" alt="">
  </div>
</div>

<div id="news" class="container bs-docs-container" style="text-align:center">

  <div class="row">
    <div class="col-md-12">
      <br>
      <br><br>
      <h3 href="#" style="margin-bottom: 0px">新闻资讯</h3>
      <img src="/static/www/img/widget.png" alt=""><br><br><br><br><br><br>
      <div class="miao_div">
        <div class="div-relative">
          <div class="div-a">
            <?php foreach($news as $key=>$vo): ?>
            <div class="xinxin_div">
              <div style="width: 100%;height: 200px">
                <div class="shijian_div">
                  <div class="shijian_riqi">
                    <?php echo date('d',$vo['ns_intime']); ?>
                  </div>
                  <div class="shijian_yuefen">
                    <?php echo date('Y-m',$vo['ns_intime']); ?>
                  </div>
                </div>

                <div class="xinwen_dd">
                  <a class="miaoshu" href="/news/<?php echo $vo['ns_id']; ?>">
                    <h7><?php echo $vo['ns_title']; ?></h7>
                    <div  class="dot-ellipsis dot-height-50 Subtitle">
                      <h4><?php echo $vo['ns_descript']; ?></h4>
                    </div>
                  </a>
                </div>

              </div>
            </div>
            <?php endforeach; ?>
          </div>
          <img src="<?php echo $imgpath_news; ?><?php echo $vo['ns_img']; ?>" alt="" class="div-b">
        </div>
      </div>


      <br><br>
      <br> <br>
    </div>
  </div>
</div>

<div class="container bs-docs-container" style="text-align:center;margin-top: 25%">
  <div class="row">
    <div class="col-md-12">
      <br><br>
      <br> <br>
      <a href="/news_list" style="text-decoration:none;color:#003366 ">
        <div class="gengduo_zixun">
         更多资讯
        </div>
      </a>
      <br><br>
      <br><br>
    </div>
  </div>
</div>
<div id="lianxiwomen" class="container bs-docs-container" style="text-align:center;text-align: center;background-color: #3873af;width: 1440px;height: 648px">
  <div class="row">
    <div class="col-md-12">
      <br>
      <br><br>
      <h3 href="#" style="color:#fff">联系我们</h3>
      <img src="/static/www/img/widget.png" alt=""><br><br>
    </div>
    <div class="container bs-docs-container" style="text-align:center;    text-align: center;padding-top: 193px;padding-bottom: 35px;">
      <div class="foot-text">
        <?php echo $contact_data['cu_company']; ?><br>
        联系人:<?php echo $contact_data['cu_name']; ?><br>
        座机/手机:<?php echo $contact_data['cu_seat']; ?>/<?php echo $contact_data['cu_phone']; ?><br>
        传真:<?php echo $contact_data['cu_chuanzhen']; ?><br>
        邮箱:<?php echo $contact_data['cu_email']; ?><br>
        地址:<?php echo $contact_data['cu_access']; ?><br>
      </div>
    </div>
  </div>
</div>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="/static/www/js/jquery.dotdotdot.js"></script>

</body>

</html>

