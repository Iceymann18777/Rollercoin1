.class public Lcom/mopub/mobileads/AdTypeTranslator;
.super Ljava/lang/Object;
.source "AdTypeTranslator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;
    }
.end annotation


# static fields
.field public static final BANNER_SUFFIX:Ljava/lang/String; = "_banner"

.field public static final INTERSTITIAL_SUFFIX:Ljava/lang/String; = "_interstitial"

.field private static final NEW_VAST_PLAYER_FLAG:I = 0x2

.field private static final NEW_VAST_PLAYER_SUFFIX:Ljava/lang/String; = "_two"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAdNetworkType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "interstitial"

    .line 103
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object p0, p1

    :cond_9
    if-eqz p0, :cond_c

    goto :goto_e

    :cond_c
    const-string p0, "unknown"

    :goto_e
    return-object p0
.end method

.method public static getCustomEventName(Lcom/mopub/common/AdFormat;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 10

    .line 111
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 112
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 115
    sget-object v0, Lcom/mopub/common/util/ResponseHeader;->VAST_VIDEO_PLAYER_VERSION:Lcom/mopub/common/util/ResponseHeader;

    const/4 v1, 0x1

    invoke-static {p3, v0, v1}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-ne v2, v0, :cond_17

    const-string v0, "_two"

    goto :goto_19

    :cond_17
    const-string v0, ""

    .line 122
    :goto_19
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_118

    goto :goto_75

    :sswitch_26
    const-string v1, "json_video"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    const/4 v1, 0x2

    goto :goto_76

    :sswitch_30
    const-string v1, "interstitial"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    const/4 v1, 0x7

    goto :goto_76

    :sswitch_3a
    const-string v1, "rewarded_playable"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    const/4 v1, 0x4

    goto :goto_76

    :sswitch_44
    const-string v1, "mraid"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    const/4 v1, 0x6

    goto :goto_76

    :sswitch_4e
    const-string v2, "json"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    goto :goto_76

    :sswitch_57
    const-string v1, "html"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    const/4 v1, 0x5

    goto :goto_76

    :sswitch_61
    const-string v1, "custom"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    const/4 v1, 0x0

    goto :goto_76

    :sswitch_6b
    const-string v1, "rewarded_video"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    const/4 v1, 0x3

    goto :goto_76

    :cond_75
    :goto_75
    const/4 v1, -0x1

    :goto_76
    const-string v2, "_banner"

    const-string v3, "_interstitial"

    packed-switch v1, :pswitch_data_13a

    .line 142
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->access$000(Ljava/lang/String;)Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 139
    :pswitch_95
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->access$000(Ljava/lang/String;)Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    move-result-object p0

    .line 140
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 135
    :pswitch_b0
    sget-object p2, Lcom/mopub/common/AdFormat;->INTERSTITIAL:Lcom/mopub/common/AdFormat;

    invoke-virtual {p2, p0}, Lcom/mopub/common/AdFormat;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_cc

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 136
    invoke-static {p0}, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->access$000(Ljava/lang/String;)Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    move-result-object p0

    goto :goto_df

    :cond_cc
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 137
    invoke-static {p0}, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->access$000(Ljava/lang/String;)Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    move-result-object p0

    :goto_df
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 132
    :pswitch_e4
    sget-object p0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->MOPUB_REWARDED_PLAYABLE:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 130
    :pswitch_eb
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->access$000(Ljava/lang/String;)Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 128
    :pswitch_103
    sget-object p0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->MOPUB_VIDEO_NATIVE:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 126
    :pswitch_10a
    sget-object p0, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->MOPUB_NATIVE:Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 124
    :pswitch_111
    sget-object p0, Lcom/mopub/common/util/ResponseHeader;->CUSTOM_EVENT_NAME:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {p3, p0}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_118
    .sparse-switch
        -0x514cfef6 -> :sswitch_6b
        -0x5069748f -> :sswitch_61
        0x3107ab -> :sswitch_57
        0x31ece8 -> :sswitch_4e
        0x6354d77 -> :sswitch_44
        0x1c47fb9f -> :sswitch_3a
        0x240b672c -> :sswitch_30
        0x2f831664 -> :sswitch_26
    .end sparse-switch

    :pswitch_data_13a
    .packed-switch 0x0
        :pswitch_111
        :pswitch_10a
        :pswitch_103
        :pswitch_eb
        :pswitch_e4
        :pswitch_b0
        :pswitch_b0
        :pswitch_95
    .end packed-switch
.end method
