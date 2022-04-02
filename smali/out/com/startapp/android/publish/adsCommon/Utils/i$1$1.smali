.class Lcom/startapp/android/publish/adsCommon/Utils/i$1$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/adsCommon/Utils/i$1;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/adsCommon/Utils/i$1;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/adsCommon/Utils/i$1;)V
    .registers 2

    .line 354
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/Utils/i$1$1;->a:Lcom/startapp/android/publish/adsCommon/Utils/i$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 357
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/Utils/i$1$1;->a:Lcom/startapp/android/publish/adsCommon/Utils/i$1;

    iget-object v0, v0, Lcom/startapp/android/publish/adsCommon/Utils/i$1;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const-string v0, "StartAppWall.Util"

    const/4 v1, 0x4

    const-string v2, "webview destroyed"

    .line 358
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/Utils/i$1$1;->a:Lcom/startapp/android/publish/adsCommon/Utils/i$1;

    iget-object v0, v0, Lcom/startapp/android/publish/adsCommon/Utils/i$1;->c:Lcom/startapp/android/publish/adsCommon/Utils/i$a;

    invoke-interface {v0}, Lcom/startapp/android/publish/adsCommon/Utils/i$a;->a()V

    return-void
.end method
