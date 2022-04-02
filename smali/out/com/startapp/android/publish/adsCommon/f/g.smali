.class public Lcom/startapp/android/publish/adsCommon/f/g;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/adsCommon/f/g$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/startapp/android/publish/common/model/AdPreferences;

.field private final c:Lcom/startapp/android/publish/adsCommon/f/e;

.field private final d:Lcom/startapp/android/publish/adsCommon/f/g$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/f/e;Lcom/startapp/android/publish/adsCommon/f/g$a;)V
    .registers 5

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/f/g;->a:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/startapp/android/publish/adsCommon/f/g;->b:Lcom/startapp/android/publish/common/model/AdPreferences;

    .line 28
    iput-object p3, p0, Lcom/startapp/android/publish/adsCommon/f/g;->c:Lcom/startapp/android/publish/adsCommon/f/e;

    .line 29
    iput-object p4, p0, Lcom/startapp/android/publish/adsCommon/f/g;->d:Lcom/startapp/android/publish/adsCommon/f/g$a;

    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/adsCommon/f/g;)Lcom/startapp/android/publish/adsCommon/f/g$a;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/startapp/android/publish/adsCommon/f/g;->d:Lcom/startapp/android/publish/adsCommon/f/g$a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 33
    sget-object v0, Lcom/startapp/common/g$a;->a:Lcom/startapp/common/g$a;

    new-instance v1, Lcom/startapp/android/publish/adsCommon/f/g$1;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/adsCommon/f/g$1;-><init>(Lcom/startapp/android/publish/adsCommon/f/g;)V

    invoke-static {v0, v1}, Lcom/startapp/common/g;->a(Lcom/startapp/common/g$a;Ljava/lang/Runnable;)V

    return-void
.end method

.method protected b()Z
    .registers 11

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending InfoEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/f/g;->c:Lcom/startapp/android/publish/adsCommon/f/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x6

    .line 48
    :try_start_19
    iget-object v3, p0, Lcom/startapp/android/publish/adsCommon/f/g;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/startapp/android/publish/adsCommon/f/g;->b:Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-static {v3, v4}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_20} :catch_8c

    .line 54
    :try_start_20
    iget-object v3, p0, Lcom/startapp/android/publish/adsCommon/f/g;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/startapp/android/publish/adsCommon/l;->b(Landroid/content/Context;)V

    .line 55
    iget-object v3, p0, Lcom/startapp/android/publish/adsCommon/f/g;->c:Lcom/startapp/android/publish/adsCommon/f/e;

    iget-object v4, p0, Lcom/startapp/android/publish/adsCommon/f/g;->b:Lcom/startapp/android/publish/common/model/AdPreferences;

    iget-object v5, p0, Lcom/startapp/android/publish/adsCommon/f/g;->a:Landroid/content/Context;

    invoke-virtual {v3, v4, v5}, Lcom/startapp/android/publish/adsCommon/f/e;->fillLocationDetails(Lcom/startapp/android/publish/common/model/AdPreferences;Landroid/content/Context;)V

    .line 56
    iget-object v3, p0, Lcom/startapp/android/publish/adsCommon/f/g;->c:Lcom/startapp/android/publish/adsCommon/f/e;

    iget-object v4, p0, Lcom/startapp/android/publish/adsCommon/f/g;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/startapp/android/publish/adsCommon/f/g;->b:Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-virtual {v3, v4, v5}, Lcom/startapp/android/publish/adsCommon/f/e;->fillApplicationDetails(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_37} :catch_37

    :catch_37
    :try_start_37
    const-string v3, "Networking InfoEvent"

    .line 62
    invoke-static {v1, v3}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/common/metaData/MetaData;->getAnalyticsConfig()Lcom/startapp/android/publish/adsCommon/f/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/f/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 64
    sget-object v3, Lcom/startapp/android/publish/adsCommon/f/d;->c:Lcom/startapp/android/publish/adsCommon/f/d;

    iget-object v4, p0, Lcom/startapp/android/publish/adsCommon/f/g;->c:Lcom/startapp/android/publish/adsCommon/f/e;

    invoke-virtual {v4}, Lcom/startapp/android/publish/adsCommon/f/e;->e()Lcom/startapp/android/publish/adsCommon/f/d;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/startapp/android/publish/adsCommon/f/d;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 66
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/common/metaData/MetaData;->getAnalyticsConfig()Lcom/startapp/android/publish/adsCommon/f/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/f/a;->b()Ljava/lang/String;

    move-result-object v1

    :cond_62
    move-object v4, v1

    .line 69
    iget-object v3, p0, Lcom/startapp/android/publish/adsCommon/f/g;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/startapp/android/publish/adsCommon/f/g;->c:Lcom/startapp/android/publish/adsCommon/f/e;

    const/4 v6, 0x0

    .line 73
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/common/metaData/MetaData;->getAnalyticsConfig()Lcom/startapp/android/publish/adsCommon/f/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/f/a;->d()I

    move-result v7

    .line 74
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/common/metaData/MetaData;->getAnalyticsConfig()Lcom/startapp/android/publish/adsCommon/f/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/f/a;->e()J

    move-result-wide v8

    .line 69
    invoke-static/range {v3 .. v9}, Lcom/startapp/android/publish/adsCommon/k/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/BaseRequest;Ljava/util/Map;IJ)Z
    :try_end_83
    .catch Lcom/startapp/common/e; {:try_start_37 .. :try_end_83} :catch_85

    const/4 v0, 0x1

    return v0

    :catch_85
    move-exception v1

    const-string v3, "Unable to send InfoEvent command!!!!"

    .line 76
    invoke-static {v2, v3, v1}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :catch_8c
    move-exception v1

    const-string v3, "Unable to fill AdPreferences "

    .line 50
    invoke-static {v2, v3, v1}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method
