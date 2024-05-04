"use strict";(self["webpackChunkmy_project"]=self["webpackChunkmy_project"]||[]).push([[853],{8065:function(e,t,l){l.r(t),l.d(t,{default:function(){return d}});var s=function(){var e=this,t=e._self._c;return t("el-container",{staticStyle:{height:"1000px"}},[t("el-aside",{staticStyle:{"background-color":"rgb(238, 241, 246)"},attrs:{width:"200px"}},[t("el-menu",{attrs:{"default-openeds":["1","3"]}},[t("el-submenu",{attrs:{index:"1"}},[t("template",{slot:"title"},[t("i",{staticClass:"el-icon-message"}),e._v("导航一")]),t("el-menu-item-group",[t("template",{slot:"title"},[e._v("分组一")]),t("el-menu-item",{attrs:{index:"1-1"}},[e._v("选项1")]),t("el-menu-item",{attrs:{index:"1-2"}},[e._v("选项2")])],2),t("el-menu-item-group",{attrs:{title:"分组2"}},[t("el-menu-item",{attrs:{index:"1-3"}},[e._v("选项3")])],1),t("el-submenu",{attrs:{index:"1-4"}},[t("template",{slot:"title"},[e._v("选项4")]),t("el-menu-item",{attrs:{index:"1-4-1"}},[e._v("选项4-1")])],2)],2),t("el-submenu",{attrs:{index:"2"}},[t("template",{slot:"title"},[t("i",{staticClass:"el-icon-menu"}),e._v("导航二")]),t("el-menu-item-group",[t("template",{slot:"title"},[e._v("分组一")]),t("el-menu-item",{attrs:{index:"2-1"}},[e._v("选项1")]),t("el-menu-item",{attrs:{index:"2-2"}},[e._v("选项2")])],2),t("el-menu-item-group",{attrs:{title:"分组2"}},[t("el-menu-item",{attrs:{index:"2-3"}},[e._v("选项3")])],1),t("el-submenu",{attrs:{index:"2-4"}},[t("template",{slot:"title"},[e._v("选项4")]),t("el-menu-item",{attrs:{index:"2-4-1"}},[e._v("选项4-1")])],2)],2),t("el-submenu",{attrs:{index:"3"}},[t("template",{slot:"title"},[t("i",{staticClass:"el-icon-setting"}),e._v("导航三")]),t("el-menu-item-group",[t("template",{slot:"title"},[e._v("分组一")]),t("el-menu-item",{attrs:{index:"3-1"}},[e._v("选项1")]),t("el-menu-item",{attrs:{index:"3-2"}},[e._v("选项2")])],2),t("el-menu-item-group",{attrs:{title:"分组2"}},[t("el-menu-item",{attrs:{index:"3-3"}},[e._v("选项3")])],1),t("el-submenu",{attrs:{index:"3-4"}},[t("template",{slot:"title"},[e._v("选项4")]),t("el-menu-item",{attrs:{index:"3-4-1"}},[e._v("选项4-1")])],2)],2)],1)],1),t("el-container",[t("el-header",{staticStyle:{"text-align":"right","font-size":"12px"}},[t("el-dropdown",[t("i",{staticClass:"el-icon-setting",staticStyle:{"margin-right":"15px"}}),t("el-dropdown-menu",{attrs:{slot:"dropdown"},slot:"dropdown"},[t("el-dropdown-item",[t("button",{on:{click:e.alogin}},[e._v("登录")])]),t("el-dropdown-item",{on:{click:function(t){return e.aregister()}}},[e._v("注册")])],1)],1),t("span",[e._v("操作2")])],1),t("el-main",[t("el-input",{attrs:{type:"number",placeholder:"输入要查询的ID"},model:{value:e.searchId,callback:function(t){e.searchId=t},expression:"searchId"}}),t("el-button",{attrs:{type:"primary"},on:{click:e.searchById}},[e._v("查询")]),t("el-button",{attrs:{type:"primary"},on:{click:function(t){return e.openInsertDialog()}}},[e._v("新增")]),t("el-table",{attrs:{data:e.users}},[t("el-table-column",{attrs:{prop:"id",label:"ID"}}),t("el-table-column",{attrs:{prop:"username",label:"用户名"}}),t("el-table-column",{attrs:{prop:"password",label:"密码"}}),t("el-table-column",{attrs:{prop:"email",label:"邮箱"}}),t("el-table-column",{attrs:{prop:"createdAt",label:"创建时间"}}),t("el-table-column",{attrs:{label:"操作",width:"200"},scopedSlots:e._u([{key:"default",fn:function(l){return[t("el-button",{attrs:{size:"mini",icon:"el-icon-edit",type:"success",plain:""},on:{click:function(t){return e.openEditDialog()}}},[e._v("编辑")]),t("el-button",{attrs:{size:"mini",type:"warning",icon:"el-icon-delete",plain:""},on:{click:function(t){return e.handleDelete(l.$index,l.row)}}},[e._v("删除 ")])]}}])})],1),t("el-pagination",{attrs:{background:"",layout:"prev, pager, next",total:100}})],1)],1),t("el-dialog",{attrs:{title:"编辑用户信息",visible:e.editDialogVisible},on:{"update:visible":function(t){e.editDialogVisible=t}}},[t("el-form",{attrs:{model:e.editForm,"label-width":"80px"}},[t("el-form-item",{attrs:{label:"用户名"}},[t("el-input",{model:{value:e.editForm.username,callback:function(t){e.$set(e.editForm,"username",t)},expression:"editForm.username"}})],1),t("el-form-item",{attrs:{label:"密码"}},[t("el-input",{model:{value:e.editForm.password,callback:function(t){e.$set(e.editForm,"password",t)},expression:"editForm.password"}})],1)],1),t("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[t("el-button",{on:{click:e.closeEditDialog}},[e._v("取消")]),t("el-button",{attrs:{type:"primary"},on:{click:function(t){return e.handleEdit(e.editForm.username,e.editForm.password)}}},[e._v("确定")])],1)],1),t("el-dialog",{attrs:{title:"新增用户信息",visible:e.insertDialogVisible},on:{"update:visible":function(t){e.insertDialogVisible=t}}},[t("el-form",{attrs:{model:e.insertForm,"label-width":"80px"}},[t("el-form-item",{attrs:{label:"用户名"}},[t("el-input",{model:{value:e.insertForm.username,callback:function(t){e.$set(e.insertForm,"username",t)},expression:"insertForm.username"}})],1),t("el-form-item",{attrs:{label:"密码"}},[t("el-input",{model:{value:e.insertForm.password,callback:function(t){e.$set(e.insertForm,"password",t)},expression:"insertForm.password"}})],1)],1),t("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[t("el-button",{on:{click:e.closeInsertDialog}},[e._v("取消")]),t("el-button",{attrs:{type:"primary"},on:{click:function(t){return e.handleInsert(e.insertForm.username,e.insertForm.password)}}},[e._v("确定")])],1)],1)],1)},i=[],r=(l(4114),l(1250)),o={data(){return{users:[],insertDialogVisible:!1,editDialogVisible:!1,editForm:{username:"",password:""},insertForm:{username:"",password:""},searchId:""}},mounted(){r.A.get("http://localhost:8088/ssmdemo/user/getAllUsers").then((e=>{this.users=e.data})).catch((e=>{console.error("Error fetching user data:",e)}))},methods:{alogin(){this.$router.push("/login")},aregiste(){this.$router.push("/login")},openEditDialog(){this.editDialogVisible=!0},closeEditDialog(){this.editDialogVisible=!1},openInsertDialog(){this.insertDialogVisible=!0},closeInsertDialog(){this.insertDialogVisible=!1},handleEdit(e,t){r.A.post(`http://localhost:8088/ssmdemo/user/getDataById5?username=${e}&password=${t}`).then((e=>{console.log("User  successfully:",e.data),this.closeEditDialog()})).catch((e=>{console.error("Error editing user:",e)}))},handleInsert(e,t){r.A.post(`http://localhost:8088/ssmdemo/user/register2?username=${e}&password=${t}`).then((e=>{console.log("User  successfully:",e.data),this.closeInsertDialog()})).catch((e=>{console.error("Error editing user:",e)}))},handleDelete(e,t){r.A.post(`http://localhost:8088/ssmdemo/user/getDataById4?id=${t.id}`).then((e=>{console.log("User deleted successfully:",e.data)})).catch((e=>{console.error("Error deleting user:",e)}))},searchById(){r.A.get(`http://localhost:8088/ssmdemo/user/getDataById3?id=${this.searchId}`).then((e=>{this.users=[e.data]})).catch((e=>{console.error("Error searching user by ID:",e)}))}}},a=o,n=l(1656),u=(0,n.A)(a,s,i,!1,null,null,null),d=u.exports}}]);
//# sourceMappingURL=table.6aa5c883.js.map