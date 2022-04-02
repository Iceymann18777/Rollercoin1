.class public Lcom/startapp/android/publish/cache/FailuresHandler;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private infiniteLastRetry:Z

.field private intervals:Ljava/util/List;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Ljava/util/ArrayList;
        c = Ljava/lang/Integer;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0xa

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/16 v1, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/cache/FailuresHandler;->intervals:Ljava/util/List;

    .line 15
    iput-boolean v2, p0, Lcom/startapp/android/publish/cache/FailuresHandler;->infiniteLastRetry:Z

    return-void
.end method


# virtual methods
.method public getIntervals()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/startapp/android/publish/cache/FailuresHandler;->intervals:Ljava/util/List;

    return-object v0
.end method

.method public isInfiniteLastRetry()Z
    .registers 2

    .line 28
    iget-boolean v0, p0, Lcom/startapp/android/publish/cache/FailuresHandler;->infiniteLastRetry:Z

    return v0
.end method
