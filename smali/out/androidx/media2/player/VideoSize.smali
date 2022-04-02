.class public final Landroidx/media2/player/VideoSize;
.super Ljava/lang/Object;
.source "VideoSize.java"


# instance fields
.field private final mInternal:Landroidx/media2/common/VideoSize;


# direct methods
.method constructor <init>(Landroidx/media2/common/VideoSize;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroidx/media2/player/VideoSize;->mInternal:Landroidx/media2/common/VideoSize;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    if-ne p0, p1, :cond_8

    const/4 p1, 0x1

    return p1

    .line 74
    :cond_8
    instance-of v1, p1, Landroidx/media2/player/VideoSize;

    if-eqz v1, :cond_17

    .line 75
    check-cast p1, Landroidx/media2/player/VideoSize;

    .line 76
    iget-object v0, p0, Landroidx/media2/player/VideoSize;->mInternal:Landroidx/media2/common/VideoSize;

    iget-object p1, p1, Landroidx/media2/player/VideoSize;->mInternal:Landroidx/media2/common/VideoSize;

    invoke-virtual {v0, p1}, Landroidx/media2/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_17
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 93
    iget-object v0, p0, Landroidx/media2/player/VideoSize;->mInternal:Landroidx/media2/common/VideoSize;

    invoke-virtual {v0}, Landroidx/media2/common/VideoSize;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Landroidx/media2/player/VideoSize;->mInternal:Landroidx/media2/common/VideoSize;

    invoke-virtual {v0}, Landroidx/media2/common/VideoSize;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
