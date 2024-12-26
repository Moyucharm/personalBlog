function confirmDelete(postId) {
    if (confirm("是否确定要删除这篇文章？")) {
        // 如果确认删除，跳转到删除文章的后台接口
        location.href = "DeleteArticle?id=" + postId;
    }
}