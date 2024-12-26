function validateForm(event) {
    // 获取密码和确认密码的值
    const password = document.getElementById('password').value;
    const confirmPassword = document.getElementById('confirm-password').value;

    // 判断两次密码是否一致
    if (password !== confirmPassword) {
        alert('两次密码输入不一致，请重新输入！');
        event.preventDefault(); // 阻止表单提交
        return false;
    } else {
        alert('注册成功！');
        // 延迟跳转到登录页面
        setTimeout(() => {
            window.location.href = 'login.jsp';
        }, 1000); // 延迟 1 秒跳转
        return true;
    }
}