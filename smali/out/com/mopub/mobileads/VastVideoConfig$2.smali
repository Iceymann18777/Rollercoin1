.class synthetic Lcom/mopub/mobileads/VastVideoConfig$2;
.super Ljava/lang/Object;
.source "VastVideoConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VastVideoConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$mopub$mobileads$VideoTrackingEvent:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 261
    invoke-static {}, Lcom/mopub/mobileads/VideoTrackingEvent;->values()[Lcom/mopub/mobileads/VideoTrackingEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mopub/mobileads/VastVideoConfig$2;->$SwitchMap$com$mopub$mobileads$VideoTrackingEvent:[I

    :try_start_9
    sget-object v1, Lcom/mopub/mobileads/VideoTrackingEvent;->START:Lcom/mopub/mobileads/VideoTrackingEvent;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VideoTrackingEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/mopub/mobileads/VastVideoConfig$2;->$SwitchMap$com$mopub$mobileads$VideoTrackingEvent:[I

    sget-object v1, Lcom/mopub/mobileads/VideoTrackingEvent;->FIRST_QUARTILE:Lcom/mopub/mobileads/VideoTrackingEvent;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VideoTrackingEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/mopub/mobileads/VastVideoConfig$2;->$SwitchMap$com$mopub$mobileads$VideoTrackingEvent:[I

    sget-object v1, Lcom/mopub/mobileads/VideoTrackingEvent;->MIDPOINT:Lcom/mopub/mobileads/VideoTrackingEvent;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VideoTrackingEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/mopub/mobileads/VastVideoConfig$2;->$SwitchMap$com$mopub$mobileads$VideoTrackingEvent:[I

    sget-object v1, Lcom/mopub/mobileads/VideoTrackingEvent;->THIRD_QUARTILE:Lcom/mopub/mobileads/VideoTrackingEvent;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VideoTrackingEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/mopub/mobileads/VastVideoConfig$2;->$SwitchMap$com$mopub$mobileads$VideoTrackingEvent:[I

    sget-object v1, Lcom/mopub/mobileads/VideoTrackingEvent;->COMPLETE:Lcom/mopub/mobileads/VideoTrackingEvent;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VideoTrackingEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/mopub/mobileads/VastVideoConfig$2;->$SwitchMap$com$mopub$mobileads$VideoTrackingEvent:[I

    sget-object v1, Lcom/mopub/mobileads/VideoTrackingEvent;->COMPANION_AD_VIEW:Lcom/mopub/mobileads/VideoTrackingEvent;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VideoTrackingEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lcom/mopub/mobileads/VastVideoConfig$2;->$SwitchMap$com$mopub$mobileads$VideoTrackingEvent:[I

    sget-object v1, Lcom/mopub/mobileads/VideoTrackingEvent;->COMPANION_AD_CLICK:Lcom/mopub/mobileads/VideoTrackingEvent;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VideoTrackingEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Lcom/mopub/mobileads/VastVideoConfig$2;->$SwitchMap$com$mopub$mobileads$VideoTrackingEvent:[I

    sget-object v1, Lcom/mopub/mobileads/VideoTrackingEvent;->UNKNOWN:Lcom/mopub/mobileads/VideoTrackingEvent;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VideoTrackingEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    return-void
.end method
