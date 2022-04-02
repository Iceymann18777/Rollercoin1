.class public final Landroidx/media2/exoplayer/external/offline/StreamKey;
.super Ljava/lang/Object;
.source "StreamKey.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Landroidx/media2/exoplayer/external/offline/StreamKey;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/exoplayer/external/offline/StreamKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final groupIndex:I

.field public final periodIndex:I

.field public final trackIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 126
    new-instance v0, Landroidx/media2/exoplayer/external/offline/StreamKey$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/offline/StreamKey$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/offline/StreamKey;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->periodIndex:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->groupIndex:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->trackIndex:I

    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/media2/exoplayer/external/offline/StreamKey;)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 102
    iget v0, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->periodIndex:I

    iget v1, p1, Landroidx/media2/exoplayer/external/offline/StreamKey;->periodIndex:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_13

    .line 104
    iget v0, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->groupIndex:I

    iget v1, p1, Landroidx/media2/exoplayer/external/offline/StreamKey;->groupIndex:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_13

    .line 106
    iget v0, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->trackIndex:I

    iget p1, p1, Landroidx/media2/exoplayer/external/offline/StreamKey;->trackIndex:I

    sub-int/2addr v0, p1

    :cond_13
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "o"
        }
    .end annotation

    .line 35
    check-cast p1, Landroidx/media2/exoplayer/external/offline/StreamKey;

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/offline/StreamKey;->compareTo(Landroidx/media2/exoplayer/external/offline/StreamKey;)I

    move-result p1

    return p1
.end method

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
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_29

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_29

    .line 84
    :cond_12
    check-cast p1, Landroidx/media2/exoplayer/external/offline/StreamKey;

    .line 85
    iget v2, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->periodIndex:I

    iget v3, p1, Landroidx/media2/exoplayer/external/offline/StreamKey;->periodIndex:I

    if-ne v2, v3, :cond_27

    iget v2, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->groupIndex:I

    iget v3, p1, Landroidx/media2/exoplayer/external/offline/StreamKey;->groupIndex:I

    if-ne v2, v3, :cond_27

    iget v2, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->trackIndex:I

    iget p1, p1, Landroidx/media2/exoplayer/external/offline/StreamKey;->trackIndex:I

    if-ne v2, p1, :cond_27

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    return v0

    :cond_29
    :goto_29
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 92
    iget v0, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->periodIndex:I

    mul-int/lit8 v0, v0, 0x1f

    .line 93
    iget v1, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->groupIndex:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 94
    iget v1, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->trackIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 72
    iget v0, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->periodIndex:I

    iget v1, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->groupIndex:I

    iget v2, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->trackIndex:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x23

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    .line 121
    iget p2, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->periodIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget p2, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->groupIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget p2, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->trackIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
