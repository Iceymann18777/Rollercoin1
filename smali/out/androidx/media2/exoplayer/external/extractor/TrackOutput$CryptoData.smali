.class public final Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;
.super Ljava/lang/Object;
.source "TrackOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/TrackOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoData"
.end annotation


# instance fields
.field public final clearBlocks:I

.field public final cryptoMode:I

.field public final encryptedBlocks:I

.field public final encryptionKey:[B


# direct methods
.method public constructor <init>(I[BII)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cryptoMode",
            "encryptionKey",
            "encryptedBlocks",
            "clearBlocks"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;->cryptoMode:I

    .line 73
    iput-object p2, p0, Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    .line 74
    iput p3, p0, Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    .line 75
    iput p4, p0, Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;->clearBlocks:I

    return-void
.end method


# virtual methods
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

    if-eqz p1, :cond_33

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_33

    .line 86
    :cond_12
    check-cast p1, Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    .line 87
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;->cryptoMode:I

    iget v3, p1, Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;->cryptoMode:I

    if-ne v2, v3, :cond_31

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    iget v3, p1, Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    if-ne v2, v3, :cond_31

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;->clearBlocks:I

    iget v3, p1, Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;->clearBlocks:I

    if-ne v2, v3, :cond_31

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    iget-object p1, p1, Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    .line 88
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

    .line 93
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;->cryptoMode:I

    mul-int/lit8 v0, v0, 0x1f

    .line 94
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 95
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 96
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;->clearBlocks:I

    add-int/2addr v0, v1

    return v0
.end method
