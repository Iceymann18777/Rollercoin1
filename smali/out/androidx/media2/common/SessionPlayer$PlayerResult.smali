.class public Landroidx/media2/common/SessionPlayer$PlayerResult;
.super Ljava/lang/Object;
.source "SessionPlayer.java"

# interfaces
.implements Landroidx/media2/common/BaseResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/common/SessionPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayerResult"
.end annotation


# instance fields
.field private final mCompletionTime:J

.field private final mItem:Landroidx/media2/common/MediaItem;

.field private final mResultCode:I


# direct methods
.method public constructor <init>(ILandroidx/media2/common/MediaItem;)V
    .registers 5

    .line 1474
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/common/SessionPlayer$PlayerResult;-><init>(ILandroidx/media2/common/MediaItem;J)V

    return-void
.end method

.method private constructor <init>(ILandroidx/media2/common/MediaItem;J)V
    .registers 5

    .line 1478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1479
    iput p1, p0, Landroidx/media2/common/SessionPlayer$PlayerResult;->mResultCode:I

    .line 1480
    iput-object p2, p0, Landroidx/media2/common/SessionPlayer$PlayerResult;->mItem:Landroidx/media2/common/MediaItem;

    .line 1481
    iput-wide p3, p0, Landroidx/media2/common/SessionPlayer$PlayerResult;->mCompletionTime:J

    return-void
.end method

.method public static createFuture(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 1490
    invoke-static {}, Landroidx/media2/common/futures/ResolvableFuture;->create()Landroidx/media2/common/futures/ResolvableFuture;

    move-result-object v0

    .line 1491
    new-instance v1, Landroidx/media2/common/SessionPlayer$PlayerResult;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/media2/common/SessionPlayer$PlayerResult;-><init>(ILandroidx/media2/common/MediaItem;)V

    invoke-virtual {v0, v1}, Landroidx/media2/common/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public getResultCode()I
    .registers 2

    .line 1512
    iget v0, p0, Landroidx/media2/common/SessionPlayer$PlayerResult;->mResultCode:I

    return v0
.end method
