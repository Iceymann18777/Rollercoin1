.class public Lcom/startapp/android/publish/adsCommon/StartAppSDK;
.super Ljava/lang/Object;
.source "StartAppSDK"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addWrapper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 101
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/startapp/android/publish/adsCommon/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static enableReturnAds(Z)V
    .registers 2

    .line 111
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/startapp/android/publish/adsCommon/m;->e(Z)V

    return-void
.end method

.method public static inAppPurchaseMade(Landroid/content/Context;)V
    .registers 3

    const-wide/16 v0, 0x0

    .line 80
    invoke-static {p0, v0, v1}, Lcom/startapp/android/publish/adsCommon/StartAppSDK;->inAppPurchaseMade(Landroid/content/Context;D)V

    return-void
.end method

.method public static inAppPurchaseMade(Landroid/content/Context;D)V
    .registers 7

    const/4 v0, 0x1

    .line 84
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "payingUser"

    invoke-static {p0, v1, v0}, Lcom/startapp/android/publish/adsCommon/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v0, 0x0

    .line 86
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "inAppPurchaseAmount"

    invoke-static {p0, v1, v0}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v2, v0

    .line 87
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, p1

    double-to-float p1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/startapp/android/publish/adsCommon/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;)V

    .line 88
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object p1

    sget-object p2, Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;->c:Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;

    invoke-virtual {p1, p0, p2}, Lcom/startapp/android/publish/adsCommon/m;->a(Landroid/content/Context;Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;)V

    return-void
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    .line 17
    new-instance v0, Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/startapp/android/publish/adsCommon/StartAppSDK;->init(Landroid/app/Activity;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;)V

    return-void
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;)V
    .registers 9

    .line 25
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/startapp/android/publish/adsCommon/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;Z)V

    return-void
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;Z)V
    .registers 10

    .line 41
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object v0

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/startapp/android/publish/adsCommon/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;Z)V

    return-void
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 21
    new-instance v0, Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/startapp/android/publish/adsCommon/StartAppSDK;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;)V

    return-void
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;)V
    .registers 10

    .line 29
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object v0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/startapp/android/publish/adsCommon/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;Z)V

    return-void
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;Z)V
    .registers 11

    .line 45
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/startapp/android/publish/adsCommon/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;Z)V

    return-void
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 37
    new-instance v0, Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;-><init>()V

    invoke-static {p0, p1, p2, v0, p3}, Lcom/startapp/android/publish/adsCommon/StartAppSDK;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;Z)V

    return-void
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;Z)V
    .registers 4

    .line 33
    new-instance v0, Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;-><init>()V

    invoke-static {p0, p1, v0, p2}, Lcom/startapp/android/publish/adsCommon/StartAppSDK;->init(Landroid/app/Activity;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;Z)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    new-instance v0, Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/startapp/android/publish/adsCommon/StartAppSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object v0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/startapp/android/publish/adsCommon/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;Z)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;Z)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/startapp/android/publish/adsCommon/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;Z)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 67
    new-instance v0, Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;-><init>()V

    invoke-static {p0, p1, p2, v0, p3}, Lcom/startapp/android/publish/adsCommon/StartAppSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;Z)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 62
    invoke-static {p0, v0, p1, p2}, Lcom/startapp/android/publish/adsCommon/StartAppSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static pauseServices(Landroid/content/Context;)V
    .registers 2

    .line 115
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/startapp/android/publish/adsCommon/m;->a(Landroid/content/Context;)V

    .line 116
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/startapp/android/publish/adsCommon/m;->b(Landroid/content/Context;)V

    return-void
.end method

.method private static resumeServices(Landroid/content/Context;)V
    .registers 2

    .line 120
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/startapp/android/publish/adsCommon/m;->c(Landroid/content/Context;)V

    .line 121
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/startapp/android/publish/adsCommon/m;->d(Landroid/content/Context;)V

    return-void
.end method

.method public static setUserConsent(Landroid/content/Context;Ljava/lang/String;JZ)V
    .registers 12

    .line 125
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object v0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/startapp/android/publish/adsCommon/m;->a(Landroid/content/Context;Ljava/lang/String;JZZ)V

    return-void
.end method

.method public static startNewSession(Landroid/content/Context;)V
    .registers 3

    .line 92
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;->d:Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;

    invoke-virtual {v0, p0, v1}, Lcom/startapp/android/publish/adsCommon/m;->a(Landroid/content/Context;Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;)V

    return-void
.end method
