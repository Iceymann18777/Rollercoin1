.class synthetic Lcom/mopub/common/AvidViewabilitySession$1;
.super Ljava/lang/Object;
.source "AvidViewabilitySession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/AvidViewabilitySession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$mopub$common$ExternalViewabilitySession$VideoEvent:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 363
    invoke-static {}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->values()[Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mopub/common/AvidViewabilitySession$1;->$SwitchMap$com$mopub$common$ExternalViewabilitySession$VideoEvent:[I

    :try_start_9
    sget-object v1, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_LOADED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    invoke-virtual {v1}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/mopub/common/AvidViewabilitySession$1;->$SwitchMap$com$mopub$common$ExternalViewabilitySession$VideoEvent:[I

    sget-object v1, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_STARTED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    invoke-virtual {v1}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/mopub/common/AvidViewabilitySession$1;->$SwitchMap$com$mopub$common$ExternalViewabilitySession$VideoEvent:[I

    sget-object v1, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_STOPPED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    invoke-virtual {v1}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/mopub/common/AvidViewabilitySession$1;->$SwitchMap$com$mopub$common$ExternalViewabilitySession$VideoEvent:[I

    sget-object v1, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_PAUSED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    invoke-virtual {v1}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/mopub/common/AvidViewabilitySession$1;->$SwitchMap$com$mopub$common$ExternalViewabilitySession$VideoEvent:[I

    sget-object v1, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_PLAYING:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    invoke-virtual {v1}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/mopub/common/AvidViewabilitySession$1;->$SwitchMap$com$mopub$common$ExternalViewabilitySession$VideoEvent:[I

    sget-object v1, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_SKIPPED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    invoke-virtual {v1}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lcom/mopub/common/AvidViewabilitySession$1;->$SwitchMap$com$mopub$common$ExternalViewabilitySession$VideoEvent:[I

    sget-object v1, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_IMPRESSED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    invoke-virtual {v1}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Lcom/mopub/common/AvidViewabilitySession$1;->$SwitchMap$com$mopub$common$ExternalViewabilitySession$VideoEvent:[I

    sget-object v1, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_CLICK_THRU:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    invoke-virtual {v1}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Lcom/mopub/common/AvidViewabilitySession$1;->$SwitchMap$com$mopub$common$ExternalViewabilitySession$VideoEvent:[I

    sget-object v1, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_VIDEO_FIRST_QUARTILE:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    invoke-virtual {v1}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v0, Lcom/mopub/common/AvidViewabilitySession$1;->$SwitchMap$com$mopub$common$ExternalViewabilitySession$VideoEvent:[I

    sget-object v1, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_VIDEO_MIDPOINT:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    invoke-virtual {v1}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v0, Lcom/mopub/common/AvidViewabilitySession$1;->$SwitchMap$com$mopub$common$ExternalViewabilitySession$VideoEvent:[I

    sget-object v1, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_VIDEO_THIRD_QUARTILE:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    invoke-virtual {v1}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    :catch_84
    :try_start_84
    sget-object v0, Lcom/mopub/common/AvidViewabilitySession$1;->$SwitchMap$com$mopub$common$ExternalViewabilitySession$VideoEvent:[I

    sget-object v1, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_COMPLETE:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    invoke-virtual {v1}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_90

    :catch_90
    :try_start_90
    sget-object v0, Lcom/mopub/common/AvidViewabilitySession$1;->$SwitchMap$com$mopub$common$ExternalViewabilitySession$VideoEvent:[I

    sget-object v1, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->RECORD_AD_ERROR:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    invoke-virtual {v1}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9c} :catch_9c

    :catch_9c
    return-void
.end method
