.class public Landroidx/media2/player/MediaPlayer$DrmResult;
.super Landroidx/media2/common/SessionPlayer$PlayerResult;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrmResult"
.end annotation


# direct methods
.method public constructor <init>(ILandroidx/media2/common/MediaItem;)V
    .registers 3

    .line 3758
    invoke-direct {p0, p1, p2}, Landroidx/media2/common/SessionPlayer$PlayerResult;-><init>(ILandroidx/media2/common/MediaItem;)V

    return-void
.end method


# virtual methods
.method public getResultCode()I
    .registers 2

    .line 3769
    invoke-super {p0}, Landroidx/media2/common/SessionPlayer$PlayerResult;->getResultCode()I

    move-result v0

    return v0
.end method
