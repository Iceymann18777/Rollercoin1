.class final Landroidx/media2/player/exoplayer/ByteArrayFrame$1;
.super Ljava/lang/Object;
.source "ByteArrayFrame.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/exoplayer/ByteArrayFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/media2/player/exoplayer/ByteArrayFrame;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/media2/player/exoplayer/ByteArrayFrame;
    .registers 3

    .line 95
    new-instance v0, Landroidx/media2/player/exoplayer/ByteArrayFrame;

    invoke-direct {v0, p1}, Landroidx/media2/player/exoplayer/ByteArrayFrame;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 91
    invoke-virtual {p0, p1}, Landroidx/media2/player/exoplayer/ByteArrayFrame$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/media2/player/exoplayer/ByteArrayFrame;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/media2/player/exoplayer/ByteArrayFrame;
    .registers 2

    .line 100
    new-array p1, p1, [Landroidx/media2/player/exoplayer/ByteArrayFrame;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 91
    invoke-virtual {p0, p1}, Landroidx/media2/player/exoplayer/ByteArrayFrame$1;->newArray(I)[Landroidx/media2/player/exoplayer/ByteArrayFrame;

    move-result-object p1

    return-object p1
.end method
