.class public final Landroidx/media2/player/MediaPlayer$TrackInfo;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackInfo"
.end annotation


# instance fields
.field private final mFormat:Landroid/media/MediaFormat;

.field private final mId:I

.field private final mItem:Landroidx/media2/common/MediaItem;

.field private final mTrackType:I


# direct methods
.method public constructor <init>(ILandroidx/media2/common/MediaItem;ILandroid/media/MediaFormat;)V
    .registers 5

    .line 3467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3468
    iput p1, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mId:I

    .line 3469
    iput-object p2, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mItem:Landroidx/media2/common/MediaItem;

    .line 3470
    iput p3, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mTrackType:I

    .line 3471
    iput-object p4, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 3524
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 3527
    :cond_13
    check-cast p1, Landroidx/media2/player/MediaPlayer$TrackInfo;

    .line 3528
    iget v2, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mId:I

    iget v3, p1, Landroidx/media2/player/MediaPlayer$TrackInfo;->mId:I

    if-eq v2, v3, :cond_1c

    return v1

    .line 3531
    :cond_1c
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mItem:Landroidx/media2/common/MediaItem;

    if-nez v2, :cond_25

    iget-object v2, p1, Landroidx/media2/player/MediaPlayer$TrackInfo;->mItem:Landroidx/media2/common/MediaItem;

    if-nez v2, :cond_25

    return v0

    .line 3533
    :cond_25
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mItem:Landroidx/media2/common/MediaItem;

    if-eqz v0, :cond_48

    iget-object v2, p1, Landroidx/media2/player/MediaPlayer$TrackInfo;->mItem:Landroidx/media2/common/MediaItem;

    if-nez v2, :cond_2e

    goto :goto_48

    .line 3536
    :cond_2e
    invoke-virtual {v0}, Landroidx/media2/common/MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 3538
    iget-object p1, p1, Landroidx/media2/player/MediaPlayer$TrackInfo;->mItem:Landroidx/media2/common/MediaItem;

    invoke-virtual {p1}, Landroidx/media2/common/MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3540
    :cond_3f
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mItem:Landroidx/media2/common/MediaItem;

    iget-object p1, p1, Landroidx/media2/player/MediaPlayer$TrackInfo;->mItem:Landroidx/media2/common/MediaItem;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_48
    :goto_48
    return v1
.end method

.method public getFormat()Landroid/media/MediaFormat;
    .registers 3

    .line 3451
    iget v0, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mTrackType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    .line 3452
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    return-object v0

    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method getId()I
    .registers 2

    .line 3458
    iget v0, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mId:I

    return v0
.end method

.method getMediaItem()Landroidx/media2/common/MediaItem;
    .registers 2

    .line 3462
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mItem:Landroidx/media2/common/MediaItem;

    return-object v0
.end method

.method public getTrackType()I
    .registers 2

    .line 3429
    iget v0, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mTrackType:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 3503
    iget v0, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mId:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 3505
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mItem:Landroidx/media2/common/MediaItem;

    if-eqz v2, :cond_21

    .line 3506
    invoke-virtual {v2}, Landroidx/media2/common/MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 3507
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mItem:Landroidx/media2/common/MediaItem;

    invoke-virtual {v2}, Landroidx/media2/common/MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_22

    .line 3509
    :cond_1a
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mItem:Landroidx/media2/common/MediaItem;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    :goto_22
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 3476
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3477
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x23

    .line 3478
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    .line 3479
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3480
    iget v1, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mTrackType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3e

    const/4 v2, 0x2

    if-eq v1, v2, :cond_38

    const/4 v2, 0x4

    if-eq v1, v2, :cond_32

    const-string v1, "UNKNOWN"

    .line 3491
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_43

    :cond_32
    const-string v1, "SUBTITLE"

    .line 3488
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_43

    :cond_38
    const-string v1, "AUDIO"

    .line 3485
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_43

    :cond_3e
    const-string v1, "VIDEO"

    .line 3482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_43
    const-string v1, ", "

    .line 3494
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 3495
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3496
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
