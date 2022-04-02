.class public abstract Lcom/appnext/core/Ad;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ORIENTATION_AUTO:Ljava/lang/String; = "automatic"

.field public static final ORIENTATION_DEFAULT:Ljava/lang/String; = "not_set"

.field public static final ORIENTATION_LANDSCAPE:Ljava/lang/String; = "landscape"

.field public static final ORIENTATION_PORTRAIT:Ljava/lang/String; = "portrait"

.field protected static fq:Z = false


# instance fields
.field private adOpenedCallback:Lcom/appnext/core/callbacks/OnAdOpened;

.field private adRequest:Lcom/appnext/core/c;

.field private cat:Ljava/lang/String;

.field private closeCallback:Lcom/appnext/core/callbacks/OnAdClosed;

.field private cnt:I

.field protected context:Landroid/content/Context;

.field private maxVideoLength:I

.field private minVideoLength:I

.field private mute:Z

.field private onAdClicked:Lcom/appnext/core/callbacks/OnAdClicked;

.field private onAdError:Lcom/appnext/core/callbacks/OnAdError;

.field private onAdLoaded:Lcom/appnext/core/callbacks/OnAdLoaded;

.field private orientation:Ljava/lang/String;

.field private pbk:Ljava/lang/String;

.field private placementID:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field protected setMute:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 36
    iput-object v0, p0, Lcom/appnext/core/Ad;->placementID:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/appnext/core/Ad;->cat:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/appnext/core/Ad;->pbk:Ljava/lang/String;

    const/16 v1, 0x32

    .line 39
    iput v1, p0, Lcom/appnext/core/Ad;->cnt:I

    const/4 v1, 0x0

    .line 40
    iput v1, p0, Lcom/appnext/core/Ad;->maxVideoLength:I

    .line 41
    iput v1, p0, Lcom/appnext/core/Ad;->minVideoLength:I

    .line 42
    iput-boolean v1, p0, Lcom/appnext/core/Ad;->setMute:Z

    .line 43
    iput-boolean v1, p0, Lcom/appnext/core/Ad;->mute:Z

    const-string v1, "not_set"

    .line 45
    iput-object v1, p0, Lcom/appnext/core/Ad;->orientation:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/appnext/core/Ad;->sessionId:Ljava/lang/String;

    if-eqz p1, :cond_6f

    if-eqz p2, :cond_67

    .line 59
    iput-object p1, p0, Lcom/appnext/core/Ad;->context:Landroid/content/Context;

    .line 60
    invoke-virtual {p0, p2}, Lcom/appnext/core/Ad;->setPlacementID(Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/appnext/core/j;->bj()Lcom/appnext/core/j;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/appnext/core/j;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/appnext/core/f;->bd()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_49

    .line 65
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/appnext/core/Ad$1;

    invoke-direct {v0, p0, p1}, Lcom/appnext/core/Ad$1;-><init>(Lcom/appnext/core/Ad;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    :cond_49
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/appnext/core/Ad$2;

    invoke-direct {v0, p0, p1}, Lcom/appnext/core/Ad$2;-><init>(Lcom/appnext/core/Ad;Landroid/content/Context;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 84
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 86
    invoke-static {}, Lcom/appnext/core/a/b;->bp()Lcom/appnext/core/a/b;

    .line 87
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/appnext/core/Ad$3;

    invoke-direct {v0, p0, p1}, Lcom/appnext/core/Ad$3;-><init>(Lcom/appnext/core/Ad;Landroid/content/Context;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 92
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void

    .line 57
    :cond_67
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "placementID cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_6f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(Lcom/appnext/core/Ad;)V
    .registers 4

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 36
    iput-object v0, p0, Lcom/appnext/core/Ad;->placementID:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/appnext/core/Ad;->cat:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/appnext/core/Ad;->pbk:Ljava/lang/String;

    const/16 v1, 0x32

    .line 39
    iput v1, p0, Lcom/appnext/core/Ad;->cnt:I

    const/4 v1, 0x0

    .line 40
    iput v1, p0, Lcom/appnext/core/Ad;->maxVideoLength:I

    .line 41
    iput v1, p0, Lcom/appnext/core/Ad;->minVideoLength:I

    .line 42
    iput-boolean v1, p0, Lcom/appnext/core/Ad;->setMute:Z

    .line 43
    iput-boolean v1, p0, Lcom/appnext/core/Ad;->mute:Z

    const-string v1, "not_set"

    .line 45
    iput-object v1, p0, Lcom/appnext/core/Ad;->orientation:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/appnext/core/Ad;->sessionId:Ljava/lang/String;

    .line 96
    iget-object v0, p1, Lcom/appnext/core/Ad;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/appnext/core/Ad;->context:Landroid/content/Context;

    .line 97
    invoke-virtual {p1}, Lcom/appnext/core/Ad;->getPlacementID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appnext/core/Ad;->setPlacementID(Ljava/lang/String;)V

    .line 98
    iget-object v0, p1, Lcom/appnext/core/Ad;->cat:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/appnext/core/Ad;->setCategories(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Lcom/appnext/core/Ad;->getPostback()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appnext/core/Ad;->setPostback(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Lcom/appnext/core/Ad;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appnext/core/Ad;->setCount(I)V

    .line 101
    invoke-virtual {p1}, Lcom/appnext/core/Ad;->getMinVideoLength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appnext/core/Ad;->setMinVideoLength(I)V

    .line 102
    invoke-virtual {p1}, Lcom/appnext/core/Ad;->getMaxVideoLength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appnext/core/Ad;->setMaxVideoLength(I)V

    .line 104
    invoke-virtual {p1}, Lcom/appnext/core/Ad;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appnext/core/Ad;->setSessionId(Ljava/lang/String;)V

    .line 106
    iget-object v0, p1, Lcom/appnext/core/Ad;->onAdClicked:Lcom/appnext/core/callbacks/OnAdClicked;

    iput-object v0, p0, Lcom/appnext/core/Ad;->onAdClicked:Lcom/appnext/core/callbacks/OnAdClicked;

    .line 107
    iget-object v0, p1, Lcom/appnext/core/Ad;->onAdError:Lcom/appnext/core/callbacks/OnAdError;

    iput-object v0, p0, Lcom/appnext/core/Ad;->onAdError:Lcom/appnext/core/callbacks/OnAdError;

    .line 108
    iget-object v0, p1, Lcom/appnext/core/Ad;->onAdLoaded:Lcom/appnext/core/callbacks/OnAdLoaded;

    iput-object v0, p0, Lcom/appnext/core/Ad;->onAdLoaded:Lcom/appnext/core/callbacks/OnAdLoaded;

    .line 109
    iget-object v0, p1, Lcom/appnext/core/Ad;->closeCallback:Lcom/appnext/core/callbacks/OnAdClosed;

    iput-object v0, p0, Lcom/appnext/core/Ad;->closeCallback:Lcom/appnext/core/callbacks/OnAdClosed;

    .line 110
    iget-object p1, p1, Lcom/appnext/core/Ad;->adOpenedCallback:Lcom/appnext/core/callbacks/OnAdOpened;

    iput-object p1, p0, Lcom/appnext/core/Ad;->adOpenedCallback:Lcom/appnext/core/callbacks/OnAdOpened;

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    const/4 v0, 0x0

    .line 313
    iput-object v0, p0, Lcom/appnext/core/Ad;->context:Landroid/content/Context;

    .line 314
    iput-object v0, p0, Lcom/appnext/core/Ad;->onAdClicked:Lcom/appnext/core/callbacks/OnAdClicked;

    .line 315
    iput-object v0, p0, Lcom/appnext/core/Ad;->onAdError:Lcom/appnext/core/callbacks/OnAdError;

    .line 316
    iput-object v0, p0, Lcom/appnext/core/Ad;->onAdLoaded:Lcom/appnext/core/callbacks/OnAdLoaded;

    .line 317
    iput-object v0, p0, Lcom/appnext/core/Ad;->closeCallback:Lcom/appnext/core/callbacks/OnAdClosed;

    .line 318
    iput-object v0, p0, Lcom/appnext/core/Ad;->adOpenedCallback:Lcom/appnext/core/callbacks/OnAdOpened;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 288
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    return v1

    .line 289
    :cond_1d
    instance-of v2, p1, Lcom/appnext/core/Ad;

    if-eqz v2, :cond_6d

    .line 290
    check-cast p1, Lcom/appnext/core/Ad;

    invoke-virtual {p1}, Lcom/appnext/core/Ad;->getPlacementID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/appnext/core/Ad;->getPlacementID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 291
    invoke-virtual {p1}, Lcom/appnext/core/Ad;->getCategories()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/appnext/core/Ad;->getCategories()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 292
    invoke-virtual {p1}, Lcom/appnext/core/Ad;->getPostback()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/appnext/core/Ad;->getPostback()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 293
    invoke-virtual {p1}, Lcom/appnext/core/Ad;->getMinVideoLength()I

    move-result v2

    invoke-virtual {p0}, Lcom/appnext/core/Ad;->getMinVideoLength()I

    move-result v3

    if-ne v2, v3, :cond_6c

    .line 294
    invoke-virtual {p1}, Lcom/appnext/core/Ad;->getMaxVideoLength()I

    move-result v2

    invoke-virtual {p0}, Lcom/appnext/core/Ad;->getMaxVideoLength()I

    move-result v3

    if-ne v2, v3, :cond_6c

    .line 295
    invoke-virtual {p1}, Lcom/appnext/core/Ad;->getCount()I

    move-result p1

    invoke-virtual {p0}, Lcom/appnext/core/Ad;->getCount()I

    move-result v2

    if-ne p1, v2, :cond_6c

    return v0

    :cond_6c
    return v1

    .line 297
    :cond_6d
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract getAUID()Ljava/lang/String;
.end method

.method protected getAdRequest()Lcom/appnext/core/c;
    .registers 2

    .line 269
    iget-object v0, p0, Lcom/appnext/core/Ad;->adRequest:Lcom/appnext/core/c;

    return-object v0
.end method

.method public getCategories()Ljava/lang/String;
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/appnext/core/Ad;->cat:Ljava/lang/String;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .registers 2

    .line 263
    iget-object v0, p0, Lcom/appnext/core/Ad;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected getCount()I
    .registers 2

    .line 215
    iget v0, p0, Lcom/appnext/core/Ad;->cnt:I

    return v0
.end method

.method public abstract getECPM(Lcom/appnext/core/callbacks/OnECPMLoaded;)V
.end method

.method public getMaxVideoLength()I
    .registers 2

    .line 237
    iget v0, p0, Lcom/appnext/core/Ad;->maxVideoLength:I

    return v0
.end method

.method public getMinVideoLength()I
    .registers 2

    .line 250
    iget v0, p0, Lcom/appnext/core/Ad;->minVideoLength:I

    return v0
.end method

.method public getMute()Z
    .registers 2

    .line 211
    iget-boolean v0, p0, Lcom/appnext/core/Ad;->mute:Z

    return v0
.end method

.method public getOnAdClickedCallback()Lcom/appnext/core/callbacks/OnAdClicked;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/appnext/core/Ad;->onAdClicked:Lcom/appnext/core/callbacks/OnAdClicked;

    return-object v0
.end method

.method public getOnAdClosedCallback()Lcom/appnext/core/callbacks/OnAdClosed;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/appnext/core/Ad;->closeCallback:Lcom/appnext/core/callbacks/OnAdClosed;

    return-object v0
.end method

.method public getOnAdErrorCallback()Lcom/appnext/core/callbacks/OnAdError;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/appnext/core/Ad;->onAdError:Lcom/appnext/core/callbacks/OnAdError;

    return-object v0
.end method

.method public getOnAdLoadedCallback()Lcom/appnext/core/callbacks/OnAdLoaded;
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/appnext/core/Ad;->onAdLoaded:Lcom/appnext/core/callbacks/OnAdLoaded;

    return-object v0
.end method

.method public getOnAdOpenedCallback()Lcom/appnext/core/callbacks/OnAdOpened;
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/appnext/core/Ad;->adOpenedCallback:Lcom/appnext/core/callbacks/OnAdOpened;

    return-object v0
.end method

.method public getOrientation()Ljava/lang/String;
    .registers 2

    .line 223
    iget-object v0, p0, Lcom/appnext/core/Ad;->orientation:Ljava/lang/String;

    return-object v0
.end method

.method public getPlacementID()Ljava/lang/String;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/appnext/core/Ad;->placementID:Ljava/lang/String;

    return-object v0
.end method

.method public getPostback()Ljava/lang/String;
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/appnext/core/Ad;->pbk:Ljava/lang/String;

    return-object v0
.end method

.method protected getSessionId()Ljava/lang/String;
    .registers 2

    .line 277
    iget-object v0, p0, Lcom/appnext/core/Ad;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getTID()Ljava/lang/String;
.end method

.method public abstract getVID()Ljava/lang/String;
.end method

.method public hashCode()I
    .registers 3

    .line 303
    invoke-virtual {p0}, Lcom/appnext/core/Ad;->getPlacementID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 304
    invoke-virtual {p0}, Lcom/appnext/core/Ad;->getCategories()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 305
    invoke-virtual {p0}, Lcom/appnext/core/Ad;->getPostback()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 306
    invoke-virtual {p0}, Lcom/appnext/core/Ad;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 307
    invoke-virtual {p0}, Lcom/appnext/core/Ad;->getMinVideoLength()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 308
    invoke-virtual {p0}, Lcom/appnext/core/Ad;->getMaxVideoLength()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public abstract isAdLoaded()Z
.end method

.method public abstract loadAd()V
.end method

.method protected setAdRequest(Lcom/appnext/core/c;)V
    .registers 2

    .line 273
    iput-object p1, p0, Lcom/appnext/core/Ad;->adRequest:Lcom/appnext/core/c;

    return-void
.end method

.method public setCategories(Ljava/lang/String;)V
    .registers 5

    const-string v0, "UTF-8"

    const-string v1, ""

    if-nez p1, :cond_7

    move-object p1, v1

    .line 177
    :cond_7
    :try_start_7
    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 178
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_15
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_15} :catch_16

    :cond_15
    move-object v1, p1

    .line 182
    :catch_16
    iput-object v1, p0, Lcom/appnext/core/Ad;->cat:Ljava/lang/String;

    return-void
.end method

.method protected setCount(I)V
    .registers 2

    .line 219
    iput p1, p0, Lcom/appnext/core/Ad;->cnt:I

    return-void
.end method

.method public setMaxVideoLength(I)V
    .registers 3

    if-ltz p1, :cond_1c

    if-lez p1, :cond_19

    .line 243
    invoke-virtual {p0}, Lcom/appnext/core/Ad;->getMinVideoLength()I

    move-result v0

    if-lez v0, :cond_19

    invoke-virtual {p0}, Lcom/appnext/core/Ad;->getMinVideoLength()I

    move-result v0

    if-lt p1, v0, :cond_11

    goto :goto_19

    .line 244
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Max Length cannot be lower than min length"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 246
    :cond_19
    :goto_19
    iput p1, p0, Lcom/appnext/core/Ad;->maxVideoLength:I

    return-void

    .line 242
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Max Length must be higher than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMinVideoLength(I)V
    .registers 3

    if-ltz p1, :cond_1c

    if-lez p1, :cond_19

    .line 256
    invoke-virtual {p0}, Lcom/appnext/core/Ad;->getMaxVideoLength()I

    move-result v0

    if-lez v0, :cond_19

    invoke-virtual {p0}, Lcom/appnext/core/Ad;->getMaxVideoLength()I

    move-result v0

    if-gt p1, v0, :cond_11

    goto :goto_19

    .line 257
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Min Length cannot be higher than max length"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 259
    :cond_19
    :goto_19
    iput p1, p0, Lcom/appnext/core/Ad;->minVideoLength:I

    return-void

    .line 255
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Min Length must be higher than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMute(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Lcom/appnext/core/Ad;->setMute:Z

    .line 199
    iput-boolean p1, p0, Lcom/appnext/core/Ad;->mute:Z

    return-void
.end method

.method public setOnAdClickedCallback(Lcom/appnext/core/callbacks/OnAdClicked;)V
    .registers 2

    .line 150
    iput-object p1, p0, Lcom/appnext/core/Ad;->onAdClicked:Lcom/appnext/core/callbacks/OnAdClicked;

    return-void
.end method

.method public setOnAdClosedCallback(Lcom/appnext/core/callbacks/OnAdClosed;)V
    .registers 2

    .line 162
    iput-object p1, p0, Lcom/appnext/core/Ad;->closeCallback:Lcom/appnext/core/callbacks/OnAdClosed;

    return-void
.end method

.method public setOnAdErrorCallback(Lcom/appnext/core/callbacks/OnAdError;)V
    .registers 2

    .line 154
    iput-object p1, p0, Lcom/appnext/core/Ad;->onAdError:Lcom/appnext/core/callbacks/OnAdError;

    return-void
.end method

.method public setOnAdLoadedCallback(Lcom/appnext/core/callbacks/OnAdLoaded;)V
    .registers 2

    .line 158
    iput-object p1, p0, Lcom/appnext/core/Ad;->onAdLoaded:Lcom/appnext/core/callbacks/OnAdLoaded;

    return-void
.end method

.method public setOnAdOpenedCallback(Lcom/appnext/core/callbacks/OnAdOpened;)V
    .registers 2

    .line 170
    iput-object p1, p0, Lcom/appnext/core/Ad;->adOpenedCallback:Lcom/appnext/core/callbacks/OnAdOpened;

    return-void
.end method

.method public setOrientation(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_2e

    const-string v0, "automatic"

    .line 230
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "not_set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "landscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "portrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_2b

    .line 233
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong orientation type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 231
    :cond_2b
    :goto_2b
    iput-object p1, p0, Lcom/appnext/core/Ad;->orientation:Ljava/lang/String;

    return-void

    .line 228
    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "orientation type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setPlacementID(Ljava/lang/String;)V
    .registers 2

    .line 130
    iput-object p1, p0, Lcom/appnext/core/Ad;->placementID:Ljava/lang/String;

    return-void
.end method

.method public setPostback(Ljava/lang/String;)V
    .registers 5

    const-string v0, "UTF-8"

    const-string v1, ""

    if-nez p1, :cond_7

    move-object p1, v1

    .line 189
    :cond_7
    :try_start_7
    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 190
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_15
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_15} :catch_16

    :cond_15
    move-object v1, p1

    .line 194
    :catch_16
    iput-object v1, p0, Lcom/appnext/core/Ad;->pbk:Ljava/lang/String;

    return-void
.end method

.method protected setSessionId(Ljava/lang/String;)V
    .registers 2

    .line 281
    iput-object p1, p0, Lcom/appnext/core/Ad;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public abstract showAd()V
.end method
