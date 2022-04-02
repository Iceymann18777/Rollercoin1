.class public final Landroidx/media2/common/VideoSize;
.super Ljava/lang/Object;
.source "VideoSize.java"

# interfaces
.implements Landroidx/versionedparcelable/VersionedParcelable;


# instance fields
.field mHeight:I

.field mWidth:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_14

    if-ltz p2, :cond_c

    .line 60
    iput p1, p0, Landroidx/media2/common/VideoSize;->mWidth:I

    .line 61
    iput p2, p0, Landroidx/media2/common/VideoSize;->mHeight:I

    return-void

    .line 58
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "height can not be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "width can not be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    return v1

    .line 98
    :cond_8
    instance-of v2, p1, Landroidx/media2/common/VideoSize;

    if-eqz v2, :cond_1b

    .line 99
    check-cast p1, Landroidx/media2/common/VideoSize;

    .line 100
    iget v2, p0, Landroidx/media2/common/VideoSize;->mWidth:I

    iget v3, p1, Landroidx/media2/common/VideoSize;->mWidth:I

    if-ne v2, v3, :cond_1b

    iget v2, p0, Landroidx/media2/common/VideoSize;->mHeight:I

    iget p1, p1, Landroidx/media2/common/VideoSize;->mHeight:I

    if-ne v2, p1, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 77
    iget v0, p0, Landroidx/media2/common/VideoSize;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 69
    iget v0, p0, Landroidx/media2/common/VideoSize;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 118
    iget v0, p0, Landroidx/media2/common/VideoSize;->mHeight:I

    iget v1, p0, Landroidx/media2/common/VideoSize;->mWidth:I

    shl-int/lit8 v2, v1, 0x10

    ushr-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroidx/media2/common/VideoSize;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media2/common/VideoSize;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
