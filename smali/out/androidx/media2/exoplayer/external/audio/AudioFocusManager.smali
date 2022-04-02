.class public final Landroidx/media2/exoplayer/external/audio/AudioFocusManager;
.super Ljava/lang/Object;
.source "AudioFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;,
        Landroidx/media2/exoplayer/external/audio/AudioFocusManager$PlayerControl;
    }
.end annotation


# instance fields
.field private audioAttributes:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

.field private audioFocusRequest:Landroid/media/AudioFocusRequest;

.field private audioFocusState:I

.field private final audioManager:Landroid/media/AudioManager;

.field private focusGain:I

.field private final focusListener:Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;

.field private final playerControl:Landroidx/media2/exoplayer/external/audio/AudioFocusManager$PlayerControl;

.field private rebuildAudioFocusRequest:Z

.field private volumeMultiplier:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/audio/AudioFocusManager$PlayerControl;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "playerControl"
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 118
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->volumeMultiplier:F

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    .line 132
    iput-object p2, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->playerControl:Landroidx/media2/exoplayer/external/audio/AudioFocusManager$PlayerControl;

    .line 133
    new-instance p1, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;-><init>(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;Landroidx/media2/exoplayer/external/audio/AudioFocusManager$1;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->focusListener:Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;

    const/4 p1, 0x0

    .line 134
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioFocusState:I

    return-void
.end method

.method private abandonAudioFocus()V
    .registers 2

    const/4 v0, 0x0

    .line 250
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->abandonAudioFocus(Z)V

    return-void
.end method

.method private abandonAudioFocus(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forceAbandon"
        }
    .end annotation

    .line 254
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->focusGain:I

    if-nez v0, :cond_9

    iget v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioFocusState:I

    if-nez v0, :cond_9

    return-void

    .line 258
    :cond_9
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->focusGain:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    iget v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioFocusState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    if-eqz p1, :cond_25

    .line 261
    :cond_15
    sget p1, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_1f

    .line 262
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->abandonAudioFocusV26()V

    goto :goto_22

    .line 264
    :cond_1f
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->abandonAudioFocusDefault()V

    :goto_22
    const/4 p1, 0x0

    .line 266
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioFocusState:I

    :cond_25
    return-void
.end method

.method private abandonAudioFocusDefault()V
    .registers 3

    .line 299
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->focusListener:Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method private abandonAudioFocusV26()V
    .registers 3

    .line 304
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_9

    .line 305
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    :cond_9
    return-void
.end method

.method static synthetic access$100(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;)I
    .registers 1

    .line 46
    iget p0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioFocusState:I

    return p0
.end method

.method static synthetic access$102(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;I)I
    .registers 2

    .line 46
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioFocusState:I

    return p1
.end method

.method static synthetic access$200(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;)Z
    .registers 1

    .line 46
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->willPauseWhenDucked()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;)Landroidx/media2/exoplayer/external/audio/AudioFocusManager$PlayerControl;
    .registers 1

    .line 46
    iget-object p0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->playerControl:Landroidx/media2/exoplayer/external/audio/AudioFocusManager$PlayerControl;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;Z)V
    .registers 2

    .line 46
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->abandonAudioFocus(Z)V

    return-void
.end method

.method static synthetic access$500(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;)F
    .registers 1

    .line 46
    iget p0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->volumeMultiplier:F

    return p0
.end method

.method static synthetic access$502(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;F)F
    .registers 2

    .line 46
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->volumeMultiplier:F

    return p1
.end method

.method private static convertAudioAttributesToFocusGain(Landroidx/media2/exoplayer/external/audio/AudioAttributes;)I
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioAttributes"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 329
    :cond_4
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->usage:I

    const/4 v2, 0x3

    const-string v3, "AudioFocusManager"

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_40

    .line 387
    :pswitch_e
    iget p0, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->usage:I

    const/16 v1, 0x25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unidentified audio usage: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 373
    :pswitch_27
    sget p0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p0, v0, :cond_2f

    const/4 p0, 0x4

    return p0

    :cond_2f
    return v4

    .line 381
    :pswitch_30
    iget p0, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->contentType:I

    if-ne p0, v5, :cond_35

    return v4

    :cond_35
    :pswitch_35
    return v2

    :pswitch_36
    return v0

    :pswitch_37
    return v4

    :pswitch_38
    return v5

    :pswitch_39
    const-string p0, "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default."

    .line 345
    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_37
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_30
        :pswitch_35
        :pswitch_35
        :pswitch_38
        :pswitch_e
        :pswitch_27
    .end packed-switch
.end method

.method private handleIdle(Z)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playWhenReady"
        }
    .end annotation

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, -0x1

    :goto_5
    return p1
