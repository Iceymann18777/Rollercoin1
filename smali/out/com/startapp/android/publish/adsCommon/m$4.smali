.class Lcom/startapp/android/publish/adsCommon/m$4;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/adsCommon/m;->a(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/startapp/android/publish/adsCommon/m;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/adsCommon/m;Landroid/content/Context;)V
    .registers 3

    .line 965
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/m$4;->b:Lcom/startapp/android/publish/adsCommon/m;

    iput-object p2, p0, Lcom/startapp/android/publish/adsCommon/m$4;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 972
    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/m$4;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 973
    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/m$4;->a:Landroid/content/Context;

    const-string v2, "User-Agent"

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/startapp/android/publish/adsCommon/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_27

    :catch_17
    move-exception v0

    .line 975
    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/m$4;->a:Landroid/content/Context;

    sget-object v2, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "NetworkUtils.saveUserAgent - Webview failed"

    const-string v4, ""

    invoke-static {v1, v2, v3, v0, v4}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_27
    return-void
.end method
