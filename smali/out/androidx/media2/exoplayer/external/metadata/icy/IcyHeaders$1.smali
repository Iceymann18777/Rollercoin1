.class Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders$1;
.super Ljava/lang/Object;
.source "IcyHeaders.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 243
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "in"
        }
    .end annotation

    .line 239
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 248
    new-array p1, p1, [Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "size"
        }
    .end annotation

    .line 239
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders$1;->newArray(I)[Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    move-result-object p1

    return-object p1
.end method
