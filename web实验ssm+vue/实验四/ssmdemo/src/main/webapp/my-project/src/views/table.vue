<template>
  <el-container style="height: 1000px; ">
    <el-aside width="200px" style="background-color: rgb(238, 241, 246)">
      <el-menu :default-openeds="['1', '3']">
        <el-submenu index="1">
          <template slot="title"><i class="el-icon-message"></i>导航一</template>
          <el-menu-item-group>
            <template slot="title">分组一</template>
            <el-menu-item index="1-1">选项1</el-menu-item>
            <el-menu-item index="1-2">选项2</el-menu-item>
          </el-menu-item-group>
          <el-menu-item-group title="分组2">
            <el-menu-item index="1-3">选项3</el-menu-item>
          </el-menu-item-group>
          <el-submenu index="1-4">
            <template slot="title">选项4</template>
            <el-menu-item index="1-4-1">选项4-1</el-menu-item>
          </el-submenu>
        </el-submenu>
        <el-submenu index="2">
          <template slot="title"><i class="el-icon-menu"></i>导航二</template>
          <el-menu-item-group>
            <template slot="title">分组一</template>
            <el-menu-item index="2-1">选项1</el-menu-item>
            <el-menu-item index="2-2">选项2</el-menu-item>
          </el-menu-item-group>
          <el-menu-item-group title="分组2">
            <el-menu-item index="2-3">选项3</el-menu-item>
          </el-menu-item-group>
          <el-submenu index="2-4">
            <template slot="title">选项4</template>
            <el-menu-item index="2-4-1">选项4-1</el-menu-item>
          </el-submenu>
        </el-submenu>
        <el-submenu index="3">
          <template slot="title"><i class="el-icon-setting"></i>导航三</template>
          <el-menu-item-group>
            <template slot="title">分组一</template>
            <el-menu-item index="3-1">选项1</el-menu-item>
            <el-menu-item index="3-2">选项2</el-menu-item>
          </el-menu-item-group>
          <el-menu-item-group title="分组2">
            <el-menu-item index="3-3">选项3</el-menu-item>
          </el-menu-item-group>
          <el-submenu index="3-4">
            <template slot="title">选项4</template>
            <el-menu-item index="3-4-1">选项4-1</el-menu-item>
          </el-submenu>
        </el-submenu>
      </el-menu>
    </el-aside>
    <el-container>
      <el-header style="text-align: right; font-size: 12px">
        <el-dropdown>
          <i class="el-icon-setting" style="margin-right: 15px"></i>
          <el-dropdown-menu slot="dropdown">
            <el-dropdown-item ><button @click="alogin">登录</button></el-dropdown-item>
            <el-dropdown-item  @click="aregister()">注册</el-dropdown-item>
          </el-dropdown-menu>
        </el-dropdown>
        <span>操作2</span>
      </el-header>

      <el-main>
        <el-input v-model="searchId" type="number" placeholder="输入要查询的ID"></el-input>
        <el-button type="primary" @click="searchById">查询</el-button>
        <el-button type="primary" @click="openInsertDialog()">新增</el-button>
        <el-table :data="users">
          <el-table-column prop="id" label="ID">
          </el-table-column>
          <el-table-column prop="username" label="用户名">
          </el-table-column>
          <el-table-column prop="password" label="密码">
          </el-table-column>
          <el-table-column prop="email" label="邮箱">
          </el-table-column>
          <el-table-column prop="createdAt" label="创建时间">
          </el-table-column>
          <el-table-column label="操作" width="200">
            <!-- scope表示表格中所有的数据对象 -->
            <template slot-scope="scope">
              <!-- scope.row表示这一行数据对象 -->
              <el-button size="mini" icon="el-icon-edit"
                         type="success" plain @click="openEditDialog()">编辑</el-button>
              <el-button
                  size="mini"
                  type="warning" icon="el-icon-delete" plain
                  @click="handleDelete(scope.$index, scope.row)">删除
              </el-button>
            </template>
          </el-table-column>
        </el-table>
        <el-pagination
            background
            layout="prev, pager, next"
            :total="100">
        </el-pagination>

      </el-main>

    </el-container>
    <el-dialog title="编辑用户信息" :visible.sync="editDialogVisible">
      <el-form :model="editForm" label-width="80px">
        <el-form-item label="用户名">
          <el-input v-model="editForm.username"></el-input>
        </el-form-item>
        <el-form-item label="密码">
          <el-input v-model="editForm.password"></el-input>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="closeEditDialog">取消</el-button>
        <el-button type="primary" @click="handleEdit(editForm.username,editForm.password)">确定</el-button>
      </div>
    </el-dialog>

    <el-dialog title="新增用户信息" :visible.sync="insertDialogVisible">
      <el-form :model="insertForm" label-width="80px">
        <el-form-item label="用户名">
          <el-input v-model="insertForm.username"></el-input>
        </el-form-item>
        <el-form-item label="密码">
          <el-input v-model="insertForm.password"></el-input>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="closeInsertDialog">取消</el-button>
        <el-button type="primary" @click="handleInsert(insertForm.username,insertForm.password)">确定</el-button>
      </div>
    </el-dialog>
  </el-container>


