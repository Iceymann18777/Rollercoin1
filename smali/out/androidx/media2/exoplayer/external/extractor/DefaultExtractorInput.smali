.class public final Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;
.super Ljava/lang/Object;
.source "DefaultExtractorInput.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/ExtractorInput;


# instance fields
.field private final dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

.field private peekBuffer:[B

.field private peekBufferLength:I

.field private peekBufferPosition:I

.field private position:J

.field private final scratchSpace:[B

.field private final streamLength:J


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/DataSource;JJ)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dataSource",
            "position",
            "length"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    .line 57
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->position:J

    .line 58
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->streamLength:J

    const/high16 p1, 0x10000

    new-array p1, p1, [B

    .line 59
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBuffer:[B

    const/16 p1, 0x1000

    new-array p1, p1, [B

    .line 60
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->scratchSpace:[B

    return-void
.end method

.method private commitBytesRead(I)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytesRead"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    .line 283
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->position:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->position:J

    :cond_9
    return-void
.end method

.method private ensureSpaceForPeek(I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "length"
        }
    .end annotation

    .line 189
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr v0, p1

    .line 190
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBuffer:[B

    array-length v1, p1

    if-le v0, v1, :cond_1d

    .line 191
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    const/high16 v1, 0x10000

    add-int/2addr v1, v0

    const/high16 v2, 0x80000

    add-int/2addr v0, v2

    invoke-static {p1, v1, v0}, Landroidx/media2/exoplayer/external/util/Util;->constrainValue(III)I

    move-result p1

    .line 193
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBuffer:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBuffer:[B

    :cond_1d
    return-void
.end method

.method private readFromDataSource([BIIIZ)I
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "offset",
            "length",
            "bytesAlreadyRead",
            "allowEndOfInput"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 266
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    add-int/2addr p2, p4

    sub-int/2addr p3, p4

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/upstream/DataSource;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1c

    if-nez p4, :cond_16

    if-eqz p5, :cond_16

    return p2

    .line 271
    :cond_16
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1c
    add-int/2addr p4, p1

    return p4

    .line 264
    :cond_1e
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method private readFromPeekBuffer([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "offset",
            "length"
        }
    .end annotation

    .line 218
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBufferLength:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 221
    :cond_6
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 222
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBuffer:[B

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    invoke-direct {p0, p3}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->updatePeekBuffer(I)V

    return p3
.end method

.method private skipFromPeekBuffer(I)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "length"
        }
    .end annotation

    .line 204
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBufferLength:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 205
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->updatePeekBuffer(I)V

    return p1
.end method

.method private updatePeekBuffer(I)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytesConsumed"
        }
    .end annotation

    .line 233
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBufferLength:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBufferLength:I

    const/4 v1, 0x0

    .line 234
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 235
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBuffer:[B

    .line 236
    array-length v3, v2

    const/high16 v4, 0x80000

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_15

    const/high16 v2, 0x10000

    add-int/2addr v0, v2

    .line 237
    new-array v2, v0, [B

    .line 239
    :cond_15
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBufferLength:I

    invoke-static {v0, p1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    iput-object v2, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBuffer:[B

    return-void
.end method


# virtual methods
.method public advancePeekPosition(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0, p1, v0}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    return-void
.end method

.method public advancePeekPosition(IZ)Z
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "length",
            "allowEndOfInput"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 138
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->ensureSpaceForPeek(I)V

    .line 139
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBufferLength:I

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr v0, v1

    move v5, v0

    :goto_9
    if-ge v5, p1, :cond_21

    .line 141
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBufferPosition:I

    move-object v1, p0

    move v4, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v5

    const/4 v0, -0x1

    if-ne v5, v0, :cond_1b

    const/4 p1, 0x0

    return p1

    .line 146
    :cond_1b
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr v0, v5

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBufferLength:I

    goto :goto_9

    .line 148
    :cond_21
    iget p2, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBufferPosition:I

    const/4 p1, 0x1

    return p1
.end method

.method public getLength()J
    .registers 3

    .line 174
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->streamLength:J

    return-wide v0
.end method

.method public getPeekPosition()J
    .registers 5

    .line 164
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->position:J

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBufferPosition:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getPosition()J
    .registers 3

    .line 169
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->position:J

    return-wide v0
.end method

.method public peekFully([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    return-void
.end method

.method public peekFully([BIIZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "offset",
            "length",
            "allowEndOfInput"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 122
    invoke-virtual {p0, p3, p4}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    move-result p4

    if-nez p4, :cond_8

    const/4 p1, 0x0

    return p1

    .line 125
    :cond_8
    iget-object p4, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr v0, p3

    invoke-static {p4, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    return p1
.end method

.method public read([BII)I
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->readFromPeekBuffer([BII)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 67
    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v0

    .line 69
    :cond_10
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    return v0
.end method

.method public readFully([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->readFully([BIIZ)Z

    return-void
.end method

.method public readFully([BIIZ)Z
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "offset",
            "length",
            "allowEndOfInput"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->readFromPeekBuffer([BII)I

    move-result v0

    move v5, v0

    :goto_5
    const/4 v0, -0x1

    if-ge v5, p3, :cond_14

    if-eq v5, v0, :cond_14

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    .line 78
    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v5

    goto :goto_5

    .line 80
    :cond_14
    invoke-direct {p0, v5}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    if-eq v5, v0, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    return p1
.end method

.method public resetPeekPosition()V
    .registers 2

    const/4 v0, 0x0

    .line 159
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->peekBufferPosition:I

    return-void
.end method

.method public skip(I)I
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->skipFromPeekBuffer(I)I

    move-result v0

    if-nez v0, :cond_15

    .line 94
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->scratchSpace:[B

    const/4 v3, 0x0

    array-length v0, v2

    .line 95
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v0

    .line 97
    :cond_15
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    return v0
.end method

.method public skipFully(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, p1, v0}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->skipFully(IZ)Z

    return-void
.end method

.method public skipFully(IZ)Z
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "length",
            "allowEndOfInput"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->skipFromPeekBuffer(I)I

    move-result v0

    move v5, v0

    :goto_5
    const/4 v0, -0x1

    if-ge v5, p1, :cond_1c

    if-eq v5, v0, :cond_1c

    .line 106
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->scratchSpace:[B

    array-length v0, v0

    add-int/2addr v0, v5

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 107
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->scratchSpace:[B

    neg-int v3, v5

    move-object v1, p0

    move v6, p2

    .line 108
    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v5

    goto :goto_5

    .line 110
    :cond_1c
    invoke-direct {p0, v5}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    if-eq v5, v0, :cond_23

    const/4 p1, 0x1

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    :goto_24
    return p1
.end method
