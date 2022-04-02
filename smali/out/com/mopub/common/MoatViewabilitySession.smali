.class Lcom/mopub/common/MoatViewabilitySession;
.super Ljava/lang/Object;
.source "MoatViewabilitySession.java"

# interfaces
.implements Lcom/mopub/common/ExternalViewabilitySession;


# static fields
.field private static final DEFAULT_PARTNER_CODE:Ljava/lang/String; = "mopubinapphtmvideo468906546585"

.field private static final MOAT_AD_EVENT_PATH:Ljava/lang/String; = "com.moat.analytics.mobile.mpub.MoatAdEvent"

.field private static final MOAT_AD_EVENT_TYPE_PATH:Ljava/lang/String; = "com.moat.analytics.mobile.mpub.MoatAdEventType"

.field private static final MOAT_ANALYTICS_PATH:Ljava/lang/String; = "com.moat.analytics.mobile.mpub.MoatAnalytics"

.field private static final MOAT_FACTORY_PATH:Ljava/lang/String; = "com.moat.analytics.mobile.mpub.MoatFactory"

.field private static final MOAT_KEY:Ljava/lang/String; = "moat"

.field private static final MOAT_OPTIONS_PATH:Ljava/lang/String; = "com.moat.analytics.mobile.mpub.MoatOptions"

.field private static final MOAT_PLUGIN_PATH:Ljava/lang/String; = "com.moat.analytics.mobile.mpub.MoatPlugin"

.field private static final MOAT_REACTIVE_VIDEO_TRACKER_PLUGIN_PATH:Ljava/lang/String; = "com.moat.analytics.mobile.mpub.ReactiveVideoTrackerPlugin"

.field private static final MOAT_VAST_IDS_KEY:Ljava/lang/String; = "zMoatVASTIDs"

.field private static final PARTNER_CODE_KEY:Ljava/lang/String; = "partnerCode"

.field private static final QUERY_PARAM_MAPPING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsVendorDisabled:Z = false

.field private static sIsViewabilityEnabledViaReflection:Ljava/lang/Boolean; = null

.field private static sWasInitialized:Z = false


# instance fields
.field private mAdIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMoatVideoTracker:Ljava/lang/Object;

.field private mMoatWebAdTracker:Ljava/lang/Object;

.field private mWasVideoPrepared:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mopub/common/MoatViewabilitySession;->QUERY_PARAM_MAPPING:Ljava/util/Map;

    const-string v1, "moatClientLevel1"

    const-string v2, "level1"

    .line 49
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/mopub/common/MoatViewabilitySession;->QUERY_PARAM_MAPPING:Ljava/util/Map;

    const-string v1, "moatClientLevel2"

    const-string v2, "level2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/mopub/common/MoatViewabilitySession;->QUERY_PARAM_MAPPING:Ljava/util/Map;

    const-string v1, "moatClientLevel3"

    const-string v2, "level3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/mopub/common/MoatViewabilitySession;->QUERY_PARAM_MAPPING:Ljava/util/Map;

    const-string v1, "moatClientLevel4"

    const-string v2, "level4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/mopub/common/MoatViewabilitySession;->QUERY_PARAM_MAPPING:Ljava/util/Map;

    const-string v1, "moatClientSlicer1"

    const-string v2, "slicer1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/mopub/common/MoatViewabilitySession;->QUERY_PARAM_MAPPING:Ljava/util/Map;

    const-string v1, "moatClientSlicer2"

    const-string v2, "slicer2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/common/MoatViewabilitySession;->mAdIds:Ljava/util/Map;

    return-void
.end method

.method static disable()V
    .registers 1

    const/4 v0, 0x1

    .line 67
    sput-boolean v0, Lcom/mopub/common/MoatViewabilitySession;->sIsVendorDisabled:Z

    return-void
.end method