</template>

<style>

.el-header {
  background-color: #B3C0D1;
  color: #333;
  line-height: 60px;
}
.el-table{
  height: 86%;
}
.el-aside {

  height: 1000px;
}
</style>
<script>
import axios from 'axios';

export default {
  data() {
    return {
      users: [], // 用户数据
      insertDialogVisible:false,
      editDialogVisible: false, // 编辑弹窗是否可见
      editForm: { // 编辑表单数据
        username: '',
        password: '',
      },
      insertForm:{
        username: '',
        password: '',
      },
      searchId: '',

    };
  },
  mounted() {
    axios.get('http://localhost:8088/ssmdemo/user/getAllUsers')
        .then(res => {
          this.users = res.data; // 将返回的用户数据赋值给 users
        })
        .catch(error => {
          console.error('Error fetching user data:', error);
        });
  },
  methods: {
    alogin() {
      this.$router.push('/login');
    },
    aregiste(){
      this.$router.push('/login');
    },
    openEditDialog() {
      this.editDialogVisible = true;
    },
    closeEditDialog() {
      // 关闭编辑弹窗
      this.editDialogVisible = false;
    },
    openInsertDialog() {
      this.insertDialogVisible = true;
    },
    closeInsertDialog() {
      // 关闭编辑弹窗
      this.insertDialogVisible = false;
    },
    handleEdit(username, password) {
      axios.post(`http://localhost:8088/ssmdemo/user/getDataById5?username=${username}&password=${password}`)
          .then(res=> {   console.log('User  successfully:', res.data);
            this.closeEditDialog();
          })
          .catch(error => {
            console.error('Error editing user:', error);
          });
    },
    handleInsert(username, password) {
      axios.post(`http://localhost:8088/ssmdemo/user/register2?username=${username}&password=${password}`)
          .then(res=> {   console.log('User  successfully:', res.data);
            this.closeInsertDialog();
          })
          .catch(error => {
            console.error('Error editing user:', error);
          });
    },
    handleDelete(index,row) {
      axios.post(`http://localhost:8088/ssmdemo/user/getDataById4?id=${row.id}`)
          .then(response => {
            console.log('User deleted successfully:', response.data);
            // 可以在这里处理成功删除后的逻辑
          })
          .catch(error => {
            console.error('Error deleting user:', error);
            // 可以在这里处理删除失败后的逻辑
          });

    },
    searchById() {
      // 根据输入的 ID 进行查询操作
      axios.get(`http://localhost:8088/ssmdemo/user/getDataById3?id=${this.searchId}`)
          .then(res => {
            this.users = [res.data];
          })
          .catch(error => {
            console.error('Error searching user by ID:', error);
            // 可以在这里处理查询失败后的逻辑
          });},
  }}


</script>
