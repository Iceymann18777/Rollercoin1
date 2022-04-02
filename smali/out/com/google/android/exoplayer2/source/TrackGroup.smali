.class public final Lcom/google/android/exoplayer2/source/TrackGroup;
.super Ljava/lang/Object;
.source "TrackGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final formats:[Lcom/google/android/exoplayer2/Format;

.field private hashCode:I

.field public final length:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 129
    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroup$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/TrackGroup$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/TrackGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    .line 58
    new-array v0, v0, [Lcom/google/android/exoplayer2/Format;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    const/4 v0, 0x0

    .line 59
    :goto_e
    iget v1, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v0, v1, :cond_25

    .line 60
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    const-class v2, Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/Format;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_25
    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/exoplayer2/Format;)V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    array-length v0, p1

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 52
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    .line 53
    array-length p1, p1

    iput p1, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

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

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    .line 110
    :cond_12
    check-cast p1, Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 111
    iget v2, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

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

.method public getFormat(I)Lcom/google/android/exoplayer2/Format;
    .registers 3

    .line 71
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public hashCode()I
    .registers 3

    .line 94
    iget v0, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->hashCode:I

    if-nez v0, :cond_f

    const/16 v0, 0x20f

    .line 96
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    iput v0, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->hashCode:I

    .line 99
    :cond_f
    iget v0, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->hashCode:I

    return v0
.end method

.method public indexOf(Lcom/google/android/exoplayer2/Format;)I
    .registers 5

    const/4 v0, 0x0

    .line 84
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 85
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

    .line 123
    iget p2, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 124
    :goto_7
    iget v1, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v0, v1, :cond_15

    .line 125
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_15
    return-void
.end method
