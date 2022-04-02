.class public final enum Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;
.super Ljava/lang/Enum;
.source "ExternalViewabilitySession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/ExternalViewabilitySession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

.field public static final enum AD_CLICK_THRU:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

.field public static final enum AD_COMPLETE:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

.field public static final enum AD_IMPRESSED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

.field public static final enum AD_LOADED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

.field public static final enum AD_PAUSED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

.field public static final enum AD_PLAYING:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

.field public static final enum AD_SKIPPED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

.field public static final enum AD_STARTED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

.field public static final enum AD_STOPPED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

.field public static final enum AD_VIDEO_FIRST_QUARTILE:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

.field public static final enum AD_VIDEO_MIDPOINT:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

.field public static final enum AD_VIDEO_THIRD_QUARTILE:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

.field public static final enum RECORD_AD_ERROR:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;


# instance fields
.field private avidMethodName:Ljava/lang/String;

.field private moatEnumName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 49
    new-instance v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    const-string v1, "AD_LOADED"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "recordAdLoadedEvent"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_LOADED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    .line 50
    new-instance v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    const-string v1, "AD_STARTED"

    const/4 v4, 0x1

    const-string v5, "AD_EVT_START"

    const-string v6, "recordAdStartedEvent"

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_STARTED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    .line 51
    new-instance v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    const-string v1, "AD_STOPPED"

    const/4 v5, 0x2

    const-string v6, "AD_EVT_STOPPED"

    const-string v7, "recordAdStoppedEvent"

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_STOPPED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    .line 52
    new-instance v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    const-string v1, "AD_PAUSED"

    const/4 v6, 0x3

    const-string v7, "AD_EVT_PAUSED"

    const-string v8, "recordAdPausedEvent"

    invoke-direct {v0, v1, v6, v7, v8}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_PAUSED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    .line 53
    new-instance v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    const-string v1, "AD_PLAYING"

    const/4 v7, 0x4

    const-string v8, "AD_EVT_PLAYING"

    const-string v9, "recordAdPlayingEvent"

    invoke-direct {v0, v1, v7, v8, v9}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_PLAYING:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    .line 54
    new-instance v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    const-string v1, "AD_SKIPPED"

    const/4 v8, 0x5

    const-string v9, "AD_EVT_SKIPPED"

    const-string v10, "recordAdSkippedEvent"

    invoke-direct {v0, v1, v8, v9, v10}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_SKIPPED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    .line 56
    new-instance v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    const-string v1, "AD_IMPRESSED"

    const/4 v9, 0x6

    const-string v10, "recordAdImpressionEvent"

    invoke-direct {v0, v1, v9, v3, v10}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_IMPRESSED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    .line 57
    new-instance v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    const-string v1, "AD_CLICK_THRU"

    const/4 v10, 0x7

    const-string v11, "recordAdClickThruEvent"

    invoke-direct {v0, v1, v10, v3, v11}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_CLICK_THRU:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    .line 59
    new-instance v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    const-string v1, "AD_VIDEO_FIRST_QUARTILE"

    const/16 v11, 0x8

    const-string v12, "AD_EVT_FIRST_QUARTILE"

    const-string v13, "recordAdVideoFirstQuartileEvent"

    invoke-direct {v0, v1, v11, v12, v13}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_VIDEO_FIRST_QUARTILE:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    .line 60
    new-instance v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    const-string v1, "AD_VIDEO_MIDPOINT"

    const/16 v12, 0x9

    const-string v13, "AD_EVT_MID_POINT"

    const-string v14, "recordAdVideoMidpointEvent"

    invoke-direct {v0, v1, v12, v13, v14}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_VIDEO_MIDPOINT:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    .line 61
    new-instance v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    const-string v1, "AD_VIDEO_THIRD_QUARTILE"

    const/16 v13, 0xa

    const-string v14, "AD_EVT_THIRD_QUARTILE"

    const-string v15, "recordAdVideoThirdQuartileEvent"

    invoke-direct {v0, v1, v13, v14, v15}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_VIDEO_THIRD_QUARTILE:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    .line 62
    new-instance v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    const-string v1, "AD_COMPLETE"

    const/16 v14, 0xb

    const-string v15, "AD_EVT_COMPLETE"

    const-string v13, "recordAdCompleteEvent"

    invoke-direct {v0, v1, v14, v15, v13}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_COMPLETE:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    .line 64
    new-instance v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    const-string v1, "RECORD_AD_ERROR"

    const/16 v13, 0xc

    const-string v15, "recordAdError"

    invoke-direct {v0, v1, v13, v3, v15}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->RECORD_AD_ERROR:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    const/16 v1, 0xd

    new-array v1, v1, [Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    .line 48
    sget-object v3, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_LOADED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    aput-object v3, v1, v2

    sget-object v2, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_STARTED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    aput-object v2, v1, v4

    sget-object v2, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_STOPPED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    aput-object v2, v1, v5

    sget-object v2, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_PAUSED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    aput-object v2, v1, v6

    sget-object v2, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_PLAYING:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    aput-object v2, v1, v7

    sget-object v2, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_SKIPPED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    aput-object v2, v1, v8

    sget-object v2, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_IMPRESSED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    aput-object v2, v1, v9

    sget-object v2, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_CLICK_THRU:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    aput-object v2, v1, v10

    sget-object v2, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_VIDEO_FIRST_QUARTILE:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    aput-object v2, v1, v11

    sget-object v2, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_VIDEO_MIDPOINT:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    aput-object v2, v1, v12

    sget-object v2, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_VIDEO_THIRD_QUARTILE:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_COMPLETE:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    aput-object v2, v1, v14

    aput-object v0, v1, v13

    sput-object v1, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->$VALUES:[Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 82
    iput-object p3, p0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->moatEnumName:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->avidMethodName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;
    .registers 2

    .line 48
    const-class v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    return-object p0
.end method

.method public static values()[Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;
    .registers 1

    .line 48
    sget-object v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->$VALUES:[Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    invoke-virtual {v0}, [Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    return-object v0
.end method


# virtual methods
.method public getAvidMethodName()Ljava/lang/String;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->avidMethodName:Ljava/lang/String;

    return-object v0
.end method

.method public getMoatEnumName()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->moatEnumName:Ljava/lang/String;

    return-object v0
.end method
