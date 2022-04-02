.class public abstract Landroidx/media2/player/MediaPlayer2$TrackInfo;
.super Ljava/lang/Object;
.source "MediaPlayer2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/MediaPlayer2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TrackInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getFormat()Landroid/media/MediaFormat;
.end method

.method public abstract getTrackType()I
.end method
