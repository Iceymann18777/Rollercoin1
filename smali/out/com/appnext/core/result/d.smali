.class public final Lcom/appnext/core/result/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ik:Lcom/appnext/core/result/d;


# instance fields
.field private if:Lcom/appnext/core/result/c;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized br()Lcom/appnext/core/result/d;
    .registers 2

    const-class v0, Lcom/appnext/core/result/d;

    monitor-enter v0

    .line 13
    :try_start_3
    sget-object v1, Lcom/appnext/core/result/d;->ik:Lcom/appnext/core/result/d;

    if-nez v1, :cond_e

    .line 14
    new-instance v1, Lcom/appnext/core/result/d;

    invoke-direct {v1}, Lcom/appnext/core/result/d;-><init>()V

    sput-object v1, Lcom/appnext/core/result/d;->ik:Lcom/appnext/core/result/d;

    .line 16
    :cond_e
    sget-object v1, Lcom/appnext/core/result/d;->ik:Lcom/appnext/core/result/d;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Lcom/appnext/core/result/c;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/appnext/core/result/d;->if:Lcom/appnext/core/result/c;

    return-void
.end method

.method public final bs()Lcom/appnext/core/result/c;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/appnext/core/result/d;->if:Lcom/appnext/core/result/c;

    return-object v0
.end method
