.class public Lcom/startapp/android/publish/adsCommon/Utils/g;
.super Ljava/lang/Object;
.source "StartAppSDK"


# static fields
.field private static a:Lcom/startapp/android/publish/adsCommon/Utils/g;


# instance fields
.field private b:Ljava/lang/String;

.field private c:J

.field private d:Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Lcom/startapp/android/publish/adsCommon/Utils/g;

    invoke-direct {v0}, Lcom/startapp/android/publish/adsCommon/Utils/g;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/Utils/g;->a:Lcom/startapp/android/publish/adsCommon/Utils/g;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/Utils/g;->b:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 24
    iput-wide v0, p0, Lcom/startapp/android/publish/adsCommon/Utils/g;->c:J

    .line 25
    sget-object v0, Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;->a:Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/Utils/g;->d:Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;

    return-void
.end method

.method public static d()Lcom/startapp/android/publish/adsCommon/Utils/g;
    .registers 1

    .line 98
    sget-object v0, Lcom/startapp/android/publish/adsCommon/Utils/g;->a:Lcom/startapp/android/publish/adsCommon/Utils/g;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/Utils/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized a(Landroid/content/Context;Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;)V
    .registers 10

    monitor-enter p0

    .line 53
    :try_start_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/Utils/g;->b:Ljava/lang/String;

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/startapp/android/publish/adsCommon/Utils/g;->c:J

    .line 55
    iput-object p2, p0, Lcom/startapp/android/publish/adsCommon/Utils/g;->d:Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;

    const-string v0, "SessionManager"

    const/4 v1, 0x3

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting new session: reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/startapp/android/publish/adsCommon/Utils/g;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a()Z

    move-result v0

    if-nez v0, :cond_41

    .line 60
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/a/b;->a()Lcom/startapp/android/publish/adsCommon/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/a/b;->b()V

    .line 64
    :cond_41
    new-instance v2, Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-direct {v2}, Lcom/startapp/android/publish/common/model/AdPreferences;-><init>()V

    .line 65
    invoke-static {p1, v2}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;)V

    .line 66
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/startapp/android/publish/common/metaData/MetaData;->loadFromServer(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;ZLcom/startapp/android/publish/common/metaData/d;Z)V
    :try_end_55
    .catchall {:try_start_1 .. :try_end_55} :catchall_57

    .line 67
    monitor-exit p0

    return-void

    :catchall_57
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()J
    .registers 3

    .line 33
    iget-wide v0, p0, Lcom/startapp/android/publish/adsCommon/Utils/g;->c:J

    return-wide v0
.end method

.method public c()Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/Utils/g;->d:Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;

    return-object v0
.end method
