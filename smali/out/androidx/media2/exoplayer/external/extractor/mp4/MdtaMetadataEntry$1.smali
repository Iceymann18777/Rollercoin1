.class Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry$1;
.super Ljava/lang/Object;
.source "MdtaMetadataEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 113
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;-><init>(Landroid/os/Parcel;Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry$1;)V

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

    .line 109
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 118
    new-array p1, p1, [Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;

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

    .line 109
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry$1;->newArray(I)[Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;

    move-result-object p1

    return-object p1
.end method
