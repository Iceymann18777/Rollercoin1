.class Landroidx/media2/player/MediaPlayer$MediaItemList;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaItemList"
.end annotation


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/common/MediaItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 3777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3778
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer$MediaItemList;->mList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method clear()V
    .registers 4

    .line 3821
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$MediaItemList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/MediaItem;

    .line 3822
    instance-of v2, v1, Landroidx/media2/common/FileMediaItem;

    if-eqz v2, :cond_6

    .line 3823
    check-cast v1, Landroidx/media2/common/FileMediaItem;

    invoke-virtual {v1}, Landroidx/media2/common/FileMediaItem;->decreaseRefCount()V

    goto :goto_6

    .line 3826
    :cond_1c
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$MediaItemList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method indexOf(Ljava/lang/Object;)I
    .registers 3

    .line 3838
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$MediaItemList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
