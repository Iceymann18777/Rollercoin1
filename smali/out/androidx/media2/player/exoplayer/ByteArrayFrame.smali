.class final Landroidx/media2/player/exoplayer/ByteArrayFrame;
.super Ljava/lang/Object;
.source "ByteArrayFrame.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/player/exoplayer/ByteArrayFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mData:[B

.field public final mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 90
    new-instance v0, Landroidx/media2/player/exoplayer/ByteArrayFrame$1;

    invoke-direct {v0}, Landroidx/media2/player/exoplayer/ByteArrayFrame$1;-><init>()V

    sput-object v0, Landroidx/media2/player/exoplayer/ByteArrayFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(J[B)V
    .registers 4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p1, p0, Landroidx/media2/player/exoplayer/ByteArrayFrame;->mTimestamp:J

    .line 46
    iput-object p3, p0, Landroidx/media2/player/exoplayer/ByteArrayFrame;->mData:[B

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/player/exoplayer/ByteArrayFrame;->mTimestamp:J

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 52
    new-array v0, v0, [B

    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 54
    iput-object v0, p0, Landroidx/media2/player/exoplayer/ByteArrayFrame;->mData:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_33

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_33

    .line 65
    :cond_12
    check-cast p1, Landroidx/media2/player/exoplayer/ByteArrayFrame;

    .line 66
    iget-wide v2, p0, Landroidx/media2/player/exoplayer/ByteArrayFrame;->mTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Landroidx/media2/player/exoplayer/ByteArrayFrame;->mTimestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, p0, Landroidx/media2/player/exoplayer/ByteArrayFrame;->mData:[B

    iget-object p1, p1, Landroidx/media2/player/exoplayer/ByteArrayFrame;->mData:[B

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

    .line 72
    iget-wide v0, p0, Landroidx/media2/player/exoplayer/ByteArrayFrame;->mTimestamp:J

    long-to-int v1, v0

    const/16 v0, 0x20f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 73
    iget-object v1, p0, Landroidx/media2/player/exoplayer/ByteArrayFrame;->mData:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 86
    iget-wide v0, p0, Landroidx/media2/player/exoplayer/ByteArrayFrame;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 87
    iget-object p2, p0, Landroidx/media2/player/exoplayer/ByteArrayFrame;->mData:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
