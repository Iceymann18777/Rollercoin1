.class public final Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
.super Ljava/lang/Object;
.source "DrmInitData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/drm/DrmInitData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SchemeData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final data:[B

.field private hashCode:I

.field public final licenseServerUrl:Ljava/lang/String;

.field public final mimeType:Ljava/lang/String;

.field private final uuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 414
    new-instance v0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    new-instance v0, Ljava/util/UUID;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->data:[B

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uuid",
            "licenseServerUrl",
            "mimeType",
            "data"
        }
    .end annotation

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/UUID;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    .line 322
    iput-object p2, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 323
    invoke-static {p3}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    .line 324
    iput-object p4, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->data:[B

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uuid",
            "mimeType",
            "data"
        }
    .end annotation

    const/4 v0, 0x0

    .line 309
    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$000(Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)Ljava/util/UUID;
    .registers 1

    .line 285
    iget-object p0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    return-object p0
.end method


# virtual methods
.method public copyWithData([B)Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 368
    new-instance v0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
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
            "obj"
        }
    .end annotation

    .line 373
    instance-of v0, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    .line 379
    :cond_a
    check-cast p1, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 380
    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    .line 381
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    .line 382
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->data:[B

    iget-object p1, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->data:[B

    .line 383
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_35

    const/4 v1, 0x1

    :cond_35
    return v1
.end method

.method public hasData()Z
    .registers 2

    .line 358
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->data:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 388
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->hashCode:I

    if-nez v0, :cond_2b

    .line 389
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 390
    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    if-nez v1, :cond_12

    const/4 v1, 0x0

    goto :goto_16

    :cond_12
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 391
    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 392
    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 393
    iput v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->hashCode:I

    .line 395
    :cond_2b
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->hashCode:I

    return v0
.end method

.method public matches(Ljava/util/UUID;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "schemeUuid"
        }
    .end annotation

    .line 341
    sget-object v0, Landroidx/media2/exoplayer/external/C;->UUID_NIL:Ljava/util/UUID;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p1, 0x1

    :goto_16
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

    .line 407
    iget-object p2, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 408
    iget-object p2, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 409
    iget-object p2, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 410
    iget-object p2, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 411
    iget-object p2, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->data:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
