$(function () {
    $("#jqGrid").jqGrid({
        url: baseURL + 'sys/lzuser/list',
        datatype: "json",
        colModel: [			
			{ label: 'userId', name: 'userId', index: 'user_id', width: 50, key: true, hidden: true },
			{ label: '卡号', name: 'cardNumber', index: 'card_number', width: 70 },
			{ label: '用户名', name: 'username', index: 'username', width: 50 },
			{ label: '手机号', name: 'mobile', index: 'mobile', width: 60 },
            { label: '车牌号', name: 'carNumber', index: 'car_number', width: 50 },
			{ label: '余额', name: 'money', index: 'money', width: 40 },
			{ label: '状态', name: 'status', index: 'status', width: 40, formatter: function(value, options, row){
			    if(value === 0){
			        return '<span class="label label-danger">禁用</span>';
                }else if(value === 1){
			        return '<span class="label label-success">正常</span>';
                }else if(value === 2){
                    return '<span class="label label-warning">年费</span>';
                }else{
                    return '<span class="label label-default">过期</span>';
                }
                /*return value === 0 ?
                    '<span class="label label-danger">禁用</span>' :
                    '<span class="label label-success">正常</span>';*/
            }},
			{ label: '发卡时间', name: 'createTime', index: 'create_time', width: 80 },
			{ label: '洗车次数', name: 'washTimes', index: 'wash_times', width: 60 , formatter: function(value, options, row){
                return value === 0 ?
                    '<span class="label label-danger">剩余'+ value +'次</span>' :
                    '<span class="label label-success">剩余'+ value +'次</span>&nbsp;&nbsp;<a href="javascript:void(0)" style="cursor:hand" onclick="vm.updateWashTimes('+row.cardNumber+')">洗车</a>';
            }},
			{ label: '打蜡次数', name: 'waxTimes', index: 'wax_times', width: 60, formatter: function(value, options, row){
                return value === 0 ?
                    '<span class="label label-danger">剩余'+ value +'次</span>' :
                    '<span class="label label-success">剩余'+ value +'次</span>&nbsp;&nbsp;<a href="javascript:void(0)" style="cursor:hand" onclick="vm.updateWaxTimes('+row.cardNumber+')">打蜡</a>';
            } },
            { label: '消毒次数', name: 'disinfectionTimes', index: 'disinfection_times', width: 60, formatter: function(value, options, row){
                return value === 0 ?
                    '<span class="label label-danger">剩余'+ value +'次</span>' :
                    '<span class="label label-success">剩余'+ value +'次</span>&nbsp;&nbsp;<a href="javascript:void(0)" style="cursor:hand" onclick="vm.updateDisinfectionTimes('+row.cardNumber+')">消毒</a>';
            } },
			{ label: '性别', name: 'sex', index: 'sex', width: 50,  formatter: function(value, options, row){
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
            mobile: null,
            name: null,
        },
        consumptionMoney: 0,
        consumptionRemarks: null,
        rechargeMoney: 0,
		showList: true,
        addUser: false,
        addMoney: false,
		title: null,
		lzUser: {},
        lzRecharge: {},
        lzConsumption: {}
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
        consumption: function (event) {
            $('#btnShopping').button('loading').delay(1000).queue(function() {
                var url = vm.lzUser.userId == null ? "" : "sys/lzconsumption/save";
                vm.lzConsumption.cardNumber = vm.lzUser.cardNumber;
                vm.lzConsumption.money = vm.consumptionMoney;
                vm.lzConsumption.remarks = vm.consumptionRemarks;
                $.ajax({
                    type: "POST",
                    url: baseURL + url,
                    contentType: "application/json",
                    data: JSON.stringify(vm.lzConsumption),
                    success: function(r){
                        if(r.code === 0){
                            layer.msg("消费成功", {icon: 1});
                            vm.reload();
                            $('#btnShopping').button('reset');
                            $('#btnShopping').dequeue();
                            $('#shoppingModal').modal('hide');
                        }else{
                            layer.alert(r.msg);
                            $('#btnShopping').button('reset');
                            $('#btnShopping').dequeue();
                            $('#shoppingModal').modal('hide');
                        }
                    }
                });
            });
        },
        recharge: function (event) {
            $('#btnRecharge').button('loading').delay(1000).queue(function() {
                var url = vm.lzUser.userId == null ? "" : "sys/lzrechargerecord/save";
                //console.log(vm.lzUser.userId);
                vm.lzRecharge.cardNumber = vm.lzUser.cardNumber;
                vm.lzRecharge.money = vm.rechargeMoney;
                vm.lzConsumption.remarks = vm.consumptionRemarks;
                $.ajax({
                    type: "POST",
                    url: baseURL + url,
                    contentType: "application/json",
                    data: JSON.stringify(vm.lzRecharge),
                    success: function(r){
                        if(r.code === 0){
                            layer.msg("充值成功", {icon: 1});
                            vm.reload();
                            $('#btnRecharge').button('reset');
                            $('#btnRecharge').dequeue();
                            $('#exampleModal').modal('hide');
                        }else{
                            layer.alert(r.msg);
                            $('#btnRecharge').button('reset');
                            $('#btnRecharge').dequeue();
                            $('#exampleModal').modal('hide');
                        }
                    }
                });
            });
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
        consumptionDialog: function(){
            var userId = getSelectedRow();
            if(userId == null){
                return ;
            }
            //alert(userId);
            $("#shoppingDialog").trigger("click");
            //vm.rechargeMoney = 0;
            /*vm.showList = true;
            vm.addMoney = true;*/
            vm.title = "会员消费";
            vm.getInfo(userId);
            $('#shoppingModal').on('hidden.bs.modal', function (e) {
                // do something...
                //alert("模态框关闭了");
                // 模态框关闭后对数据进行初始化
                vm.consumptionMoney = 0;
                vm.consumptionRemarks = null;
            })
        },
        charge: function(){
            var userId = getSelectedRow();
            if(userId == null){
                return ;
            }
            //alert(userId);
            $("#openDialog").trigger("click");
            //vm.rechargeMoney = 0;
            vm.showList = true;
            vm.addMoney = true;
            vm.title = "会员充值";
            vm.getInfo(userId);
            $('#exampleModal').on('hidden.bs.modal', function (e) {
                // do something...
                //alert("模态框关闭了");
                // 模态框关闭后对数据进行初始化
                vm.rechargeMoney = 0;
            })
        },
        updateWashTimes: function (value) {
            //console.log(value);
            confirm('确定洗车？', function () {
                $.ajax({
                    type: "POST",
                    contentType: "application/json",
                    url: baseURL + "sys/lzconsumption/updateWashTimes",
                    data: JSON.stringify(value),
                    success: function (r) {
                        if (r.code == 0) {
                            alert('操作成功', function (index) {
                                $("#jqGrid").trigger("reloadGrid");
                            });
                        } else {
                            alert(r.msg);
                        }
                    }
                });
            })
        },
        updateWaxTimes: function (value) {
            confirm('确定打蜡？', function () {
                $.ajax({
                    type: "POST",
                    contentType: "application/json",
                    url: baseURL + "sys/lzconsumption/updateWaxTimes",
                    data: JSON.stringify(value),
                    success: function (r) {
                        if (r.code == 0) {
                            alert('操作成功', function (index) {
                                $("#jqGrid").trigger("reloadGrid");
                            });
                        } else {
                            alert(r.msg);
                        }
                    }
                });
            })
        },
        updateDisinfectionTimes : function (value) {
            confirm('确定消毒？', function () {
                $.ajax({
                    type: "POST",
                    contentType: "application/json",
                    url: baseURL + "sys/lzconsumption/updateDisinfectionTimes",
                    data: JSON.stringify(value),
                    success: function (r) {
                        if (r.code == 0) {
                            alert('操作成功', function (index) {
                                $("#jqGrid").trigger("reloadGrid");
                            });
                        } else {
                            alert(r.msg);
                        }
                    }
                });
            })
        },
		reload: function (event) {
			vm.showList = true;
			var page = $("#jqGrid").jqGrid('getGridParam','page');
			$("#jqGrid").jqGrid('setGridParam',{
                postData:{'cardNumber': vm.lzUserSearch.cardNumber,
                    'mobile': vm.lzUserSearch.mobile,
                    'name' : vm.lzUserSearch.name
                },
                page:page
            }).trigger("reloadGrid");
		}
	}
});