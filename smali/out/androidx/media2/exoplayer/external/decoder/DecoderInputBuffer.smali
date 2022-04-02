.class public Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;
.super Landroidx/media2/exoplayer/external/decoder/Buffer;
.source "DecoderInputBuffer.java"


# instance fields
.field private final bufferReplacementMode:I

.field public final cryptoInfo:Landroidx/media2/exoplayer/external/decoder/CryptoInfo;

.field public data:Ljava/nio/ByteBuffer;

.field public timeUs:J


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bufferReplacementMode"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/decoder/Buffer;-><init>()V

    .line 94
    new-instance v0, Landroidx/media2/exoplayer/external/decoder/CryptoInfo;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/decoder/CryptoInfo;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->cryptoInfo:Landroidx/media2/exoplayer/external/decoder/CryptoInfo;

    .line 95
    iput p1, p0, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->bufferReplacementMode:I

    return-void
.end method

.method private createReplacementByteBuffer(I)Ljava/nio/ByteBuffer;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requiredCapacity"
        }
    .end annotation

    .line 167
    iget v0, p0, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->bufferReplacementMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 168
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    :cond_a
    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 170
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 172
    :cond_12
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_18

    const/4 v0, 0x0

    goto :goto_1c

    :cond_18
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 173
    :goto_1c
    new-instance v1, Ljava/lang/IllegalStateException;

    const/16 v2, 0x2c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Buffer too small ("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " < "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static newFlagsOnlyInstance()Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;
    .registers 2

    .line 85
    new-instance v0, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 160
    invoke-super {p0}, Landroidx/media2/exoplayer/external/decoder/Buffer;->clear()V

    .line 161
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_a

    .line 162
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_a
    return-void
.end method

.method public ensureSpaceForWrite(I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "length"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_b

    .line 112
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->createReplacementByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    return-void

    .line 116
    :cond_b
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 117
    iget-object v1, p0, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr p1, v1

    if-lt v0, p1, :cond_19

    return-void

    .line 123
    :cond_19
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->createReplacementByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    if-lez v1, :cond_2f

    .line 126
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 127
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 128
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 131
    :cond_2f
    iput-object p1, p0, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final flip()V
    .registers 2

    .line 155
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public final isEncrypted()Z
    .registers 2

    const/high16 v0, 0x40000000    # 2.0f

    .line 146
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public final isFlagsOnly()Z
    .registers 2

    .line 139
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_a

    iget v0, p0, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->bufferReplacementMode:I

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
