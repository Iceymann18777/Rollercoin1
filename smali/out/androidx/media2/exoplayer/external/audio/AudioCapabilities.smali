.class public final Landroidx/media2/exoplayer/external/audio/AudioCapabilities;
.super Ljava/lang/Object;
.source "AudioCapabilities.java"


# static fields
.field public static final DEFAULT_AUDIO_CAPABILITIES:Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

.field private static final EXTERNAL_SURROUND_SOUND_CAPABILITIES:Landroidx/media2/exoplayer/external/audio/AudioCapabilities;


# instance fields
.field private final maxChannelCount:I

.field private final supportedEncodings:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 46
    new-instance v0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;-><init>([II)V

    sput-object v0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    .line 50
    new-instance v0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_1e

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;-><init>([II)V

    sput-object v0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->EXTERNAL_SURROUND_SOUND_CAPABILITIES:Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "supportedEncodings",
            "maxChannelCount"
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_10

    .line 117
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->supportedEncodings:[I

    .line 118
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    goto :goto_15

    :cond_10
    const/4 p1, 0x0

    new-array p1, p1, [I

    .line 120
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->supportedEncodings:[I

    .line 122
    :goto_15
    iput p2, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->maxChannelCount:I

    return-void
.end method

.method private static deviceMaySetExternalSurroundSoundGlobalSetting()Z
    .registers 2

    .line 167
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_12

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public static getCapabilities(Landroid/content/Context;)Landroidx/media2/exoplayer/external/audio/AudioCapabilities;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 71
    invoke-static {p0, v0}, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;Landroid/content/Intent;)Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    move-result-object p0

    return-object p0
.end method

.method static getCapabilities(Landroid/content/Context;Landroid/content/Intent;)Landroidx/media2/exoplayer/external/audio/AudioCapabilities;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 76
    invoke-static {}, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->deviceMaySetExternalSurroundSoundGlobalSetting()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "external_surround_sound_enabled"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_17

    .line 78
    sget-object p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->EXTERNAL_SURROUND_SOUND_CAPABILITIES:Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    return-object p0

    :cond_17
    if-eqz p1, :cond_36

    const-string p0, "android.media.extra.AUDIO_PLUG_STATE"

    .line 80
    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_22

    goto :goto_36

    .line 83
    :cond_22
    new-instance p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    const-string v0, "android.media.extra.ENCODINGS"

    .line 84
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    const/16 v1, 0x8

    const-string v2, "android.media.extra.MAX_CHANNEL_COUNT"

    .line 85
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;-><init>([II)V

    return-object p0

    .line 81
    :cond_36
    :goto_36
    sget-object p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 147
    :cond_4
    instance-of v1, p1, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 150
    :cond_a
    check-cast p1, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    .line 151
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->supportedEncodings:[I

    iget-object v3, p1, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->supportedEncodings:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->maxChannelCount:I

    iget p1, p1, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->maxChannelCount:I

    if-ne v1, p1, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0
.end method

.method public getMaxChannelCount()I
    .registers 2

    .line 139
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->maxChannelCount:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 157
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->maxChannelCount:I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->supportedEncodings:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public supportsEncoding(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encoding"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->supportedEncodings:[I

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
    .registers 5

    .line 162
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->maxChannelCount:I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->supportedEncodings:[I

    .line 163
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x43

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "AudioCapabilities[maxChannelCount="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", supportedEncodings="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
