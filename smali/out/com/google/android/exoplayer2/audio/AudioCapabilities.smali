.class public final Lcom/google/android/exoplayer2/audio/AudioCapabilities;
.super Ljava/lang/Object;
.source "AudioCapabilities.java"


# static fields
.field public static final DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

.field private static final EXTERNAL_SURROUND_SOUND_CAPABILITIES:Lcom/google/android/exoplayer2/audio/AudioCapabilities;


# instance fields
.field private final maxChannelCount:I

.field private final supportedEncodings:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 38
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;-><init>([II)V

    sput-object v0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 42
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_1e

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;-><init>([II)V

    sput-object v0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->EXTERNAL_SURROUND_SOUND_CAPABILITIES:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    return-void

    :array_1e
    .array-data 4
        0x2
        0x5
        0x6
    .end array-data
.end method

.method public constructor <init>([II)V
    .registers 4

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_10

    .line 109
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->supportedEncodings:[I

    .line 110
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    goto :goto_15

    :cond_10
    const/4 p1, 0x0

    new-array p1, p1, [I

    .line 112
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->supportedEncodings:[I

    .line 114
    :goto_15
    iput p2, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->maxChannelCount:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 139
    :cond_4
    instance-of v1, p1, Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 142
    :cond_a
    check-cast p1, Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 143
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->supportedEncodings:[I

    iget-object v3, p1, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->supportedEncodings:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->maxChannelCount:I

    iget p1, p1, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->maxChannelCount:I

    if-ne v1, p1, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0
.end method

.method public getMaxChannelCount()I
    .registers 2

    .line 131
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->maxChannelCount:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 149
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->maxChannelCount:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->supportedEncodings:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public supportsEncoding(I)Z
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->supportedEncodings:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-ltz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioCapabilities[maxChannelCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->maxChannelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", supportedEncodings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->supportedEncodings:[I

    .line 155
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
