.class Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient$1;
.super Ljava/lang/Object;
.source "BrowserWebChromeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;

.field final synthetic val$request:Landroid/webkit/PermissionRequest;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;Landroid/webkit/PermissionRequest;)V
    .registers 3

    .line 86
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient$1;->this$0:Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient$1;->val$request:Landroid/webkit/PermissionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 90
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient$1;->val$request:Landroid/webkit/PermissionRequest;

    invoke-virtual {v0}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_60

    aget-object v4, v0, v3

    const/4 v5, -0x1

    .line 91
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x62fe2171

    const/4 v8, 0x1

    if-eq v6, v7, :cond_28

    const v7, 0x39bbdaea

    if-eq v6, v7, :cond_1e

    goto :goto_31

    :cond_1e
    const-string v6, "android.webkit.resource.AUDIO_CAPTURE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    const/4 v5, 0x0

    goto :goto_31

    :cond_28
    const-string v6, "android.webkit.resource.VIDEO_CAPTURE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    const/4 v5, 0x1

    :cond_31
    :goto_31
    if-eqz v5, :cond_4a

    if-eq v5, v8, :cond_36

    goto :goto_5d

    .line 96
    :cond_36
    iget-object v4, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient$1;->this$0:Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;

    iget-object v5, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient$1;->val$request:Landroid/webkit/PermissionRequest;

    invoke-virtual {v5}, Landroid/webkit/PermissionRequest;->getOrigin()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x308

    const-string v7, "android.permission.CAMERA"

    invoke-static {v4, v5, v7, v6}, Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;->access$000(Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_5d

    .line 93
    :cond_4a
    iget-object v4, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient$1;->this$0:Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;

    iget-object v5, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient$1;->val$request:Landroid/webkit/PermissionRequest;

    invoke-virtual {v5}, Landroid/webkit/PermissionRequest;->getOrigin()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x309

    const-string v7, "android.permission.RECORD_AUDIO"

    invoke-static {v4, v5, v7, v6}, Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;->access$000(Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_5d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 100
    :cond_60
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient$1;->val$request:Landroid/webkit/PermissionRequest;

    invoke-virtual {v0}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    return-void
.end method
