.class public final Lcom/appnext/base/services/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile eA:Lcom/appnext/base/services/a;


# instance fields
.field private dP:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aK()Lcom/appnext/base/services/a;
    .registers 2

    .line 16
    sget-object v0, Lcom/appnext/base/services/a;->eA:Lcom/appnext/base/services/a;

    if-nez v0, :cond_17

    .line 17
    const-class v0, Lcom/appnext/base/operations/b;

    monitor-enter v0

    .line 18
    :try_start_7
    sget-object v1, Lcom/appnext/base/services/a;->eA:Lcom/appnext/base/services/a;

    if-nez v1, :cond_12

    .line 19
    new-instance v1, Lcom/appnext/base/services/a;

    invoke-direct {v1}, Lcom/appnext/base/services/a;-><init>()V

    sput-object v1, Lcom/appnext/base/services/a;->eA:Lcom/appnext/base/services/a;

    .line 21
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 24
    :cond_17
    :goto_17
    sget-object v0, Lcom/appnext/base/services/a;->eA:Lcom/appnext/base/services/a;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized getKey()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 32
    :try_start_1
    iget-object v0, p0, Lcom/appnext/base/services/a;->dP:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setKey(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 28
    :try_start_1
    iput-object p1, p0, Lcom/appnext/base/services/a;->dP:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 29
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method
