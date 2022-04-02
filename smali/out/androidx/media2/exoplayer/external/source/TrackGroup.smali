.class public final Landroidx/media2/exoplayer/external/source/TrackGroup;
.super Ljava/lang/Object;
.source "TrackGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/exoplayer/external/source/TrackGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final formats:[Landroidx/media2/exoplayer/external/Format;

.field private hashCode:I

.field public final length:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 135
    new-instance v0, Landroidx/media2/exoplayer/external/source/TrackGroup$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/source/TrackGroup$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/source/TrackGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    .line 64
    new-array v0, v0, [Landroidx/media2/exoplayer/external/Format;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->formats:[Landroidx/media2/exoplayer/external/Format;

    const/4 v0, 0x0

    .line 65
    :goto_e
    iget v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v0, v1, :cond_25

    .line 66
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->formats:[Landroidx/media2/exoplayer/external/Format;

    const-class v2, Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/Format;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_25
    return-void
.end method

.method public varargs constructor <init>([Landroidx/media2/exoplayer/external/Format;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "formats"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    array-length v0, p1

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 58
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->formats:[Landroidx/media2/exoplayer/external/Format;

    .line 59
    array-length p1, p1

    iput p1, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

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

    if-eqz p1, :cond_27

    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    .line 116
    :cond_12
    check-cast p1, Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 117
    iget v2, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    iget v3, p1, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->formats:[Landroidx/media2/exoplayer/external/Format;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/TrackGroup;->formats:[Landroidx/media2/exoplayer/external/Format;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    return v0

    :cond_27
    :goto_27
    return v1
.end method

.method public getFormat(I)Landroidx/media2/exoplayer/external/Format;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->formats:[Landroidx/media2/exoplayer/external/Format;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public hashCode()I
    .registers 3

    .line 100
    iget v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->hashCode:I

    if-nez v0, :cond_f

    const/16 v0, 0x20f

    .line 102
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->formats:[Landroidx/media2/exoplayer/external/Format;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 103
    iput v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->hashCode:I

    .line 105
    :cond_f
    iget v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->hashCode:I

    return v0
.end method

.method public indexOf(Landroidx/media2/exoplayer/external/Format;)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    const/4 v0, 0x0

    .line 90
    :goto_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->formats:[Landroidx/media2/exoplayer/external/Format;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 91
    aget-object v1, v1, v0

    if-ne p1, v1, :cond_b

    return v0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    const/4 p1, -0x1

    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
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

    .line 129
    iget p2, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 130
    :goto_7
    iget v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v0, v1, :cond_15

    .line 131
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->formats:[Landroidx/media2/exoplayer/external/Format;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_15
    return-void
.end method
