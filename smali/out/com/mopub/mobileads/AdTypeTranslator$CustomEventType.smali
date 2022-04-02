.class public final enum Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;
.super Ljava/lang/Enum;
.source "AdTypeTranslator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/AdTypeTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CustomEventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

.field public static final enum GOOGLE_PLAY_SERVICES_BANNER:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

.field public static final enum GOOGLE_PLAY_SERVICES_INTERSTITIAL:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

.field public static final enum HTML_BANNER:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

.field public static final enum HTML_INTERSTITIAL:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

.field public static final enum MOPUB_NATIVE:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

.field public static final enum MOPUB_REWARDED_PLAYABLE:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

.field public static final enum MOPUB_REWARDED_VIDEO:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

.field public static final enum MOPUB_REWARDED_VIDEO_TWO:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

.field public static final enum MOPUB_VIDEO_NATIVE:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

.field public static final enum MRAID_BANNER:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

.field public static final enum MRAID_INTERSTITIAL:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

.field public static final enum UNSPECIFIED:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

.field public static final enum VAST_VIDEO_INTERSTITIAL:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

.field public static final enum VAST_VIDEO_INTERSTITIAL_TWO:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;


# instance fields
.field private final mClassName:Ljava/lang/String;

.field private final mIsMoPubSpecific:Z

