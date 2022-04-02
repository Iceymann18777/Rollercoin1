.class Lcom/appsgeyser/multiTabApp/controllers/WebContentController$2$1;
.super Landroid/webkit/WebChromeClient;
.source "WebContentController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/controllers/WebContentController$2;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appsgeyser/multiTabApp/controllers/WebContentController$2;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/controllers/WebContentController$2;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$2$1;->this$1:Lcom/appsgeyser/multiTabApp/controllers/WebContentController$2;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .registers 3

    .line 130
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$2$1;->this$1:Lcom/appsgeyser/multiTabApp/controllers/WebContentController$2;

    iget-object v0, v0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$2;->this$0:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->access$000(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    .line 131
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$2$1;->this$1:Lcom/appsgeyser/multiTabApp/controllers/WebContentController$2;

    iget-object p1, p1, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$2;->this$0:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->access$102(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    return-void
.end method
