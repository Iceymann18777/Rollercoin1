.class final Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;
.super Landroidx/media2/exoplayer/external/audio/BaseAudioProcessor;
.source "ChannelMappingAudioProcessor.java"


# instance fields
.field private active:Z

.field private outputChannels:[I

.field private pendingOutputChannels:[I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/BaseAudioProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(III)Z
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sampleRateHz",
            "channelCount",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->pendingOutputChannels:[I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 57
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->pendingOutputChannels:[I

    iput-object v2, p0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    const/4 v3, 0x0

    if-nez v2, :cond_14

    .line 61
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->active:Z

    return v0

    :cond_14
    const/4 v4, 0x2

    if-ne p3, v4, :cond_44

    if-nez v0, :cond_20

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->setInputFormat(III)Z

    move-result v0

    if-nez v0, :cond_20

    return v3

    .line 71
    :cond_20
    array-length v0, v2

    if-eq p2, v0, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->active:Z

    const/4 v0, 0x0

    .line 72
    :goto_29
    array-length v4, v2

    if-ge v0, v4, :cond_43

    .line 73
    aget v4, v2, v0

    if-ge v4, p2, :cond_3d

    .line 77
    iget-boolean v5, p0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->active:Z

    if-eq v4, v0, :cond_36

    const/4 v4, 0x1

    goto :goto_37

    :cond_36
    const/4 v4, 0x0

    :goto_37
    or-int/2addr v4, v5

    iput-boolean v4, p0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->active:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 75
    :cond_3d
    new-instance v0, Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;

    invoke-direct {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;-><init>(III)V

    throw v0

    :cond_43
    return v1

    .line 65
    :cond_44
    new-instance v0, Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;

    invoke-direct {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;-><init>(III)V

    goto :goto_4b

    :goto_4a
    throw v0

    :goto_4b
    goto :goto_4a
.end method

.method public getOutputChannelCount()I
    .registers 2

    .line 89
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    if-nez v0, :cond_7

    iget v0, p0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->channelCount:I

    goto :goto_8

    :cond_7
    array-length v0, v0

    :goto_8
    return v0
.end method

.method public isActive()Z
    .registers 2

    .line 84
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->active:Z

    return v0
.end method

.method protected onReset()V
    .registers 2

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    .line 113
    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->pendingOutputChannels:[I

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->active:Z

    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputBuffer"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 95
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 96
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int v3, v2, v1

    .line 97
    iget v4, p0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->channelCount:I

    mul-int/lit8 v4, v4, 0x2

    div-int/2addr v3, v4

    .line 98
    array-length v4, v0

    mul-int v3, v3, v4

    mul-int/lit8 v3, v3, 0x2

    .line 99
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    :goto_20
    if-ge v1, v2, :cond_3b

    .line 101
    array-length v4, v0

    const/4 v5, 0x0

    :goto_24
    if-ge v5, v4, :cond_35

    aget v6, v0, v5

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v1

    .line 102
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 104
    :cond_35
    iget v4, p0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->channelCount:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    goto :goto_20

    .line 106
    :cond_3b
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 107
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public setChannelMap([I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputChannels"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->pendingOutputChannels:[I

    return-void
.end method
