.class public final Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;
.super Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;
.source "MlltFrame.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final bytesBetweenReference:I

.field public final bytesDeviations:[I

.field public final millisecondsBetweenReference:I

.field public final millisecondsDeviations:[I

.field public final mpegFramesBetweenReference:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 109
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III[I[I)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mpegFramesBetweenReference",
            "bytesBetweenReference",
            "millisecondsBetweenReference",
            "bytesDeviations",
            "millisecondsDeviations"
        }
    .end annotation

    const-string v0, "MLLT"

    .line 48
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 49
    iput p1, p0, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->mpegFramesBetweenReference:I

    .line 50
    iput p2, p0, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->bytesBetweenReference:I

    .line 51
    iput p3, p0, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->millisecondsBetweenReference:I

    .line 52
    iput-object p4, p0, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->bytesDeviations:[I

    .line 53
    iput-object p5, p0, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->millisecondsDeviations:[I

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

    const-string v0, "MLLT"

    .line 58
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->mpegFramesBetweenReference:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->bytesBetweenReference:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->millisecondsBetweenReference:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->bytesDeviations:[I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->millisecondsDeviations:[I

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

    if-eqz p1, :cond_3d

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3d

    .line 74
    :cond_12
    check-cast p1, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;

    .line 75
    iget v2, p0, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->mpegFramesBetweenReference:I

    iget v3, p1, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->mpegFramesBetweenReference:I

    if-ne v2, v3, :cond_3b

    iget v2, p0, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->bytesBetweenReference:I

    iget v3, p1, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->bytesBetweenReference:I

    if-ne v2, v3, :cond_3b

    iget v2, p0, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->millisecondsBetweenReference:I

    iget v3, p1, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->millisecondsBetweenReference:I

    if-ne v2, v3, :cond_3b

    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->bytesDeviations:[I

    iget-object v3, p1, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->bytesDeviations:[I

    .line 78
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->millisecondsDeviations:[I

    iget-object p1, p1, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->millisecondsDeviations:[I

    .line 79
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_3b

    goto :goto_3c

    :cond_3b
    const/4 v0, 0x0

    :goto_3c
    return v0

    :cond_3d
    :goto_3d
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 85
    iget v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->mpegFramesBetweenReference:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 86
    iget v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->bytesBetweenReference:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 87
    iget v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->millisecondsBetweenReference:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 88
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->bytesDeviations:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 89
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->millisecondsDeviations:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/2addr v1, v0

    return v1
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

    .line 97
    iget p2, p0, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->mpegFramesBetweenReference:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget p2, p0, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->bytesBetweenReference:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget p2, p0, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->millisecondsBetweenReference:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object p2, p0, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->bytesDeviations:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 101
    iget-object p2, p0, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->millisecondsDeviations:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
