.class Lcom/appsgeyser/multiTabApp/MainNavigationActivity$4;
.super Ljava/lang/Object;
.source "MainNavigationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/MainNavigationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V
    .registers 2

    .line 242
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$4;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 245
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$4;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->access$100(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$4;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->access$100(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3c

    .line 246
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$4;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->access$200(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 248
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 250
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$4;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-static {v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->access$100(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_3c

    .line 252
    :cond_31
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$4;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->access$300(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3c
    :goto_3c
    return-void
.end method
