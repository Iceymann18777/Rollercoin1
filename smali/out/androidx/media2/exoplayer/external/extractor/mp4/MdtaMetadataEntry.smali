.class public final Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;
.super Ljava/lang/Object;
.source "MdtaMetadataEntry.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final key:Ljava/lang/String;

.field public final localeIndicator:I

.field public final typeIndicator:I

.field public final value:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 108
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->value:[B

    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->localeIndicator:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->typeIndicator:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry$1;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BII)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "value",
            "localeIndicator",
            "typeIndicator"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->value:[B

    .line 50
    iput p3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->localeIndicator:I

    .line 51
    iput p4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->typeIndicator:I

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

    if-eqz p1, :cond_37

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_37

    .line 70
    :cond_12
    check-cast p1, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;

    .line 71
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->value:[B

    iget-object v3, p1, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->value:[B

    .line 72
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_35

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->localeIndicator:I

    iget v3, p1, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->localeIndicator:I

    if-ne v2, v3, :cond_35

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->typeIndicator:I

    iget p1, p1, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->typeIndicator:I

    if-ne v2, p1, :cond_35

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    :goto_36
    return v0

    :cond_37
    :goto_37
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 80
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 81
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->value:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 82
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->localeIndicator:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 83
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->typeIndicator:I

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 89
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "mdta: key="

    if-eqz v1, :cond_13

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_18
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

    .line 96
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->value:[B

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->value:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 99
    iget p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->localeIndicator:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->typeIndicator:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
