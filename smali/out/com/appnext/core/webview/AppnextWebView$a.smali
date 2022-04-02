.class final Lcom/appnext/core/webview/AppnextWebView$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/core/webview/AppnextWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic iq:Lcom/appnext/core/webview/AppnextWebView;

.field ir:Lcom/appnext/core/webview/AppnextWebView$b;


# direct methods
.method public constructor <init>(Lcom/appnext/core/webview/AppnextWebView;Lcom/appnext/core/webview/AppnextWebView$b;)V
    .registers 3

    .line 113
    iput-object p1, p0, Lcom/appnext/core/webview/AppnextWebView$a;->iq:Lcom/appnext/core/webview/AppnextWebView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 114
    iput-object p2, p0, Lcom/appnext/core/webview/AppnextWebView$a;->ir:Lcom/appnext/core/webview/AppnextWebView$b;

    return-void
.end method


# virtual methods
.method protected final ag(Ljava/lang/String;)V
    .registers 5

    .line 137
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string v0, "error:"

    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 140
    iget-object v0, p0, Lcom/appnext/core/webview/AppnextWebView$a;->ir:Lcom/appnext/core/webview/AppnextWebView$b;

    const/4 v1, 0x0

    iput v1, v0, Lcom/appnext/core/webview/AppnextWebView$b;->state:I

    .line 141
    iget-object v0, p0, Lcom/appnext/core/webview/AppnextWebView$a;->iq:Lcom/appnext/core/webview/AppnextWebView;

    invoke-static {v0}, Lcom/appnext/core/webview/AppnextWebView;->a(Lcom/appnext/core/webview/AppnextWebView;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/core/webview/AppnextWebView$a;->ir:Lcom/appnext/core/webview/AppnextWebView$b;

    iget-object v1, v1, Lcom/appnext/core/webview/AppnextWebView$b;->aQ:Ljava/lang/String;

    iget-object v2, p0, Lcom/appnext/core/webview/AppnextWebView$a;->ir:Lcom/appnext/core/webview/AppnextWebView$b;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/appnext/core/webview/AppnextWebView$a;->iq:Lcom/appnext/core/webview/AppnextWebView;

    iget-object v1, p0, Lcom/appnext/core/webview/AppnextWebView$a;->ir:Lcom/appnext/core/webview/AppnextWebView$b;

    const/4 v2, 0x7

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/appnext/core/webview/AppnextWebView;->a(Lcom/appnext/core/webview/AppnextWebView;Lcom/appnext/core/webview/AppnextWebView$b;Ljava/lang/String;)V

    return-void

    .line 146
    :cond_2c
    iget-object v0, p0, Lcom/appnext/core/webview/AppnextWebView$a;->ir:Lcom/appnext/core/webview/AppnextWebView$b;

    const/4 v1, 0x2

    iput v1, v0, Lcom/appnext/core/webview/AppnextWebView$b;->state:I

    .line 147
    iget-object v0, p0, Lcom/appnext/core/webview/AppnextWebView$a;->iq:Lcom/appnext/core/webview/AppnextWebView;

    invoke-static {v0}, Lcom/appnext/core/webview/AppnextWebView;->a(Lcom/appnext/core/webview/AppnextWebView;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/core/webview/AppnextWebView$a;->ir:Lcom/appnext/core/webview/AppnextWebView$b;

    iget-object v1, v1, Lcom/appnext/core/webview/AppnextWebView$b;->aQ:Ljava/lang/String;

    iget-object v2, p0, Lcom/appnext/core/webview/AppnextWebView$a;->ir:Lcom/appnext/core/webview/AppnextWebView$b;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/appnext/core/webview/AppnextWebView$a;->iq:Lcom/appnext/core/webview/AppnextWebView;

    iget-object v1, p0, Lcom/appnext/core/webview/AppnextWebView$a;->ir:Lcom/appnext/core/webview/AppnextWebView$b;

    invoke-static {v0, v1, p1}, Lcom/appnext/core/webview/AppnextWebView;->b(Lcom/appnext/core/webview/AppnextWebView;Lcom/appnext/core/webview/AppnextWebView$b;Ljava/lang/String;)V

    return-void
.end method

.method protected final varargs b([Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/webview/AppnextWebView$a;->iq:Lcom/appnext/core/webview/AppnextWebView;

    invoke-static {v0}, Lcom/appnext/core/webview/AppnextWebView;->a(Lcom/appnext/core/webview/AppnextWebView;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appnext/core/webview/AppnextWebView$b;

    .line 121
    aget-object v2, p1, v1

    const/16 v3, 0x2710

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1193
    invoke-static {v2, v4, v5, v3}, Lcom/appnext/core/f;->a(Ljava/lang/String;Ljava/util/HashMap;ZI)Ljava/lang/String;

    move-result-object v2

    .line 121
    iput-object v2, v0, Lcom/appnext/core/webview/AppnextWebView$b;->is:Ljava/lang/String;

    .line 122
    iget-object v2, p0, Lcom/appnext/core/webview/AppnextWebView$a;->iq:Lcom/appnext/core/webview/AppnextWebView;

    invoke-static {v2}, Lcom/appnext/core/webview/AppnextWebView;->a(Lcom/appnext/core/webview/AppnextWebView;)Ljava/util/HashMap;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    aget-object p1, p1, v1
    :try_end_28
    .catch Ljava/net/HttpRetryException; {:try_start_0 .. :try_end_28} :catch_2f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_28} :catch_2c
    .catchall {:try_start_0 .. :try_end_28} :catchall_29

    return-object p1

    :catchall_29
    const-string p1, "error: unknown error"

    return-object p1

    :catch_2c
    const-string p1, "error: network problem"

    return-object p1

    :catch_2f
    move-exception p1

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpRetryException;->getReason()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 109
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/appnext/core/webview/AppnextWebView$a;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 5

    .line 109
    check-cast p1, Ljava/lang/String;

    .line 2137
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string v0, "error:"

    .line 2139
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2140
    iget-object v0, p0, Lcom/appnext/core/webview/AppnextWebView$a;->ir:Lcom/appnext/core/webview/AppnextWebView$b;

    const/4 v1, 0x0

    iput v1, v0, Lcom/appnext/core/webview/AppnextWebView$b;->state:I

    .line 2141
    iget-object v0, p0, Lcom/appnext/core/webview/AppnextWebView$a;->iq:Lcom/appnext/core/webview/AppnextWebView;

    invoke-static {v0}, Lcom/appnext/core/webview/AppnextWebView;->a(Lcom/appnext/core/webview/AppnextWebView;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/core/webview/AppnextWebView$a;->ir:Lcom/appnext/core/webview/AppnextWebView$b;

    iget-object v1, v1, Lcom/appnext/core/webview/AppnextWebView$b;->aQ:Ljava/lang/String;

    iget-object v2, p0, Lcom/appnext/core/webview/AppnextWebView$a;->ir:Lcom/appnext/core/webview/AppnextWebView$b;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2142
    iget-object v0, p0, Lcom/appnext/core/webview/AppnextWebView$a;->iq:Lcom/appnext/core/webview/AppnextWebView;

    iget-object v1, p0, Lcom/appnext/core/webview/AppnextWebView$a;->ir:Lcom/appnext/core/webview/AppnextWebView$b;

    const/4 v2, 0x7

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/appnext/core/webview/AppnextWebView;->a(Lcom/appnext/core/webview/AppnextWebView;Lcom/appnext/core/webview/AppnextWebView$b;Ljava/lang/String;)V

    return-void

    .line 2146
    :cond_2e
    iget-object v0, p0, Lcom/appnext/core/webview/AppnextWebView$a;->ir:Lcom/appnext/core/webview/AppnextWebView$b;

    const/4 v1, 0x2

    iput v1, v0, Lcom/appnext/core/webview/AppnextWebView$b;->state:I

    .line 2147
    iget-object v0, p0, Lcom/appnext/core/webview/AppnextWebView$a;->iq:Lcom/appnext/core/webview/AppnextWebView;

    invoke-static {v0}, Lcom/appnext/core/webview/AppnextWebView;->a(Lcom/appnext/core/webview/AppnextWebView;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/core/webview/AppnextWebView$a;->ir:Lcom/appnext/core/webview/AppnextWebView$b;

    iget-object v1, v1, Lcom/appnext/core/webview/AppnextWebView$b;->aQ:Ljava/lang/String;

    iget-object v2, p0, Lcom/appnext/core/webview/AppnextWebView$a;->ir:Lcom/appnext/core/webview/AppnextWebView$b;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2148
    iget-object v0, p0, Lcom/appnext/core/webview/AppnextWebView$a;->iq:Lcom/appnext/core/webview/AppnextWebView;

    iget-object v1, p0, Lcom/appnext/core/webview/AppnextWebView$a;->ir:Lcom/appnext/core/webview/AppnextWebView$b;

    invoke-static {v0, v1, p1}, Lcom/appnext/core/webview/AppnextWebView;->b(Lcom/appnext/core/webview/AppnextWebView;Lcom/appnext/core/webview/AppnextWebView$b;Ljava/lang/String;)V

    return-void
.end method
