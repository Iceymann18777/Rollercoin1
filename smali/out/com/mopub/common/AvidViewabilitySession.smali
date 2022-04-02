.class Lcom/mopub/common/AvidViewabilitySession;
.super Ljava/lang/Object;
.source "AvidViewabilitySession.java"

# interfaces
.implements Lcom/mopub/common/ExternalViewabilitySession;


# static fields
.field private static final AVID_AD_SESSION_MANAGER_PATH:Ljava/lang/String; = "com.integralads.avid.library.mopub.session.AvidAdSessionManager"

.field private static final AVID_KEY:Ljava/lang/String; = "avid"

.field private static final AVID_MANAGER_PATH:Ljava/lang/String; = "com.integralads.avid.library.mopub.AvidManager"

.field private static final EXTERNAL_AVID_AD_SESSION_CONTEXT_PATH:Ljava/lang/String; = "com.integralads.avid.library.mopub.session.ExternalAvidAdSessionContext"

.field private static sAvidAdSessionContextDeferred:Ljava/lang/Object;

.field private static sAvidAdSessionContextNonDeferred:Ljava/lang/Object;

.field private static sIsVendorDisabled:Z

.field private static sIsViewabilityEnabledViaReflection:Ljava/lang/Boolean;


# instance fields
.field private mAvidDisplayAdSession:Ljava/lang/Object;

.field private mAvidVideoAdSession:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static disable()V
    .registers 1

    const/4 v0, 0x1

    .line 45
    sput-boolean v0, Lcom/mopub/common/AvidViewabilitySession;->sIsVendorDisabled:Z

    return-void
.end method

