.class public Lcom/startapp/android/publish/adsCommon/Utils/b;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/adsCommon/Utils/b$a;
    }
.end annotation


# static fields
.field private static volatile a:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a()J
    .registers 6

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/common/metaData/MetaData;->getPeriodicMetaDataInterval()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0xea60

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(I)V
    .registers 2

    const/4 v0, 0x0

    .line 89
    invoke-static {p0, v0}, Lcom/startapp/common/b/a;->a(IZ)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    .line 42
    sget-boolean v0, Lcom/startapp/android/publish/adsCommon/Utils/b;->a:Z

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    .line 43
    sput-boolean v0, Lcom/startapp/android/publish/adsCommon/Utils/b;->a:Z

    .line 44
    new-instance v0, Lcom/startapp/android/publish/adsCommon/Utils/b$1;

    invoke-direct {v0}, Lcom/startapp/android/publish/adsCommon/Utils/b$1;-><init>()V

    invoke-static {v0}, Lcom/startapp/common/b/a;->a(Lcom/startapp/common/b/a/c;)V

    .line 51
    invoke-static {p0}, Lcom/startapp/common/b/a;->a(Landroid/content/Context;)Lcom/startapp/common/b/a;

    .line 52
    new-instance p0, Lcom/startapp/android/publish/adsCommon/Utils/b$a;

    invoke-direct {p0}, Lcom/startapp/android/publish/adsCommon/Utils/b$a;-><init>()V

    invoke-static {p0}, Lcom/startapp/common/b/a;->a(Lcom/startapp/common/b/a/a;)V

    :cond_1a
    return-void
.end method

.method private static a(Landroid/content/Context;IJLjava/lang/String;)V
    .registers 7

    .line 93
    new-instance v0, Lcom/startapp/common/b/b$a;

    invoke-direct {v0, p1}, Lcom/startapp/common/b/b$a;-><init>(I)V

    invoke-virtual {v0, p2, p3}, Lcom/startapp/common/b/b$a;->a(J)Lcom/startapp/common/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/common/b/b$a;->a()Lcom/startapp/common/b/b;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/common/b/a;->a(Lcom/startapp/common/b/b;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p4, p1}, Lcom/startapp/android/publish/adsCommon/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_38

    .line 96
    :cond_20
    sget-object p2, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Util.setPeriodicAlarm - failed setting alarm "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, ""

    invoke-static {p0, p2, p1, p3, p3}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_38
    return-void
.end method

.method public static a(Landroid/content/Context;J)V
    .registers 6

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInfoEventPeriodicAlarm executes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StartAppWall.DataUtils"

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 82
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "periodicInfoEventPaused"

    invoke-static {p0, v1, v0}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 83
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/common/metaData/MetaData;->isPeriodicInfoEventEnabled()Z

    move-result v0

    if-eqz v0, :cond_3f

    const v0, 0x2ee20534

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr p1, v1

    const-string v1, "periodicInfoEventTriggerTime"

    invoke-static {p0, v0, p1, p2, v1}, Lcom/startapp/android/publish/adsCommon/Utils/b;->a(Landroid/content/Context;IJLjava/lang/String;)V

    :cond_3f
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Long;)V
    .registers 7

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMetaDataPeriodicAlarm executes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StartAppWall.DataUtils"

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 70
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "periodicMetadataPaused"

    invoke-static {p0, v1, v0}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_43

    .line 71
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/common/metaData/MetaData;->isPeriodicMetaDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_43

    const v0, 0x22f50468

    .line 72
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-string p1, "periodicMetadataTriggerTime"

    invoke-static {p0, v0, v1, v2, p1}, Lcom/startapp/android/publish/adsCommon/Utils/b;->a(Landroid/content/Context;IJLjava/lang/String;)V

    :cond_43
    return-void
.end method

.method public static b(Landroid/content/Context;)J
    .registers 7

    .line 61
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/startapp/android/publish/common/metaData/MetaData;->getPeriodicInfoEventIntervalInMinutes(Landroid/content/Context;)I

    move-result p0

    int-to-long v2, p0

    const-wide/32 v4, 0xea60

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static c(Landroid/content/Context;)V
    .registers 3

    .line 65
    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/Utils/b;->b(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/startapp/android/publish/adsCommon/Utils/b;->a(Landroid/content/Context;Ljava/lang/Long;)V

    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .registers 3

    .line 77
    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/Utils/b;->b(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/b;->a(Landroid/content/Context;J)V

    return-void
.end method
