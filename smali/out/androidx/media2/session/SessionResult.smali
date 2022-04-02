.class public Landroidx/media2/session/SessionResult;
.super Landroidx/versionedparcelable/CustomVersionedParcelable;
.source "SessionResult.java"

# interfaces
.implements Landroidx/media2/session/RemoteResult;


# instance fields
.field mCompletionTime:J

.field mCustomCommandResult:Landroid/os/Bundle;

.field mItem:Landroidx/media2/common/MediaItem;

.field mParcelableItem:Landroidx/media2/common/MediaItem;

.field mResultCode:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    return-void
.end method

.method constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, p1, v0}, Landroidx/media2/session/SessionResult;-><init>(ILandroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(ILandroid/os/Bundle;)V
    .registers 9

    .line 102
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media2/session/SessionResult;-><init>(ILandroid/os/Bundle;Landroidx/media2/common/MediaItem;J)V

    return-void
.end method

.method constructor <init>(ILandroid/os/Bundle;Landroidx/media2/common/MediaItem;J)V
    .registers 6

    .line 119
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    .line 120
    iput p1, p0, Landroidx/media2/session/SessionResult;->mResultCode:I

    .line 121
    iput-object p2, p0, Landroidx/media2/session/SessionResult;->mCustomCommandResult:Landroid/os/Bundle;

    .line 122
    iput-object p3, p0, Landroidx/media2/session/SessionResult;->mItem:Landroidx/media2/common/MediaItem;

    .line 123
    iput-wide p4, p0, Landroidx/media2/session/SessionResult;->mCompletionTime:J

    return-void
.end method

.method static createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 136
    invoke-static {}, Landroidx/media2/session/futures/ResolvableFuture;->create()Landroidx/media2/session/futures/ResolvableFuture;

    move-result-object v0

    .line 137
    new-instance v1, Landroidx/media2/session/SessionResult;

    invoke-direct {v1, p0}, Landroidx/media2/session/SessionResult;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public getResultCode()I
    .registers 2

    .line 165
    iget v0, p0, Landroidx/media2/session/SessionResult;->mResultCode:I

    return v0
.end method

.method public onPostParceling()V
    .registers 2

    .line 231
    iget-object v0, p0, Landroidx/media2/session/SessionResult;->mParcelableItem:Landroidx/media2/common/MediaItem;

    iput-object v0, p0, Landroidx/media2/session/SessionResult;->mItem:Landroidx/media2/common/MediaItem;

    const/4 v0, 0x0

    .line 232
    iput-object v0, p0, Landroidx/media2/session/SessionResult;->mParcelableItem:Landroidx/media2/common/MediaItem;

    return-void
.end method

.method public onPreParceling(Z)V
    .registers 2

    .line 222
    iget-object p1, p0, Landroidx/media2/session/SessionResult;->mItem:Landroidx/media2/common/MediaItem;

    invoke-static {p1}, Landroidx/media2/session/MediaUtils;->upcastForPreparceling(Landroidx/media2/common/MediaItem;)Landroidx/media2/common/MediaItem;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/session/SessionResult;->mParcelableItem:Landroidx/media2/common/MediaItem;

    return-void
.end method
