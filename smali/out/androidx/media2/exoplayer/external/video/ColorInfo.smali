.class public final Landroidx/media2/exoplayer/external/video/ColorInfo;
.super Ljava/lang/Object;
.source "ColorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/exoplayer/external/video/ColorInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final colorRange:I

.field public final colorSpace:I

.field public final colorTransfer:I

.field private hashCode:I

.field public final hdrStaticInfo:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 144
    new-instance v0, Landroidx/media2/exoplayer/external/video/ColorInfo$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/video/ColorInfo$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/video/ColorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III[B)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "colorSpace",
            "colorRange",
            "colorTransfer",
            "hdrStaticInfo"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorSpace:I

    .line 79
    iput p2, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorRange:I

    .line 80
    iput p3, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorTransfer:I

    .line 81
    iput-object p4, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->hdrStaticInfo:[B

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorSpace:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorRange:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorTransfer:I

    .line 89
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Util;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    iput-object p1, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->hdrStaticInfo:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_33

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_33

    .line 102
    :cond_12
    check-cast p1, Landroidx/media2/exoplayer/external/video/ColorInfo;

    .line 103
    iget v2, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorSpace:I

    iget v3, p1, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorSpace:I

    if-ne v2, v3, :cond_31

    iget v2, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorRange:I

    iget v3, p1, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorRange:I

    if-ne v2, v3, :cond_31

    iget v2, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorTransfer:I

    iget v3, p1, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorTransfer:I

    if-ne v2, v3, :cond_31

    iget-object v2, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->hdrStaticInfo:[B

    iget-object p1, p1, Landroidx/media2/exoplayer/external/video/ColorInfo;->hdrStaticInfo:[B

    .line 106
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_31

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    return v0

    :cond_33
    :goto_33
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 117
    iget v0, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->hashCode:I

    if-nez v0, :cond_1e

    const/16 v0, 0x20f

    .line 119
    iget v1, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorSpace:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 120
    iget v1, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorRange:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 121
    iget v1, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorTransfer:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 122
    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->hdrStaticInfo:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 123
    iput v0, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->hashCode:I

    .line 125
    :cond_1e
    iget v0, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 111
    iget v0, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorSpace:I

    iget v1, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorRange:I

    iget v2, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorTransfer:I

    iget-object v3, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->hdrStaticInfo:[B

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    goto :goto_d

    :cond_c
    const/4 v3, 0x0

    :goto_d
    const/16 v4, 0x37

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "ColorInfo("

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 135
    iget p2, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorSpace:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget p2, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorRange:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget p2, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorTransfer:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object p2, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->hdrStaticInfo:[B

    if-eqz p2, :cond_15

    const/4 p2, 0x1

    goto :goto_16

    :cond_15
    const/4 p2, 0x0

    :goto_16
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/util/Util;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 139
    iget-object p2, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->hdrStaticInfo:[B

    if-eqz p2, :cond_20

    .line 140
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_20
    return-void
.end method
