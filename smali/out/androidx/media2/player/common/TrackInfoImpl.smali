.class public final Landroidx/media2/player/common/TrackInfoImpl;
.super Landroidx/media2/player/MediaPlayer2$TrackInfo;
.source "TrackInfoImpl.java"


# instance fields
.field private final mFormat:Landroid/media/MediaFormat;

.field private final mTrackType:I


# direct methods
.method public constructor <init>(ILandroid/media/MediaFormat;)V
    .registers 3

    .line 70
    invoke-direct {p0}, Landroidx/media2/player/MediaPlayer2$TrackInfo;-><init>()V

    .line 71
    iput p1, p0, Landroidx/media2/player/common/TrackInfoImpl;->mTrackType:I

    .line 72
    iput-object p2, p0, Landroidx/media2/player/common/TrackInfoImpl;->mFormat:Landroid/media/MediaFormat;

    return-void
.end method


# virtual methods
.method public getFormat()Landroid/media/MediaFormat;
    .registers 3

    .line 64
    iget v0, p0, Landroidx/media2/player/common/TrackInfoImpl;->mTrackType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    .line 65
    iget-object v0, p0, Landroidx/media2/player/common/TrackInfoImpl;->mFormat:Landroid/media/MediaFormat;

    return-object v0

    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrackType()I
    .registers 2

    .line 43
    iget v0, p0, Landroidx/media2/player/common/TrackInfoImpl;->mTrackType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    iget v1, p0, Landroidx/media2/player/common/TrackInfoImpl;->mTrackType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3d

    const/4 v2, 0x2

    if-eq v1, v2, :cond_37

    const/4 v2, 0x4

    if-eq v1, v2, :cond_31

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2b

    const-string v1, "UNKNOWN"

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42

    :cond_2b
    const-string v1, "METADATA"

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42

    :cond_31
    const-string v1, "SUBTITLE"

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42

    :cond_37
    const-string v1, "AUDIO"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42

    :cond_3d
    const-string v1, "VIDEO"

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_42
    const-string v1, ", "

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v1, p0, Landroidx/media2/player/common/TrackInfoImpl;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
