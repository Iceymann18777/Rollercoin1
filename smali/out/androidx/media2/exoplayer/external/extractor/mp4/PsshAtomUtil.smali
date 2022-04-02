.class public final Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil;
.super Ljava/lang/Object;
.source "PsshAtomUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;
    }
.end annotation


# direct methods
.method public static buildPsshAtom(Ljava/util/UUID;[B)[B
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "systemId",
            "data"
        }
    .end annotation

    const/4 v0, 0x0

    .line 47
    invoke-static {p0, v0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil;->buildPsshAtom(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static buildPsshAtom(Ljava/util/UUID;[Ljava/util/UUID;[B)[B
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "systemId",
            "keyIds",
            "data"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    .line 61
    array-length v1, p2

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    add-int/lit8 v1, v1, 0x20

    if-eqz p1, :cond_10

    .line 64
    array-length v2, p1

    mul-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    .line 66
    :cond_10
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 67
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const v1, 0x70737368    # 3.013775E29f

    .line 68
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_22

    const/high16 v1, 0x1000000

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    .line 69
    :goto_23
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 70
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 71
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_50

    .line 73
    array-length p0, p1

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 74
    array-length p0, p1

    :goto_3b
    if-ge v0, p0, :cond_50

    aget-object v1, p1, v0

    .line 75
    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 76
    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    :cond_50
    if-eqz p2, :cond_5c

    .line 79
    array-length p0, p2

    if-eqz p0, :cond_5c

    .line 80
    array-length p0, p2

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 81
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 83
    :cond_5c
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method private static parsePsshAtom([B)Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atom"
        }
    .end annotation

    .line 162
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0, p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([B)V

    .line 163
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result p0

    const/4 v1, 0x0

    const/16 v2, 0x20

    if-ge p0, v2, :cond_f

    return-object v1

    :cond_f
    const/4 p0, 0x0

    .line 167
    invoke-virtual {v0, p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 168
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 169
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    if-eq v2, v3, :cond_20

    return-object v1

    .line 173
    :cond_20
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v2

    const v3, 0x70737368    # 3.013775E29f

    if-eq v2, v3, :cond_2a

    return-object v1

    .line 178
    :cond_2a
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v2

    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_4e

    const/16 p0, 0x25

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Unsupported pssh version: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PsshAtomUtil"

    invoke-static {v0, p0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 183
    :cond_4e
    new-instance v4, Ljava/util/UUID;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLong()J

    move-result-wide v5

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLong()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/util/UUID;-><init>(JJ)V

    if-ne v2, v3, :cond_66

    .line 185
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    .line 186
    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 188
    :cond_66
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    .line 189
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    if-eq v3, v5, :cond_71

    return-object v1

    .line 193
    :cond_71
    new-array v1, v3, [B

    .line 194
    invoke-virtual {v0, v1, p0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 195
    new-instance p0, Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;

    invoke-direct {p0, v4, v2, v1}, Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;-><init>(Ljava/util/UUID;I[B)V

    return-object p0
.end method

.method public static parseUuid([B)Ljava/util/UUID;
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atom"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil;->parsePsshAtom([B)Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 110
    :cond_8
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;->access$000(Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;)Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method
