.class public Lcom/startapp/android/publish/adsCommon/f/f;
.super Ljava/lang/Object;
.source "StartAppSDK"


# direct methods
.method public static a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 18
    new-instance v0, Lcom/startapp/android/publish/adsCommon/f/e;

    invoke-direct {v0, p1, p2, p3}, Lcom/startapp/android/publish/adsCommon/f/e;-><init>(Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 19
    invoke-static {p0, v0, p4, p1}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/e;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/f/g$a;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/f/g$a;)V
    .registers 7

    .line 23
    new-instance v0, Lcom/startapp/android/publish/adsCommon/f/e;

    invoke-direct {v0, p1, p2, p3}, Lcom/startapp/android/publish/adsCommon/f/e;-><init>(Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {p0, v0, p4, p5}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/e;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/f/g$a;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/e;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 28
    invoke-static {p0, p1, p2, v0}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/e;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/f/g$a;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/e;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/f/g$a;)V
    .registers 11

    const-string v0, "InfoEventsManager"

    .line 32
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/common/metaData/MetaData;->getAnalyticsConfig()Lcom/startapp/android/publish/adsCommon/f/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/f/a;->c()Z

    move-result v1

    if-eqz v1, :cond_11

    return-void

    .line 36
    :cond_11
    invoke-virtual {p1, p2}, Lcom/startapp/android/publish/adsCommon/f/e;->e(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1, p0}, Lcom/startapp/android/publish/adsCommon/f/e;->a(Landroid/content/Context;)V

    .line 40
    :try_start_17
    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/Utils/i;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/startapp/android/publish/adsCommon/f/e;->f(Ljava/lang/String;)V

    .line 42
    new-instance p2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {p2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    const-string v1, "activity"

    .line 44
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 45
    invoke-virtual {v1, p2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 46
    iget-wide v1, p2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v3, 0x100000

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/startapp/android/publish/adsCommon/f/e;->h(Ljava/lang/String;)V

    .line 48
    invoke-static {p2}, Lcom/startapp/common/a/c;->a(Landroid/app/ActivityManager$MemoryInfo;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_58

    .line 50
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v5, p2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long/2addr v1, v5

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/startapp/android/publish/adsCommon/f/e;->g(Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_17 .. :try_end_50} :catchall_51

    goto :goto_58

    :catchall_51
    move-exception p2

    const/4 v1, 0x6

    const-string v2, "Error filling infoEvent"

    .line 58
    invoke-static {v0, v1, v2, p2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_58
    :goto_58
    const/4 p2, 0x3

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 63
    new-instance p2, Lcom/startapp/android/publish/adsCommon/f/g;

    new-instance v0, Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/common/model/AdPreferences;-><init>()V

    invoke-direct {p2, p0, v0, p1, p3}, Lcom/startapp/android/publish/adsCommon/f/g;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/f/e;Lcom/startapp/android/publish/adsCommon/f/g$a;)V

    invoke-virtual {p2}, Lcom/startapp/android/publish/adsCommon/f/g;->a()V

    return-void
.end method