.method private handleVideoEventReflection(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 475
    invoke-virtual {p1}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->getMoatEnumName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const-string v0, "com.moat.analytics.mobile.mpub.MoatAdEventType"

    .line 483
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 484
    const-class v2, Ljava/lang/Enum;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 485
    invoke-virtual {p1}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->getMoatEnumName()Ljava/lang/String;

    move-result-object p1

    .line 484
    invoke-static {v2, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    .line 487
    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    aput-object v0, v4, v1

    const-class v0, Ljava/lang/Integer;

    const/4 v5, 0x1

    aput-object v0, v4, v5

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v1

    .line 489
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v5

    const-string p1, "com.moat.analytics.mobile.mpub.MoatAdEvent"

    .line 487
    invoke-static {p1, v2, v4, v0}, Lcom/mopub/common/util/Reflection;->instantiateClassWithConstructor(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 491
    new-instance v0, Lcom/mopub/common/util/Reflection$MethodBuilder;

    iget-object v1, p0, Lcom/mopub/common/MoatViewabilitySession;->mMoatVideoTracker:Ljava/lang/Object;

    const-string v2, "dispatchEvent"

    invoke-direct {v0, v1, v2}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    invoke-virtual {v0, p1, p2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p1

    .line 493
    invoke-virtual {p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    return v5
.end method

.method static isEnabled()Z
    .registers 1

    .line 63
    sget-boolean v0, Lcom/mopub/common/MoatViewabilitySession;->sIsVendorDisabled:Z

    if-nez v0, :cond_c

    invoke-static {}, Lcom/mopub/common/MoatViewabilitySession;->isViewabilityEnabledViaReflection()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static isViewabilityEnabledViaReflection()Z
    .registers 5

    .line 71
    sget-object v0, Lcom/mopub/common/MoatViewabilitySession;->sIsViewabilityEnabledViaReflection:Ljava/lang/Boolean;

    if-nez v0, :cond_3e

    const-string v0, "com.moat.analytics.mobile.mpub.MoatFactory"

    .line 72
    invoke-static {v0}, Lcom/mopub/common/util/Reflection;->classFound(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/mopub/common/MoatViewabilitySession;->sIsViewabilityEnabledViaReflection:Ljava/lang/Boolean;

    .line 73
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moat is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/mopub/common/MoatViewabilitySession;->sIsViewabilityEnabledViaReflection:Ljava/lang/Boolean;

    .line 74
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2b

    const-string v4, ""

    goto :goto_2d

    :cond_2b
    const-string v4, "un"

    :goto_2d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "available via reflection."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 73
    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 78
    :cond_3e
    sget-object v0, Lcom/mopub/common/MoatViewabilitySession;->sIsViewabilityEnabledViaReflection:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private updateAdIdsFromUrlStringAndBuyerResources(Ljava/lang/String;Ljava/util/Set;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lcom/mopub/common/MoatViewabilitySession;->mAdIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 436
    iget-object v0, p0, Lcom/mopub/common/MoatViewabilitySession;->mAdIds:Ljava/util/Map;

    const-string v1, "partnerCode"

    const-string v2, "mopubinapphtmvideo468906546585"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    iget-object v0, p0, Lcom/mopub/common/MoatViewabilitySession;->mAdIds:Ljava/util/Map;

    const-string v2, ";"

    invoke-static {v2, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "zMoatVASTIDs"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_22

    return-void

    .line 443
    :cond_22
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 445
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p2

    .line 448
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_46

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 449
    iget-object v0, p0, Lcom/mopub/common/MoatViewabilitySession;->mAdIds:Ljava/util/Map;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    :cond_46
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object p1

    .line 453
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8f

    const-string p2, "&"

    .line 454
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_58
    if-ge v0, p2, :cond_8f

    aget-object v1, p1, v0

    const-string v3, "="

    .line 455
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 456
    array-length v3, v1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_67

    goto :goto_8c

    .line 460
    :cond_67
    aget-object v3, v1, v2

    const/4 v4, 0x1

    .line 461
    aget-object v1, v1, v4

    .line 462
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8c

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_79

    goto :goto_8c

    .line 466
    :cond_79
    sget-object v4, Lcom/mopub/common/MoatViewabilitySession;->QUERY_PARAM_MAPPING:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 467
    iget-object v4, p0, Lcom/mopub/common/MoatViewabilitySession;->mAdIds:Ljava/util/Map;

    sget-object v5, Lcom/mopub/common/MoatViewabilitySession;->QUERY_PARAM_MAPPING:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8c
    :goto_8c
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    :cond_8f
    return-void
.end method


# virtual methods
.method public createDisplaySession(Landroid/content/Context;Landroid/webkit/WebView;Z)Ljava/lang/Boolean;
    .registers 7

    .line 163
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 165
    invoke-static {}, Lcom/mopub/common/MoatViewabilitySession;->isEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_b

    return-object v0

    :cond_b
    const/4 p1, 0x1

    .line 176
    :try_start_c
    new-instance v1, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v2, "create"

    invoke-direct {v1, v0, v2}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.moat.analytics.mobile.mpub.MoatFactory"

    .line 177
    invoke-virtual {v1, v0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->setStatic(Ljava/lang/String;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object v0

    .line 180
    new-instance v1, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v2, "createWebAdTracker"

    invoke-direct {v1, v0, v2}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Landroid/webkit/WebView;

    .line 181
    invoke-virtual {v1, v0, p2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p2

    .line 182
    invoke-virtual {p2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/mopub/common/MoatViewabilitySession;->mMoatWebAdTracker:Ljava/lang/Object;

    if-nez p3, :cond_3c

    .line 186
    new-instance p3, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v0, "startTracking"

    invoke-direct {p3, p2, v0}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    .line 189
    :cond_3c
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_40} :catch_41

    return-object p1

    :catch_41
    move-exception p2

    .line 191
    sget-object p3, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p1, p1, [Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to execute Moat start display session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 191
    invoke-static {p3, p1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 193
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public createVideoSession(Landroid/app/Activity;Landroid/view/View;Ljava/util/Set;Ljava/util/Map;)Ljava/lang/Boolean;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 253
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 254
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 255
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 256
    invoke-static {p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 258
    invoke-static {}, Lcom/mopub/common/MoatViewabilitySession;->isEnabled()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_14

    return-object p2

    :cond_14
    const-string p1, "moat"

    .line 262
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, p3}, Lcom/mopub/common/MoatViewabilitySession;->updateAdIdsFromUrlStringAndBuyerResources(Ljava/lang/String;Ljava/util/Set;)V

    .line 265
    iget-object p1, p0, Lcom/mopub/common/MoatViewabilitySession;->mAdIds:Ljava/util/Map;

    const-string p3, "partnerCode"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 266
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_41

    .line 267
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, p4, [Ljava/lang/Object;

    const-string p3, "partnerCode was empty when starting Moat video session"

    aput-object p3, p2, v0

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 268
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_41
    :try_start_41
    const-string p3, "com.moat.analytics.mobile.mpub.ReactiveVideoTrackerPlugin"

    .line 276
    const-class v1, Ljava/lang/Object;

    new-array v2, p4, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v0

    new-array v3, p4, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {p3, v1, v2, v3}, Lcom/mopub/common/util/Reflection;->instantiateClassWithConstructor(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 280
    new-instance p3, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v1, "create"

    invoke-direct {p3, p2, v1}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "com.moat.analytics.mobile.mpub.MoatFactory"

    .line 281
    invoke-virtual {p3, p2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->setStatic(Ljava/lang/String;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p2

    .line 282
    invoke-virtual {p2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object p2

    .line 284
    new-instance p3, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v1, "createCustomTracker"

    invoke-direct {p3, p2, v1}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "com.moat.analytics.mobile.mpub.MoatPlugin"

    .line 285
    invoke-virtual {p3, p2, p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p1

    .line 286
    invoke-virtual {p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/MoatViewabilitySession;->mMoatVideoTracker:Ljava/lang/Object;

    .line 288
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_7b} :catch_7c

    return-object p1

    :catch_7c
    move-exception p1

    .line 290
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p3, p4, [Ljava/lang/Object;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to execute Moat start video session: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v0

    invoke-static {p2, p3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 291
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public endDisplaySession()Ljava/lang/Boolean;
    .registers 7

    .line 225
    invoke-static {}, Lcom/mopub/common/MoatViewabilitySession;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 229
    :cond_8
    iget-object v0, p0, Lcom/mopub/common/MoatViewabilitySession;->mMoatWebAdTracker:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1e

    .line 230
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Moat WebAdTracker unexpectedly null."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 231
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 238
    :cond_1e
    :try_start_1e
    new-instance v3, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v4, "stopTracking"

    invoke-direct {v3, v0, v4}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    .line 240
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2c} :catch_2d

    return-object v0

    :catch_2d
    move-exception v0

    .line 242
    sget-object v3, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to execute Moat end session: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v3, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 245
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public endVideoSession()Ljava/lang/Boolean;
    .registers 7

    .line 392
    invoke-static {}, Lcom/mopub/common/MoatViewabilitySession;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 396
    :cond_8
    iget-object v0, p0, Lcom/mopub/common/MoatViewabilitySession;->mMoatVideoTracker:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1e

    .line 397
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Moat VideoAdTracker unexpectedly null."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 398
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 405
    :cond_1e
    :try_start_1e
    new-instance v3, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v4, "stopTracking"

    invoke-direct {v3, v0, v4}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    .line 407
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2c} :catch_2d

    return-object v0

    :catch_2d
    move-exception v0

    .line 409
    sget-object v3, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to execute Moat end video session: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v3, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 410
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "Moat"

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 9

    const-string v0, "com.moat.analytics.mobile.mpub.MoatOptions"

    .line 90
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 92
    invoke-static {}, Lcom/mopub/common/MoatViewabilitySession;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_d

    return-object v2

    .line 96
    :cond_d
    sget-boolean v1, Lcom/mopub/common/MoatViewabilitySession;->sWasInitialized:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_17

    .line 97
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 101
    :cond_17
    instance-of v1, p1, Landroid/app/Activity;

    const/4 v4, 0x0

    if-eqz v1, :cond_23

    .line 102
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    goto :goto_29

    .line 105
    :cond_23
    :try_start_23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;
    :try_end_29
    .catch Ljava/lang/ClassCastException; {:try_start_23 .. :try_end_29} :catch_99

    .line 119
    :goto_29
    :try_start_29
    const-class v1, Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/util/Reflection;->instantiateClassWithEmptyConstructor(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 122
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "disableAdIdCollection"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 123
    invoke-virtual {v5, v1, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 125
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "disableLocationServices"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 126
    invoke-virtual {v5, v1, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 128
    new-instance v5, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v6, "getInstance"

    invoke-direct {v5, v2, v6}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "com.moat.analytics.mobile.mpub.MoatAnalytics"

    .line 129
    invoke-virtual {v5, v2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->setStatic(Ljava/lang/String;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v2

    .line 130
    invoke-virtual {v2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object v2

    .line 132
    new-instance v5, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v6, "start"

    invoke-direct {v5, v2, v6}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v5, v0, v1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v0

    const-class v1, Landroid/app/Application;

    .line 134
    invoke-virtual {v0, v1, p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p1

    .line 135
    invoke-virtual {p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    .line 137
    sput-boolean v3, Lcom/mopub/common/MoatViewabilitySession;->sWasInitialized:Z

    .line 138
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_74} :catch_75

    return-object p1

    :catch_75
    move-exception p1

    .line 140
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v3, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to initialize Moat: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 141
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 107
    :catch_99
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Unable to initialize Moat, error obtaining application context."

    aput-object v1, v0, v4

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 108
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public invalidate()Ljava/lang/Boolean;
    .registers 3

    .line 148
    invoke-static {}, Lcom/mopub/common/MoatViewabilitySession;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 152
    :cond_8
    iput-object v1, p0, Lcom/mopub/common/MoatViewabilitySession;->mMoatWebAdTracker:Ljava/lang/Object;

    .line 153
    iput-object v1, p0, Lcom/mopub/common/MoatViewabilitySession;->mMoatVideoTracker:Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcom/mopub/common/MoatViewabilitySession;->mAdIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x1

    .line 156
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onVideoPrepared(Landroid/view/View;I)Ljava/lang/Boolean;
    .registers 8

    .line 311
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 313
    invoke-static {}, Lcom/mopub/common/MoatViewabilitySession;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 p1, 0x0

    return-object p1

    .line 317
    :cond_b
    iget-object v0, p0, Lcom/mopub/common/MoatViewabilitySession;->mMoatVideoTracker:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_21

    .line 318
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Moat VideoAdTracker unexpectedly null."

    aput-object v0, p2, v2

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 319
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 322
    :cond_21
    iget-boolean v3, p0, Lcom/mopub/common/MoatViewabilitySession;->mWasVideoPrepared:Z

    if-eqz v3, :cond_2a

    .line 323
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 330
    :cond_2a
    :try_start_2a
    new-instance v3, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v4, "trackVideoAd"

    invoke-direct {v3, v0, v4}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Ljava/util/Map;

    iget-object v4, p0, Lcom/mopub/common/MoatViewabilitySession;->mAdIds:Ljava/util/Map;

    .line 331
    invoke-virtual {v3, v0, v4}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v0

    const-class v3, Ljava/lang/Integer;

    .line 332
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v3, p2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p2

    const-class v0, Landroid/view/View;

    .line 333
    invoke-virtual {p2, v0, p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p1

    .line 334
    invoke-virtual {p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    .line 335
    iput-boolean v1, p0, Lcom/mopub/common/MoatViewabilitySession;->mWasVideoPrepared:Z

    .line 336
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_52} :catch_53

    return-object p1

    :catch_53
    move-exception p1

    .line 338
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to execute Moat onVideoPrepared: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {p2, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 339
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public recordVideoEvent(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;I)Ljava/lang/Boolean;
    .registers 8

    .line 346
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 348
    invoke-static {}, Lcom/mopub/common/MoatViewabilitySession;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    return-object v1

    .line 352
    :cond_b
    iget-object v0, p0, Lcom/mopub/common/MoatViewabilitySession;->mMoatVideoTracker:Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_21

    .line 353
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "Moat VideoAdTracker unexpectedly null."

    aput-object v0, p2, v3

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 354
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 358
    :cond_21
    :try_start_21
    sget-object v0, Lcom/mopub/common/MoatViewabilitySession$1;->$SwitchMap$com$mopub$common$ExternalViewabilitySession$VideoEvent:[I

    invoke-virtual {p1}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_8a

    .line 379
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    goto :goto_38

    :pswitch_2f
    return-object v1

    .line 368
    :pswitch_30
    invoke-direct {p0, p1, p2}, Lcom/mopub/common/MoatViewabilitySession;->handleVideoEventReflection(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;I)Z

    .line 369
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :goto_38
    new-array v0, v2, [Ljava/lang/Object;

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected video event: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->getMoatEnumName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {p2, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 380
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_58} :catch_59

    return-object p1

    :catch_59
    move-exception p2

    .line 383
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Video event "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->getMoatEnumName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed. "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    .line 383
    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 385
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
    .end packed-switch
.end method

.method public registerVideoObstruction(Landroid/view/View;)Ljava/lang/Boolean;
    .registers 2

    .line 298
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 300
    invoke-static {}, Lcom/mopub/common/MoatViewabilitySession;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_b

    const/4 p1, 0x0

    return-object p1

    :cond_b
    const/4 p1, 0x1

    .line 305
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public startDeferredDisplaySession(Landroid/app/Activity;)Ljava/lang/Boolean;
    .registers 7

    .line 200
    invoke-static {}, Lcom/mopub/common/MoatViewabilitySession;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 204
    :cond_8
    iget-object p1, p0, Lcom/mopub/common/MoatViewabilitySession;->mMoatWebAdTracker:Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1e

    .line 205
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "MoatWebAdTracker unexpectedly null."

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 206
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 213
    :cond_1e
    :try_start_1e
    new-instance v2, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v3, "startTracking"

    invoke-direct {v2, p1, v3}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    .line 215
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2c} :catch_2d

    return-object p1

    :catch_2d
    move-exception p1

    .line 217
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to record deferred display session for Moat: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v2, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 218
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
