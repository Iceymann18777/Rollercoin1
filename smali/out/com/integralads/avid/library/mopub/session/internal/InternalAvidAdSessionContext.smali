.class public Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;
.super Ljava/lang/Object;
.source "InternalAvidAdSessionContext.java"


# static fields
.field public static final AVID_API_LEVEL:Ljava/lang/String; = "2"

.field public static final AVID_STUB_MODE:Ljava/lang/String; = "stub"

.field public static final CONTEXT_AVID_AD_SESSION_ID:Ljava/lang/String; = "avidAdSessionId"

.field public static final CONTEXT_AVID_AD_SESSION_TYPE:Ljava/lang/String; = "avidAdSessionType"

.field public static final CONTEXT_AVID_API_LEVEL:Ljava/lang/String; = "avidApiLevel"

.field public static final CONTEXT_AVID_LIBRARY_VERSION:Ljava/lang/String; = "avidLibraryVersion"

.field public static final CONTEXT_BUNDLE_IDENTIFIER:Ljava/lang/String; = "bundleIdentifier"

.field public static final CONTEXT_IS_DEFERRED:Ljava/lang/String; = "isDeferred"

.field public static final CONTEXT_MEDIA_TYPE:Ljava/lang/String; = "mediaType"

.field public static final CONTEXT_MODE:Ljava/lang/String; = "mode"

.field public static final CONTEXT_PARTNER:Ljava/lang/String; = "partner"

.field public static final CONTEXT_PARTNER_VERSION:Ljava/lang/String; = "partnerVersion"


# instance fields
.field private avidAdSessionContext:Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;

.field private avidAdSessionId:Ljava/lang/String;

.field private avidAdSessionType:Ljava/lang/String;

.field private mediaType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;)V
    .registers 7

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidContext;->getInstance()Lcom/integralads/avid/library/mopub/AvidContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/mopub/AvidContext;->init(Landroid/content/Context;)V

    .line 34
    iput-object p2, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;->avidAdSessionId:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;->avidAdSessionContext:Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;

    .line 36
    iput-object p3, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;->avidAdSessionType:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;->mediaType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAvidAdSessionContext()Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;->avidAdSessionContext:Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;

    return-object v0
.end method

.method public getAvidAdSessionId()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;->avidAdSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getFullContext()Lorg/json/JSONObject;
    .registers 4

    .line 53
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "avidAdSessionId"

    .line 55
    iget-object v2, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;->avidAdSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "bundleIdentifier"

    .line 56
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidContext;->getInstance()Lcom/integralads/avid/library/mopub/AvidContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/integralads/avid/library/mopub/AvidContext;->getBundleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "partner"

    .line 57
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidContext;->getInstance()Lcom/integralads/avid/library/mopub/AvidContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/integralads/avid/library/mopub/AvidContext;->getPartnerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "partnerVersion"

    .line 58
    iget-object v2, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;->avidAdSessionContext:Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;

    invoke-virtual {v2}, Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;->getPartnerVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "avidLibraryVersion"

    .line 59
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidContext;->getInstance()Lcom/integralads/avid/library/mopub/AvidContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/integralads/avid/library/mopub/AvidContext;->getAvidVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "avidAdSessionType"

    .line 60
    iget-object v2, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;->avidAdSessionType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mediaType"

    .line 61
    iget-object v2, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;->mediaType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isDeferred"

    .line 62
    iget-object v2, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;->avidAdSessionContext:Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;

    invoke-virtual {v2}, Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;->isDeferred()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_57
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_57} :catch_58

    goto :goto_5c

    :catch_58
    move-exception v1

    .line 64
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_5c
    return-object v0
.end method

.method public getStubContext()Lorg/json/JSONObject;
    .registers 4

    .line 70
    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;->getFullContext()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_4
    const-string v1, "avidApiLevel"

    const-string v2, "2"

    .line 72
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mode"

    const-string v2, "stub"

    .line 73
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception v1

    .line 75
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_17
    return-object v0
.end method

.method public setAvidAdSessionContext(Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;->avidAdSessionContext:Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;

    return-void
.end method
