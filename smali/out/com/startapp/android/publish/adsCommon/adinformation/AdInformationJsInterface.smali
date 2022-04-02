.class public Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationJsInterface;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field private acceptCallback:Ljava/lang/Runnable;

.field private context:Landroid/content/Context;

.field private declineCallback:Ljava/lang/Runnable;

.field private privacyPolicyCallback:Ljava/lang/Runnable;

.field private processed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 7

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationJsInterface;->context:Landroid/content/Context;

    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationJsInterface;->processed:Z

    .line 12
    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationJsInterface;->declineCallback:Ljava/lang/Runnable;

    .line 13
    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationJsInterface;->acceptCallback:Ljava/lang/Runnable;

    .line 14
    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationJsInterface;->privacyPolicyCallback:Ljava/lang/Runnable;

    .line 17
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationJsInterface;->context:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationJsInterface;->acceptCallback:Ljava/lang/Runnable;

    .line 19
    iput-object p3, p0, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationJsInterface;->declineCallback:Ljava/lang/Runnable;

    .line 20
    iput-object p4, p0, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationJsInterface;->privacyPolicyCallback:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public accept()V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 33
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationJsInterface;->processed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationJsInterface;->processed:Z

    .line 36
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationJsInterface;->acceptCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public decline()V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 25
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationJsInterface;->processed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationJsInterface;->processed:Z

    .line 28
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationJsInterface;->declineCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public fullPrivacyPolicy()V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 41
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationJsInterface;->processed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationJsInterface;->processed:Z

    .line 44
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationJsInterface;->privacyPolicyCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .registers 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationJsInterface;->context:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    :try_start_5
    const-string v2, "shared_prefs_appId"

    .line 51
    invoke-static {v0, v2, v1}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/32 v2, 0x7398cd9

    .line 52
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    xor-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1f} :catch_20

    return-object v0

    :catch_20
    :cond_20
    return-object v1
.end method
