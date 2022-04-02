.class Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector$1;
.super Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector$StoppableRunnable;
.source "JavaScriptInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;)V
    .registers 3

    .line 23
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector$1;->this$0:Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector$StoppableRunnable;-><init>(Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector$1;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 26
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector$1;->stop:Z

    if-eqz v0, :cond_5

    return-void

    .line 27
    :cond_5
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector$1;->this$0:Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;->access$200(Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;)Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector$1;->this$0:Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;

    invoke-static {v1}, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;->access$100(Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getInjectJSContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector$1;->this$0:Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;

    invoke-static {v1}, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;->access$200(Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;)Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getBannerInjectionJs()Ljava/lang/String;

    move-result-object v1

    .line 30
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector$1;->this$0:Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;

    invoke-static {v2}, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;->access$100(Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;)Landroid/webkit/WebView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:(function(){ if(!window.jsInjectionDoneOnThisPage){"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " })()"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 33
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector$1;->this$0:Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;

    invoke-static {v2}, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;->access$100(Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;)Landroid/webkit/WebView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector$1;->this$0:Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;->access$100(Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:(function(){ if(!window.jsInjectionDoneOnThisPage) { AppsgeyserJSInjectorInterface.injectedSuccessfully(); window.jsInjectionDoneOnThisPage = true; } })()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector$1;->this$0:Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;->access$300(Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
