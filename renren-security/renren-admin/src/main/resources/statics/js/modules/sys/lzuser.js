$(function () {
    $("#jqGrid").jqGrid({
        url: baseURL + 'sys/lzuser/list',
        datatype: "json",
        colModel: [			
			{ label: 'userId', name: 'userId', index: 'user_id', width: 50, key: true, hidden: true },
			{ label: '卡号', name: 'cardNumber', index: 'card_number', width: 80 },
			{ label: '用户名', name: 'username', index: 'username', width: 80 }, 			
			{ label: '手机号', name: 'mobile', index: 'mobile', width: 80 }, 			
			{ label: '余额', name: 'money', index: 'money', width: 80 },
			{ label: '状态', name: 'status', index: 'status', width: 80, formatter: function(value, options, row){
                return value === 0 ?
                    '<span class="label label-danger">禁用</span>' :
                    '<span class="label label-success">正常</span>';
            }},
			{ label: '发卡时间', name: 'createTime', index: 'create_time', width: 80 },
			{ label: '洗车次数', name: 'washTimes', index: 'wash_times', width: 80 , formatter: function(value, options, row){
                return value === 0 ?
                    '<span class="label label-danger">剩余'+ value +'次</span>' :
                    '<span class="label label-success">剩余'+ value +'次</span>';
            }},
			{ label: '打蜡次数', name: 'waxTimes', index: 'wax_times', width: 80, formatter: function(value, options, row){
                return value === 0 ?
                    '<span class="label label-danger">剩余'+ value +'次</span>' :
                    '<span class="label label-success">剩余'+ value +'次</span>';
            } },
			{ label: '性别', name: 'sex', index: 'sex', width: 80,  formatter: function(value, options, row){
                return value === 0 ?
                    '女' :
                    '男';
            }}
        ],
		viewrecords: true,
        height: 385,
        rowNum: 10,
		rowList : [10,30,50],
        rownumbers: true, 
        rownumWidth: 25, 
        autowidth:true,
        multiselect: true,
        pager: "#jqGridPager",
        jsonReader : {
            root: "page.list",
            page: "page.currPage",
            total: "page.totalPage",
            records: "page.totalCount"
        },
        prmNames : {
            page:"page", 
            rows:"limit", 
            order: "order"
        },
        gridComplete:function(){
        	//隐藏grid底部滚动条
        	$("#jqGrid").closest(".ui-jqgrid-bdiv").css({ "overflow-x" : "hidden" }); 
        }
    });
});

var vm = new Vue({
	el:'#rrapp',
	data:{
	    lzUserSearch:{
	        cardNumber: null,
        },
        rechargeMoney: 0,
		showList: true,
        addUser: false,
        addMoney: false,
		title: null,
		lzUser: {}
	},
	methods: {
		query: function () {
			vm.reload();
		},
		add: function(){
            vm.showList = false;
			vm.addUser = true;
			vm.addMoney = false;
			vm.title = "添加会员";
			vm.lzUser = {};
		},
		update: function (event) {
			var userId = getSelectedRow();
			if(userId == null){
				return ;
			}
			vm.showList = false;
            vm.addUser = false;
            vm.title = "修改会员";
            
            vm.getInfo(userId)
		},
		saveOrUpdate: function (event) {
		    $('#btnSaveOrUpdate').button('loading').delay(1000).queue(function() {
                var url = vm.lzUser.userId == null ? "sys/lzuser/save" : "sys/lzuser/update";
                $.ajax({
                    type: "POST",
                    url: baseURL + url,
                    contentType: "application/json",
                    data: JSON.stringify(vm.lzUser),
                    success: function(r){
                        if(r.code === 0){
                             layer.msg("操作成功", {icon: 1});
                             vm.reload();
                             $('#btnSaveOrUpdate').button('reset');
                             $('#btnSaveOrUpdate').dequeue();
                        }else{
                            layer.alert(r.msg);
                            $('#btnSaveOrUpdate').button('reset');
                            $('#btnSaveOrUpdate').dequeue();
                        }
                    }
                });
			});
		},
        recharge: function (event) {
            
        },
		del: function (event) {
			var userIds = getSelectedRows();
			if(userIds == null){
				return ;
			}
			var lock = false;
            layer.confirm('确定要删除选中的记录？', {
                btn: ['确定','取消'] //按钮
            }, function(){
               if(!lock) {
                    lock = true;
		            $.ajax({
                        type: "POST",
                        url: baseURL + "sys/lzuser/delete",
                        contentType: "application/json",
                        data: JSON.stringify(userIds),
                        success: function(r){
                            if(r.code == 0){
                                layer.msg("操作成功", {icon: 1});
                                $("#jqGrid").trigger("reloadGrid");
                            }else{
                                layer.alert(r.msg);
                            }
                        }
				    });
			    }
             }, function(){
             });
		},
		getInfo: function(userId){
			$.get(baseURL + "sys/lzuser/info/"+userId, function(r){
                vm.lzUser = r.lzUser;
            });
		},
        charge: function(){
            var userId = getSelectedRow();
            if(userId == null){
                return ;
            }
            //alert(userId);
            vm.showList = true;
            vm.addMoney = true;
            vm.title = "会员充值";
            vm.getInfo(userId)
        },
		reload: function (event) {
			vm.showList = true;
			var page = $("#jqGrid").jqGrid('getGridParam','page');
			$("#jqGrid").jqGrid('setGridParam',{
                postData:{'cardNumber': vm.lzUserSearch.cardNumber},
                page:page
            }).trigger("reloadGrid");
		}
	}
});