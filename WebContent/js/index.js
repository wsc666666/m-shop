$(document).ready(function() {
            $.ajax({
                url : "admin/get_online_ganbu.php",//后台请求的数据，用的是PHP
                dataType : "json",//数据格式 
                type : "get",//请求方式
                async : false,//是否异步请求
                success : function(data) {   //如果请求成功，返回数据。
                var html = "";
                for(var i=0;i<data.length;i++){    //遍历data数组
                        var ls = data[i];     
                        html +="<span>测试："+ls.name+"</span>";
                    }
                    $("#test").html(html); //在html页面id=test的标签里显示html内容
                },
            })
        })