.end method

.method private requestAudioFocus()I
    .registers 5

    .line 221
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->focusGain:I

    const/4 v1, 0x1

    if-nez v0, :cond_d

    .line 222
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioFocusState:I

    if-eqz v0, :cond_c

    .line 223
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->abandonAudioFocus(Z)V

    :cond_c
    return v1

    .line 228
    :cond_d
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioFocusState:I

    const/4 v2, 0x0

    if-nez v0, :cond_28

    .line 229
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_1d

    .line 230
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->requestAudioFocusV26()I

    move-result v0

    goto :goto_21

    .line 232
    :cond_1d
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->requestAudioFocusDefault()I

    move-result v0

    :goto_21
    if-ne v0, v1, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    .line 237
    :goto_26
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioFocusState:I

    .line 240
    :cond_28
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioFocusState:I

    if-nez v0, :cond_2e

    const/4 v0, -0x1

    return v0

    :cond_2e
    const/4 v3, 0x2

    if-ne v0, v3, :cond_32

    const/4 v1, 0x0

    :cond_32
    return v1
.end method

.method private requestAudioFocusDefault()I
    .registers 5

    .line 271
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->focusListener:Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioAttributes:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    .line 273
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    iget v2, v2, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->usage:I

    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Util;->getStreamTypeForAudioUsage(I)I

    move-result v2

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->focusGain:I

    .line 271
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    return v0
.end method

.method private requestAudioFocusV26()I
    .registers 4

    .line 279
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->rebuildAudioFocusRequest:Z

    if-eqz v0, :cond_42

    .line 281
    :cond_8
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    if-nez v0, :cond_14

    .line 282
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->focusGain:I

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    goto :goto_1b

    .line 283
    :cond_14
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(Landroid/media/AudioFocusRequest;)V

    .line 285
    :goto_1b
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->willPauseWhenDucked()Z

    move-result v1

    .line 286
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioAttributes:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    .line 288
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->getAudioAttributesV21()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 289
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->focusListener:Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;

    .line 290
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    const/4 v0, 0x0

    .line 293
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->rebuildAudioFocusRequest:Z

    .line 295
    :cond_42
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    return v0
.end method

.method private willPauseWhenDucked()Z
    .registers 3

    .line 310
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioAttributes:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget v0, v0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->contentType:I

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method


# virtual methods
.method public getVolumeMultiplier()F
    .registers 2

    .line 139
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->volumeMultiplier:F

    return v0
.end method

.method public handlePrepare(Z)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playWhenReady"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 180
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->requestAudioFocus()I

    move-result p1

    goto :goto_8

    :cond_7
    const/4 p1, -0x1

    :goto_8
    return p1
.end method

.method public handleSetPlayWhenReady(ZI)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "playWhenReady",
            "playerState"
        }
    .end annotation

    if-nez p1, :cond_7

    .line 193
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->abandonAudioFocus()V

    const/4 p1, -0x1

    return p1

    :cond_7
    const/4 v0, 0x1

    if-ne p2, v0, :cond_f

    .line 197
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->handleIdle(Z)I

    move-result p1

    goto :goto_13

    :cond_f
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->requestAudioFocus()I

    move-result p1

    :goto_13
    return p1
.end method

.method public handleStop()V
    .registers 2

    const/4 v0, 0x1

    .line 202
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->abandonAudioFocus(Z)V

    return-void
.end method

.method public setAudioAttributes(Landroidx/media2/exoplayer/external/audio/AudioAttributes;ZI)I
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "audioAttributes",
            "playWhenReady",
            "playerState"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioAttributes:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2b

    .line 155
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->audioAttributes:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    .line 156
    invoke-static {p1}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->convertAudioAttributesToFocusGain(Landroidx/media2/exoplayer/external/audio/AudioAttributes;)I

    move-result p1

    iput p1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->focusGain:I

    if-eq p1, v1, :cond_18

    if-nez p1, :cond_16

    goto :goto_18

    :cond_16
    const/4 p1, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 p1, 0x1

    :goto_19
    const-string v0, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME."

    .line 158
    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p2, :cond_2b

    const/4 p1, 0x2

    if-eq p3, p1, :cond_26

    const/4 p1, 0x3

    if-ne p3, p1, :cond_2b

    .line 163
    :cond_26
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->requestAudioFocus()I

    move-result p1

    return p1

    :cond_2b
    if-ne p3, v1, :cond_32

    .line 168
    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->handleIdle(Z)I

    move-result p1

    goto :goto_36

    .line 169
    :cond_32
    invoke-virtual {p0, p2}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->handlePrepare(Z)I

    move-result p1

    :goto_36
    return p1
.end method