.method private static getAvidAdSessionContextDeferred()Ljava/lang/Object;
    .registers 7

    .line 61
    sget-object v0, Lcom/mopub/common/AvidViewabilitySession;->sAvidAdSessionContextDeferred:Ljava/lang/Object;

    if-nez v0, :cond_47

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_6
    const-string v2, "com.integralads.avid.library.mopub.session.ExternalAvidAdSessionContext"

    .line 67
    const-class v3, Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "5.12.0"

    aput-object v6, v4, v0

    .line 70
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v1

    .line 67
    invoke-static {v2, v3, v5, v4}, Lcom/mopub/common/util/Reflection;->instantiateClassWithConstructor(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/mopub/common/AvidViewabilitySession;->sAvidAdSessionContextDeferred:Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_27} :catch_28

    goto :goto_47

    :catch_28
    move-exception v2

    .line 72
    sget-object v3, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to generate Avid deferred ad session context: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 72
    invoke-static {v3, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 77
    :cond_47
    :goto_47
    sget-object v0, Lcom/mopub/common/AvidViewabilitySession;->sAvidAdSessionContextDeferred:Ljava/lang/Object;

    return-object v0
.end method

.method private static getAvidAdSessionContextNonDeferred()Ljava/lang/Object;
    .registers 7

    .line 82
    sget-object v0, Lcom/mopub/common/AvidViewabilitySession;->sAvidAdSessionContextNonDeferred:Ljava/lang/Object;

    if-nez v0, :cond_3c

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_6
    const-string v2, "com.integralads.avid.library.mopub.session.ExternalAvidAdSessionContext"

    .line 88
    const-class v3, Ljava/lang/Object;

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "5.12.0"

    aput-object v6, v5, v0

    invoke-static {v2, v3, v4, v5}, Lcom/mopub/common/util/Reflection;->instantiateClassWithConstructor(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/mopub/common/AvidViewabilitySession;->sAvidAdSessionContextNonDeferred:Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1c} :catch_1d

    goto :goto_3c

    :catch_1d
    move-exception v2

    .line 93
    sget-object v3, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to generate Avid ad session context: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 93
    invoke-static {v3, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 98
    :cond_3c
    :goto_3c
    sget-object v0, Lcom/mopub/common/AvidViewabilitySession;->sAvidAdSessionContextNonDeferred:Ljava/lang/Object;

    return-object v0
.end method

.method private handleVideoEventReflection(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 420
    invoke-direct {p0, p1, v0}, Lcom/mopub/common/AvidViewabilitySession;->handleVideoEventReflection(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;Ljava/lang/String;)V

    return-void
.end method

.method private handleVideoEventReflection(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 428
    new-instance v0, Lcom/mopub/common/util/Reflection$MethodBuilder;

    iget-object v1, p0, Lcom/mopub/common/AvidViewabilitySession;->mAvidVideoAdSession:Ljava/lang/Object;

    const-string v2, "getAvidVideoPlaybackListener"

    invoke-direct {v0, v1, v2}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    invoke-virtual {v0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object v0

    .line 432
    new-instance v1, Lcom/mopub/common/util/Reflection$MethodBuilder;

    .line 433
    invoke-virtual {p1}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->getAvidMethodName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_21

    .line 436
    const-class p1, Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    .line 439
    :cond_21
    invoke-virtual {v1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    return-void
.end method

.method static isEnabled()Z
    .registers 1

    .line 41
    sget-boolean v0, Lcom/mopub/common/AvidViewabilitySession;->sIsVendorDisabled:Z

    if-nez v0, :cond_c

    invoke-static {}, Lcom/mopub/common/AvidViewabilitySession;->isViewabilityEnabledViaReflection()Z

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

    .line 49
    sget-object v0, Lcom/mopub/common/AvidViewabilitySession;->sIsViewabilityEnabledViaReflection:Ljava/lang/Boolean;

    if-nez v0, :cond_3e

    const-string v0, "com.integralads.avid.library.mopub.session.AvidAdSessionManager"

    .line 50
    invoke-static {v0}, Lcom/mopub/common/util/Reflection;->classFound(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/mopub/common/AvidViewabilitySession;->sIsViewabilityEnabledViaReflection:Ljava/lang/Boolean;

    .line 51
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Avid is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/mopub/common/AvidViewabilitySession;->sIsViewabilityEnabledViaReflection:Ljava/lang/Boolean;

    .line 52
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

    .line 51
    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 56
    :cond_3e
    sget-object v0, Lcom/mopub/common/AvidViewabilitySession;->sIsViewabilityEnabledViaReflection:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static resetStaticState()V
    .registers 1

    const/4 v0, 0x0

    .line 444
    sput-boolean v0, Lcom/mopub/common/AvidViewabilitySession;->sIsVendorDisabled:Z

    const/4 v0, 0x0

    .line 445
    sput-object v0, Lcom/mopub/common/AvidViewabilitySession;->sIsViewabilityEnabledViaReflection:Ljava/lang/Boolean;

    .line 446
    sput-object v0, Lcom/mopub/common/AvidViewabilitySession;->sAvidAdSessionContextDeferred:Ljava/lang/Object;

    .line 447
    sput-object v0, Lcom/mopub/common/AvidViewabilitySession;->sAvidAdSessionContextNonDeferred:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public createDisplaySession(Landroid/content/Context;Landroid/webkit/WebView;Z)Ljava/lang/Boolean;
    .registers 9

    .line 137
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 138
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 140
    invoke-static {}, Lcom/mopub/common/AvidViewabilitySession;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return-object v1

    :cond_e
    if-eqz p3, :cond_15

    .line 146
    invoke-static {}, Lcom/mopub/common/AvidViewabilitySession;->getAvidAdSessionContextDeferred()Ljava/lang/Object;

    move-result-object p3

    goto :goto_19

    .line 147
    :cond_15
    invoke-static {}, Lcom/mopub/common/AvidViewabilitySession;->getAvidAdSessionContextNonDeferred()Ljava/lang/Object;

    move-result-object p3

    .line 148
    :goto_19
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_21

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    goto :goto_22

    :cond_21
    move-object v0, v1

    :goto_22
    const/4 v2, 0x1

    .line 156
    :try_start_23
    new-instance v3, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v4, "startAvidDisplayAdSession"

    invoke-direct {v3, v1, v4}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "com.integralads.avid.library.mopub.session.AvidAdSessionManager"

    .line 157
    invoke-virtual {v3, v1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->setStatic(Ljava/lang/String;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v1

    const-class v3, Landroid/content/Context;

    .line 158
    invoke-virtual {v1, v3, p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p1

    const-string v1, "com.integralads.avid.library.mopub.session.ExternalAvidAdSessionContext"

    .line 159
    invoke-virtual {p1, v1, p3}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/AvidViewabilitySession;->mAvidDisplayAdSession:Ljava/lang/Object;

    .line 162
    new-instance p3, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v1, "registerAdView"

    invoke-direct {p3, p1, v1}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-class p1, Landroid/view/View;

    .line 163
    invoke-virtual {p3, p1, p2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p1

    const-class p2, Landroid/app/Activity;

    .line 164
    invoke-virtual {p1, p2, v0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p1

    .line 165
    invoke-virtual {p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    .line 167
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_5c} :catch_5d

    return-object p1

    :catch_5d
    move-exception p1

    .line 169
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p3, v2, [Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to execute Avid start display session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p3, v0

    invoke-static {p2, p3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 170
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public createVideoSession(Landroid/app/Activity;Landroid/view/View;Ljava/util/Set;Ljava/util/Map;)Ljava/lang/Boolean;
    .registers 10
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

    const-string v0, "avid"

    .line 251
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 252
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 253
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 254
    invoke-static {p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 256
    invoke-static {}, Lcom/mopub/common/AvidViewabilitySession;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    return-object v2

    :cond_16
    const/4 v1, 0x1

    .line 274
    :try_start_17
    new-instance v3, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v4, "startAvidManagedVideoAdSession"

    invoke-direct {v3, v2, v4}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "com.integralads.avid.library.mopub.session.AvidAdSessionManager"

    .line 275
    invoke-virtual {v3, v2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->setStatic(Ljava/lang/String;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v2

    const-class v3, Landroid/content/Context;

    .line 276
    invoke-virtual {v2, v3, p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v2

    const-string v3, "com.integralads.avid.library.mopub.session.ExternalAvidAdSessionContext"

    .line 277
    invoke-static {}, Lcom/mopub/common/AvidViewabilitySession;->getAvidAdSessionContextNonDeferred()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v2

    .line 278
    invoke-virtual {v2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/mopub/common/AvidViewabilitySession;->mAvidVideoAdSession:Ljava/lang/Object;

    .line 280
    new-instance v3, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v4, "registerAdView"

    invoke-direct {v3, v2, v4}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v2, Landroid/view/View;

    .line 281
    invoke-virtual {v3, v2, p2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p2

    const-class v2, Landroid/app/Activity;

    .line 282
    invoke-virtual {p2, v2, p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p1

    .line 283
    invoke-virtual {p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    .line 285
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_5a} :catch_9e

    const-string p2, "injectJavaScriptResource"

    if-nez p1, :cond_72

    .line 286
    :try_start_5e
    new-instance p1, Lcom/mopub/common/util/Reflection$MethodBuilder;

    iget-object v2, p0, Lcom/mopub/common/AvidViewabilitySession;->mAvidVideoAdSession:Ljava/lang/Object;

    invoke-direct {p1, v2, p2}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v2, Ljava/lang/String;

    .line 287
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, v2, p4}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p1

    .line 288
    invoke-virtual {p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    .line 291
    :cond_72
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_76
    :goto_76
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_99

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 292
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_76

    .line 293
    new-instance p4, Lcom/mopub/common/util/Reflection$MethodBuilder;

    iget-object v0, p0, Lcom/mopub/common/AvidViewabilitySession;->mAvidVideoAdSession:Ljava/lang/Object;

    invoke-direct {p4, v0, p2}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Ljava/lang/String;

    .line 294
    invoke-virtual {p4, v0, p3}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p3

    .line 295
    invoke-virtual {p3}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    goto :goto_76

    .line 299
    :cond_99
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_9d} :catch_9e

    return-object p1

    :catch_9e
    move-exception p1

    .line 301
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p3, v1, [Ljava/lang/Object;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to execute Avid start video session: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x0

    aput-object p1, p3, p4

    invoke-static {p2, p3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 302
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public endDisplaySession()Ljava/lang/Boolean;
    .registers 7

    .line 224
    invoke-static {}, Lcom/mopub/common/AvidViewabilitySession;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 228
    :cond_8
    iget-object v0, p0, Lcom/mopub/common/AvidViewabilitySession;->mAvidDisplayAdSession:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1e

    .line 229
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Avid DisplayAdSession unexpectedly null."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 230
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 237
    :cond_1e
    :try_start_1e
    new-instance v3, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v4, "endSession"

    invoke-direct {v3, v0, v4}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    .line 239
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2c} :catch_2d

    return-object v0

    :catch_2d
    move-exception v0

    .line 241
    sget-object v3, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to execute Avid end session: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v3, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 242
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public endVideoSession()Ljava/lang/Boolean;
    .registers 7

    .line 397
    invoke-static {}, Lcom/mopub/common/AvidViewabilitySession;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 401
    :cond_8
    iget-object v0, p0, Lcom/mopub/common/AvidViewabilitySession;->mAvidVideoAdSession:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1e

    .line 402
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Avid VideoAdSession unexpectedly null."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 403
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 410
    :cond_1e
    :try_start_1e
    new-instance v3, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v4, "endSession"

    invoke-direct {v3, v0, v4}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    .line 412
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2c} :catch_2d

    return-object v0

    :catch_2d
    move-exception v0

    .line 414
    sget-object v3, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to execute Avid end video session: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v3, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 415
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "AVID"

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 2

    .line 110
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 112
    invoke-static {}, Lcom/mopub/common/AvidViewabilitySession;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_b

    const/4 p1, 0x0

    return-object p1

    :cond_b
    const/4 p1, 0x1

    .line 117
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public invalidate()Ljava/lang/Boolean;
    .registers 3

    .line 123
    invoke-static {}, Lcom/mopub/common/AvidViewabilitySession;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 127
    :cond_8
    iput-object v1, p0, Lcom/mopub/common/AvidViewabilitySession;->mAvidDisplayAdSession:Ljava/lang/Object;

    .line 128
    iput-object v1, p0, Lcom/mopub/common/AvidViewabilitySession;->mAvidVideoAdSession:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 130
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onVideoPrepared(Landroid/view/View;I)Ljava/lang/Boolean;
    .registers 3

    .line 338
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 340
    invoke-static {}, Lcom/mopub/common/AvidViewabilitySession;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_b

    const/4 p1, 0x0

    return-object p1

    :cond_b
    const/4 p1, 0x1

    .line 345
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public recordVideoEvent(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;I)Ljava/lang/Boolean;
    .registers 8

    .line 351
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 353
    invoke-static {}, Lcom/mopub/common/AvidViewabilitySession;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_b

    const/4 p1, 0x0

    return-object p1

    .line 357
    :cond_b
    iget-object p2, p0, Lcom/mopub/common/AvidViewabilitySession;->mAvidVideoAdSession:Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_21

    .line 358
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "Avid VideoAdSession unexpectedly null."

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 359
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 363
    :cond_21
    :try_start_21
    sget-object p2, Lcom/mopub/common/AvidViewabilitySession$1;->$SwitchMap$com$mopub$common$ExternalViewabilitySession$VideoEvent:[I

    invoke-virtual {p1}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->ordinal()I

    move-result v2

    aget p2, p2, v2

    packed-switch p2, :pswitch_data_8e

    .line 384
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    goto :goto_41

    :pswitch_2f
    const-string p2, "error"

    .line 380
    invoke-direct {p0, p1, p2}, Lcom/mopub/common/AvidViewabilitySession;->handleVideoEventReflection(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;Ljava/lang/String;)V

    .line 381
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 376
    :pswitch_39
    invoke-direct {p0, p1}, Lcom/mopub/common/AvidViewabilitySession;->handleVideoEventReflection(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;)V

    .line 377
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :goto_41
    new-array v2, v0, [Ljava/lang/Object;

    .line 384
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected video event type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p2, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 385
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_5d} :catch_5e

    return-object p1

    :catch_5e
    move-exception p2

    .line 388
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to execute Avid video event for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {p1}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->getAvidMethodName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    .line 388
    invoke-static {v2, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 390
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_2f
    .end packed-switch
.end method

.method public registerVideoObstruction(Landroid/view/View;)Ljava/lang/Boolean;
    .registers 7

    .line 309
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 311
    invoke-static {}, Lcom/mopub/common/AvidViewabilitySession;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 p1, 0x0

    return-object p1

    .line 315
    :cond_b
    iget-object v0, p0, Lcom/mopub/common/AvidViewabilitySession;->mAvidVideoAdSession:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_21

    .line 316
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Avid VideoAdSession unexpectedly null."

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 317
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 324
    :cond_21
    :try_start_21
    new-instance v3, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v4, "registerFriendlyObstruction"

    invoke-direct {v3, v0, v4}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Landroid/view/View;

    .line 325
    invoke-virtual {v3, v0, p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p1

    .line 326
    invoke-virtual {p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    .line 328
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_35} :catch_36

    return-object p1

    :catch_36
    move-exception p1

    .line 330
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to register Avid video obstructions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 331
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public startDeferredDisplaySession(Landroid/app/Activity;)Ljava/lang/Boolean;
    .registers 7

    .line 177
    invoke-static {}, Lcom/mopub/common/AvidViewabilitySession;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 181
    :cond_8
    iget-object v0, p0, Lcom/mopub/common/AvidViewabilitySession;->mAvidDisplayAdSession:Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1e

    .line 182
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Avid DisplayAdSession unexpectedly null."

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 183
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 193
    :cond_1e
    :try_start_1e
    new-instance v0, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v4, "getInstance"

    invoke-direct {v0, v1, v4}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "com.integralads.avid.library.mopub.AvidManager"

    .line 194
    invoke-virtual {v0, v1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->setStatic(Ljava/lang/String;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object v0

    .line 197
    new-instance v1, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v4, "registerActivity"

    invoke-direct {v1, v0, v4}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Landroid/app/Activity;

    .line 198
    invoke-virtual {v1, v0, p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p1

    .line 199
    invoke-virtual {p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    .line 201
    new-instance p1, Lcom/mopub/common/util/Reflection$MethodBuilder;

    iget-object v0, p0, Lcom/mopub/common/AvidViewabilitySession;->mAvidDisplayAdSession:Ljava/lang/Object;

    const-string v1, "getAvidDeferredAdSessionListener"

    invoke-direct {p1, v0, v1}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_5e

    .line 206
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Avid AdSessionListener unexpectedly null."

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 207
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 210
    :cond_5e
    new-instance v0, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v1, "recordReadyEvent"

    invoke-direct {v0, p1, v1}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    .line 213
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_6c} :catch_6d

    return-object p1

    :catch_6d
    move-exception p1

    .line 215
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to execute Avid record deferred session: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    .line 215
    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 217
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