.field private final mKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 23
    new-instance v6, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    const-string v1, "GOOGLE_PLAY_SERVICES_BANNER"

    const/4 v2, 0x0

    const-string v3, "admob_native_banner"

    const-string v4, "com.mopub.mobileads.GooglePlayServicesBanner"

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v6, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->GOOGLE_PLAY_SERVICES_BANNER:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    .line 25
    new-instance v0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    const-string v8, "GOOGLE_PLAY_SERVICES_INTERSTITIAL"

    const/4 v9, 0x1

    const-string v10, "admob_full_interstitial"

    const-string v11, "com.mopub.mobileads.GooglePlayServicesInterstitial"

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->GOOGLE_PLAY_SERVICES_INTERSTITIAL:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    .line 29
    new-instance v0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    const-string v2, "MRAID_BANNER"

    const/4 v3, 0x2

    const-string v4, "mraid_banner"

    const-string v5, "com.mopub.mraid.MraidBanner"

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->MRAID_BANNER:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    .line 31
    new-instance v0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    const-string v8, "MRAID_INTERSTITIAL"

    const/4 v9, 0x3

    const-string v10, "mraid_interstitial"

    const-string v11, "com.mopub.mraid.MraidInterstitial"

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->MRAID_INTERSTITIAL:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    .line 33
    new-instance v0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    const-string v2, "HTML_BANNER"

    const/4 v3, 0x4

    const-string v4, "html_banner"

    const-string v5, "com.mopub.mobileads.HtmlBanner"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->HTML_BANNER:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    .line 35
    new-instance v0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    const-string v8, "HTML_INTERSTITIAL"

    const/4 v9, 0x5

    const-string v10, "html_interstitial"

    const-string v11, "com.mopub.mobileads.HtmlInterstitial"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->HTML_INTERSTITIAL:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    .line 37
    new-instance v0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    const-string v2, "VAST_VIDEO_INTERSTITIAL"

    const/4 v3, 0x6

    const-string v4, "vast_interstitial"

    const-string v5, "com.mopub.mobileads.VastVideoInterstitial"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->VAST_VIDEO_INTERSTITIAL:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    .line 39
    new-instance v0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    const-string v8, "VAST_VIDEO_INTERSTITIAL_TWO"

    const/4 v9, 0x7

    const-string v10, "vast_interstitial_two"

    const-string v11, "com.mopub.mobileads.VastVideoInterstitialTwo"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->VAST_VIDEO_INTERSTITIAL_TWO:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    .line 41
    new-instance v0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    const-string v2, "MOPUB_NATIVE"

    const/16 v3, 0x8

    const-string v4, "mopub_native"

    const-string v5, "com.mopub.nativeads.MoPubCustomEventNative"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->MOPUB_NATIVE:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    .line 43
    new-instance v0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    const-string v8, "MOPUB_VIDEO_NATIVE"

    const/16 v9, 0x9

    const-string v10, "mopub_video_native"

    const-string v11, "com.mopub.nativeads.MoPubCustomEventVideoNative"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->MOPUB_VIDEO_NATIVE:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    .line 45
    new-instance v0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    const-string v2, "MOPUB_REWARDED_VIDEO"

    const/16 v3, 0xa

    const-string v4, "rewarded_video"

    const-string v5, "com.mopub.mobileads.MoPubRewardedVideo"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->MOPUB_REWARDED_VIDEO:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    .line 47
    new-instance v0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    const-string v8, "MOPUB_REWARDED_VIDEO_TWO"

    const/16 v9, 0xb

    const-string v10, "rewarded_video_two"

    const-string v11, "com.mopub.mobileads.MoPubRewardedVideoTwo"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->MOPUB_REWARDED_VIDEO_TWO:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    .line 49
    new-instance v0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    const-string v2, "MOPUB_REWARDED_PLAYABLE"

    const/16 v3, 0xc

    const-string v4, "rewarded_playable"

    const-string v5, "com.mopub.mobileads.MoPubRewardedPlayable"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->MOPUB_REWARDED_PLAYABLE:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    .line 52
    new-instance v0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    const-string v8, "UNSPECIFIED"

    const/16 v9, 0xd

    const-string v10, ""

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->UNSPECIFIED:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    const/16 v1, 0xe

    new-array v1, v1, [Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    .line 21
    sget-object v2, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->GOOGLE_PLAY_SERVICES_BANNER:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->GOOGLE_PLAY_SERVICES_INTERSTITIAL:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->MRAID_BANNER:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->MRAID_INTERSTITIAL:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->HTML_BANNER:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->HTML_INTERSTITIAL:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->VAST_VIDEO_INTERSTITIAL:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->VAST_VIDEO_INTERSTITIAL_TWO:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->MOPUB_NATIVE:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->MOPUB_VIDEO_NATIVE:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->MOPUB_REWARDED_VIDEO:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->MOPUB_REWARDED_VIDEO_TWO:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->MOPUB_REWARDED_PLAYABLE:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const/16 v2, 0xd

    aput-object v0, v1, v2

    sput-object v1, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->$VALUES:[Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput-object p3, p0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->mKey:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->mClassName:Ljava/lang/String;

    .line 63
    iput-boolean p5, p0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->mIsMoPubSpecific:Z

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;
    .registers 1

    .line 21
    invoke-static {p0}, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->fromString(Ljava/lang/String;)Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    move-result-object p0

    return-object p0
.end method

.method private static fromClassName(Ljava/lang/String;)Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;
    .registers 6

    .line 77
    invoke-static {}, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->values()[Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 78
    iget-object v4, v3, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->mClassName:Ljava/lang/String;

    if-eqz v4, :cond_15

    .line 79
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    return-object v3

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 84
    :cond_18
    sget-object p0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->UNSPECIFIED:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    return-object p0
.end method

.method private static fromString(Ljava/lang/String;)Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;
    .registers 6

    .line 67
    invoke-static {}, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->values()[Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 68
    iget-object v4, v3, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->mKey:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    return-object v3

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 73
    :cond_16
    sget-object p0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->UNSPECIFIED:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    return-object p0
.end method

.method public static isMoPubSpecific(Ljava/lang/String;)Z
    .registers 1

    .line 93
    invoke-static {p0}, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->fromClassName(Ljava/lang/String;)Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    move-result-object p0

    iget-boolean p0, p0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->mIsMoPubSpecific:Z

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;
    .registers 2

    .line 21
    const-class v0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    return-object p0
.end method

.method public static values()[Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;
    .registers 1

    .line 21
    sget-object v0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->$VALUES:[Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    invoke-virtual {v0}, [Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->mClassName:Ljava/lang/String;

    return-object v0
.end method
