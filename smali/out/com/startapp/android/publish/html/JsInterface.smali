.class public Lcom/startapp/android/publish/html/JsInterface;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field private clickCallback:Ljava/lang/Runnable;

.field private closeCallback:Ljava/lang/Runnable;

.field private enableScrollCallback:Ljava/lang/Runnable;

.field protected inAppBrowserEnabled:Z

.field protected mContext:Landroid/content/Context;

.field private params:Lcom/startapp/android/publish/adsCommon/d/b;

.field private processed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;Lcom/startapp/android/publish/adsCommon/d/b;)V
    .registers 5

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/startapp/android/publish/html/JsInterface;->processed:Z

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/startapp/android/publish/html/JsInterface;->inAppBrowserEnabled:Z

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/startapp/android/publish/html/JsInterface;->closeCallback:Ljava/lang/Runnable;

    .line 28
    iput-object v0, p0, Lcom/startapp/android/publish/html/JsInterface;->clickCallback:Ljava/lang/Runnable;

    .line 29
    iput-object v0, p0, Lcom/startapp/android/publish/html/JsInterface;->enableScrollCallback:Ljava/lang/Runnable;

    .line 39
    iput-object p2, p0, Lcom/startapp/android/publish/html/JsInterface;->closeCallback:Ljava/lang/Runnable;

    .line 40
    iput-object p1, p0, Lcom/startapp/android/publish/html/JsInterface;->mContext:Landroid/content/Context;

    .line 41
    iput-object p3, p0, Lcom/startapp/android/publish/html/JsInterface;->params:Lcom/startapp/android/publish/adsCommon/d/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;Lcom/startapp/android/publish/adsCommon/d/b;Z)V
    .registers 5

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/startapp/android/publish/html/JsInterface;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Lcom/startapp/android/publish/adsCommon/d/b;)V

    .line 35
    iput-boolean p4, p0, Lcom/startapp/android/publish/html/JsInterface;->inAppBrowserEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/startapp/android/publish/adsCommon/d/b;)V
    .registers 5

    .line 51
    invoke-direct {p0, p1, p2, p4}, Lcom/startapp/android/publish/html/JsInterface;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Lcom/startapp/android/publish/adsCommon/d/b;)V

    .line 52
    iput-object p3, p0, Lcom/startapp/android/publish/html/JsInterface;->clickCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/startapp/android/publish/adsCommon/d/b;Z)V
    .registers 7

    .line 45
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/startapp/android/publish/html/JsInterface;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Lcom/startapp/android/publish/adsCommon/d/b;Z)V

    .line 46
    iput-object p3, p0, Lcom/startapp/android/publish/html/JsInterface;->clickCallback:Ljava/lang/Runnable;

    .line 47
    iput-object p4, p0, Lcom/startapp/android/publish/html/JsInterface;->enableScrollCallback:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public closeAd()V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 57
    iget-boolean v0, p0, Lcom/startapp/android/publish/html/JsInterface;->processed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/startapp/android/publish/html/JsInterface;->processed:Z

    .line 60
    iget-object v0, p0, Lcom/startapp/android/publish/html/JsInterface;->closeCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public enableScroll(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 111
    iget-object p1, p0, Lcom/startapp/android/publish/html/JsInterface;->enableScrollCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_7

    .line 112
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_7
    return-void
.end method

.method public externalLinks(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 101
    iget-boolean v0, p0, Lcom/startapp/android/publish/html/JsInterface;->inAppBrowserEnabled:Z

    if-eqz v0, :cond_13

    const-wide/16 v0, 0x100

    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 102
    iget-object v0, p0, Lcom/startapp/android/publish/html/JsInterface;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/startapp/android/publish/adsCommon/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 104
    :cond_13
    iget-object v0, p0, Lcom/startapp/android/publish/html/JsInterface;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/startapp/android/publish/adsCommon/c;->c(Landroid/content/Context;Ljava/lang/String;)V

    :goto_18
    return-void
.end method

.method public openApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-eqz p1, :cond_f

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 67
    iget-object v0, p0, Lcom/startapp/android/publish/html/JsInterface;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/startapp/android/publish/html/JsInterface;->params:Lcom/startapp/android/publish/adsCommon/d/b;

    invoke-static {v0, p1, v1}, Lcom/startapp/android/publish/adsCommon/c;->b(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;)V

    .line 71
    :cond_f
    iget-object v0, p0, Lcom/startapp/android/publish/html/JsInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const/4 v0, 0x6

    if-eqz p3, :cond_45

    .line 75
    :try_start_1c
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p3

    .line 77
    :goto_25
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 78
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_3e} :catch_3f

    goto :goto_25

    :catch_3f
    move-exception p3

    const-string v1, "Couldn\'t parse intent details json!"

    .line 82
    invoke-static {v0, v1, p3}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    :cond_45
    :try_start_45
    iget-object p3, p0, Lcom/startapp/android/publish/html/JsInterface;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4a} :catch_4b

    goto :goto_77

    :catch_4b
    move-exception p2

    const/4 p3, 0x0

    .line 89
    invoke-static {p1, p3}, Lcom/startapp/android/publish/adsCommon/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 90
    iget-object v1, p0, Lcom/startapp/android/publish/html/JsInterface;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v3, "JsInterface.openApp - Couldn\'t start activity"

    invoke-static {v1, v2, v3, p2, p3}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot find activity to handle url: ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    .line 94
    :goto_77
    iget-object p1, p0, Lcom/startapp/android/publish/html/JsInterface;->clickCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_7e

    .line 95
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_7e
    return-void
.end method
