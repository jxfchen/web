# web<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>动画效果案例-滚动播放图片</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
	<style>
	     ul li{
	      	float:left;
	      }
		  .cartoon,.highlight_tip,.change_btn{
		  	float:left;
		  }
		  .current{
		  	color:red;
		  }
		  
		  .v_content_list{
		  	position:absolute;
		  	left:0px;
			width:1200px;
			margin:100px auto;   /*代表对象上下间隔为100px，左右间隔根据对象宽度自适应*/
			overflow:hidden;   /*超出就隐藏*/
		  }
	     ul{
	     list-style:none; /* 	//无列表样式 */
		  width:2999px;
		  }

</style>
<script type="text/javascript">
   $(function(){
            var page = 1;
            //点击下一页
            $("span.next").click(function() {
             //根据当前单击的元素获取父元素
                var $parent = $(this).parents("div.v_show");
                //找到“视频内容展示区域”
                var $v_show = $parent.find("div.v_content_list");
                //总的视频图片数
                var page_count = 4;
			    if (!$v_show.is(":animated")) {//判断元素是否处于动画状态
			        //判断“视频内容展示区域” 是否正在处于动画
                    //只要不是整数，就往大的方向去取小的整数
                    if (page == page_count) {
                        //已经到最后一个版面了，如果再向后，必须跳转到第一个版面
                        $v_show.animate({ left: '0px' }, "slow");
                        //通过改变left值，跳转到第一个版面
                        page = 1;

                    } else {  //1  2  3
                        //改变left值，达到每次换一个版面
                        $v_show.animate({ left: '-=' + 300 }, "slow");
                        page++;//2   3   4
                    }
                }
                $parent.find("span").eq((page - 1)).addClass("current").siblings().removeClass("current");

            });
            
             $("span.prev").click(function() {
                //根据当前单击的元素获取父元素
                var $parent = $(this).parents("div.v_show");
                //找到“视频内容展示区域”
                var $v_show = $parent.find("div.v_content_list");
                //总的视频图片数
                var page_count = 4;
               if (!$v_show.is(":animated")) {
                    //已经到第一个版面了，如果再向前，必须跳转到最后一个页面
                    if (page == 1) {
                        $v_show.animate({ left: '-=' + 300 * (page_count - 1) }, "slow");
                        page = page_count;
                    } else {
                        $v_show.animate({ left: '+=' + 300 }, "slow");
                        page--;
                    }
                }

                $parent.find("span").eq((page - 1)).addClass("current").siblings().removeClass("current");

            });
		});
    
</script>
  </head>
  
  <body>
    <div class="v_show">
    
    
	    <div class="v_caption">
	        <h2 class="cartoon" title="卡通动漫">卡通动漫</h2>
	        
	        <div class="highlight_tip">
	            <span class="current">1</span>
	            <span>2</span>
	            <span>3</span>
	            <span>4</span>
	        </div>        
	        
	        <div class="change_btn">
	            <span class="next"><img src="image/forward.gif" alt="下一页"/></span>
	            <span class="prev"><img src="image/back.png" alt="上一页"/></span>
	        </div>
	        <em><a href="#">更多>></a></em>
	        
	    </div>
    
    
	    <div class="v_content">
	        <div class="v_content_list">
	            <ul>
	                <li><a href="#"><img src="image/1.jpg" alt="海边" /></a>
	                <h4><a href="#">海边</a></h4>
	                <span>播放<em>57,865</em></span>
	                </li>
	                
	                <li><a href="#"><img src="image/2.jpg" alt="海边" /></a>
	                <h4><a href="#">海边</a></h4>
	                <span>播放<em>57,865</em></span>
	                </li>
					<li><a href="#"><img src="image/3.jpg" alt="海边" /></a>
	                <h4><a href="#">海边</a></h4>
	                <span>播放<em>57,865</em></span>
	                </li>
					<li><a href="#"><img src="image/4.jpg" alt="海边" /></a>
	                <h4><a href="#">海边</a></h4>
	                <span>播放<em>57,865</em></span>	
	           </ul>
	        </div>
	    </div>
 </div>
  </body>
</html>
