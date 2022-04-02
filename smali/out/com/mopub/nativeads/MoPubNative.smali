.class public Lcom/mopub/nativeads/MoPubNative;
.super Ljava/lang/Object;
.source "MoPubNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;
    }
.end annotation


# static fields
.field static final EMPTY_NETWORK_LISTENER:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;


# instance fields
.field private mAdLoader:Lcom/mopub/network/AdLoader;

.field mAdRendererRegistry:Lcom/mopub/nativeads/AdRendererRegistry;

.field private final mAdUnitId:Ljava/lang/String;

.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMoPubNativeNetworkListener:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

.field private mNativeAdapter:Lcom/mopub/nativeads/CustomEventNativeAdapter;

.field private mNativeRequest:Lcom/mopub/volley/Request;

.field private final mVolleyListener:Lcom/mopub/network/AdLoader$Listener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Lcom/mopub/nativeads/MoPubNative$1;

    invoke-direct {v0}, Lcom/mopub/nativeads/MoPubNative$1;-><init>()V

    sput-object v0, Lcom/mopub/nativeads/MoPubNative;->EMPTY_NETWORK_LISTENER:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/nativeads/AdRendererRegistry;Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;)V
    .registers 6

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->mLocalExtras:Ljava/util/Map;

    const-string v0, "context may not be null."

    .line 88
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AdUnitId may not be null."

    .line 89
    invoke-static {p2, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AdRendererRegistry may not be null."

    .line 90
    invoke-static {p3, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "MoPubNativeNetworkListener may not be null."

    .line 91
    invoke-static {p4, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-static {p1}, Lcom/mopub/common/util/ManifestUtils;->checkNativeActivitiesDeclared(Landroid/content/Context;)V

    .line 95
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->mContext:Ljava/lang/ref/WeakReference;

    .line 96
    iput-object p2, p0, Lcom/mopub/nativeads/MoPubNative;->mAdUnitId:Ljava/lang/String;

    .line 97
    iput-object p4, p0, Lcom/mopub/nativeads/MoPubNative;->mMoPubNativeNetworkListener:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    .line 98
    iput-object p3, p0, Lcom/mopub/nativeads/MoPubNative;->mAdRendererRegistry:Lcom/mopub/nativeads/AdRendererRegistry;

    .line 99
    new-instance p1, Lcom/mopub/nativeads/MoPubNative$2;

    invoke-direct {p1, p0}, Lcom/mopub/nativeads/MoPubNative$2;-><init>(Lcom/mopub/nativeads/MoPubNative;)V

    iput-object p1, p0, Lcom/mopub/nativeads/MoPubNative;->mVolleyListener:Lcom/mopub/network/AdLoader$Listener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;)V
    .registers 5

    .line 80
    new-instance v0, Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-direct {v0}, Lcom/mopub/nativeads/AdRendererRegistry;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/mopub/nativeads/MoPubNative;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/nativeads/AdRendererRegistry;Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/nativeads/MoPubNative;Lcom/mopub/network/AdResponse;)V
    .registers 2

    .line 44
    invoke-direct {p0, p1}, Lcom/mopub/nativeads/MoPubNative;->onAdLoad(Lcom/mopub/network/AdResponse;)V

    return-void
.end method

.method static synthetic access$102(Lcom/mopub/nativeads/MoPubNative;Lcom/mopub/nativeads/CustomEventNativeAdapter;)Lcom/mopub/nativeads/CustomEventNativeAdapter;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubNative;->mNativeAdapter:Lcom/mopub/nativeads/CustomEventNativeAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mopub/nativeads/MoPubNative;)Lcom/mopub/network/AdLoader;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/mopub/nativeads/MoPubNative;->mAdLoader:Lcom/mopub/network/AdLoader;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mopub/nativeads/MoPubNative;)Ljava/lang/String;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/mopub/nativeads/MoPubNative;->mAdUnitId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mopub/nativeads/MoPubNative;)Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/mopub/nativeads/MoPubNative;->mMoPubNativeNetworkListener:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    return-object p0
.end method

.method private loadNativeAd(Lcom/mopub/nativeads/RequestParameters;Ljava/lang/Integer;)V
    .registers 7

    .line 170
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubNative;->getContextOrDestroy()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 175
    :cond_7
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 177
    new-instance v1, Lcom/mopub/nativeads/NativeUrlGenerator;

    invoke-direct {v1, v0}, Lcom/mopub/nativeads/NativeUrlGenerator;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->mAdUnitId:Ljava/lang/String;

    .line 178
    invoke-virtual {v1, v0}, Lcom/mopub/nativeads/NativeUrlGenerator;->withAdUnitId(Ljava/lang/String;)Lcom/mopub/nativeads/NativeUrlGenerator;

    move-result-object v0

    .line 179
    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/NativeUrlGenerator;->withRequest(Lcom/mopub/nativeads/RequestParameters;)Lcom/mopub/nativeads/NativeUrlGenerator;

    move-result-object p1

    if-eqz p2, :cond_27

    .line 182
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/mopub/nativeads/NativeUrlGenerator;->withSequenceNumber(I)Lcom/mopub/nativeads/NativeUrlGenerator;

    .line 185
    :cond_27
    sget-object p2, Lcom/mopub/common/Constants;->HOST:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/mopub/nativeads/NativeUrlGenerator;->generateUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4a

    .line 188
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MoPubNative Loading ad from: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p2, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_4a
    const/4 p2, 0x0

    .line 191
    invoke-virtual {p0, p1, p2}, Lcom/mopub/nativeads/MoPubNative;->requestNativeAd(Ljava/lang/String;Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void
.end method

.method private onAdLoad(Lcom/mopub/network/AdResponse;)V
    .registers 8

    .line 212
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubNative;->getContextOrDestroy()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 216
    :cond_7
    new-instance v1, Lcom/mopub/nativeads/MoPubNative$3;

    invoke-direct {v1, p0, p1}, Lcom/mopub/nativeads/MoPubNative$3;-><init>(Lcom/mopub/nativeads/MoPubNative;Lcom/mopub/network/AdResponse;)V

    .line 254
    iget-object v2, p0, Lcom/mopub/nativeads/MoPubNative;->mNativeAdapter:Lcom/mopub/nativeads/CustomEventNativeAdapter;

    if-eqz v2, :cond_22

    .line 255
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Native adapter is not null."

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 256
    iget-object v2, p0, Lcom/mopub/nativeads/MoPubNative;->mNativeAdapter:Lcom/mopub/nativeads/CustomEventNativeAdapter;

    invoke-virtual {v2}, Lcom/mopub/nativeads/CustomEventNativeAdapter;->stopLoading()V

    .line 259
    :cond_22
    new-instance v2, Lcom/mopub/nativeads/CustomEventNativeAdapter;

    invoke-direct {v2, v1}, Lcom/mopub/nativeads/CustomEventNativeAdapter;-><init>(Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;)V

    iput-object v2, p0, Lcom/mopub/nativeads/MoPubNative;->mNativeAdapter:Lcom/mopub/nativeads/CustomEventNativeAdapter;

    .line 260
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubNative;->mLocalExtras:Ljava/util/Map;

    invoke-virtual {v2, v0, v1, p1}, Lcom/mopub/nativeads/CustomEventNativeAdapter;->loadNativeAd(Landroid/content/Context;Ljava/util/Map;Lcom/mopub/network/AdResponse;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 127
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->mNativeRequest:Lcom/mopub/volley/Request;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 128
    invoke-virtual {v0}, Lcom/mopub/volley/Request;->cancel()V

    .line 129
    iput-object v1, p0, Lcom/mopub/nativeads/MoPubNative;->mNativeRequest:Lcom/mopub/volley/Request;

    .line 131
    :cond_f
    iput-object v1, p0, Lcom/mopub/nativeads/MoPubNative;->mAdLoader:Lcom/mopub/network/AdLoader;

    .line 133
    sget-object v0, Lcom/mopub/nativeads/MoPubNative;->EMPTY_NETWORK_LISTENER:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->mMoPubNativeNetworkListener:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    return-void
.end method

.method getContextOrDestroy()Landroid/content/Context;
    .registers 6

    .line 309
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1a

    .line 311
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubNative;->destroy()V

    .line 312
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Weak reference to Context in MoPubNative became null. This instance of MoPubNative is destroyed and No more requests will be processed."

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_1a
    return-object v0
.end method

.method getMoPubNativeNetworkListener()Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->mMoPubNativeNetworkListener:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    return-object v0
.end method

.method public makeRequest()V
    .registers 2

    const/4 v0, 0x0

    .line 145
    check-cast v0, Lcom/mopub/nativeads/RequestParameters;

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/MoPubNative;->makeRequest(Lcom/mopub/nativeads/RequestParameters;)V

    return-void
.end method

.method public makeRequest(Lcom/mopub/nativeads/RequestParameters;)V
    .registers 3

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p0, p1, v0}, Lcom/mopub/nativeads/MoPubNative;->makeRequest(Lcom/mopub/nativeads/RequestParameters;Ljava/lang/Integer;)V

    return-void
.end method

.method public makeRequest(Lcom/mopub/nativeads/RequestParameters;Ljava/lang/Integer;)V
    .registers 4

    .line 154
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubNative;->getContextOrDestroy()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 159
    :cond_7
    invoke-static {v0}, Lcom/mopub/common/util/DeviceUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 160
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubNative;->mMoPubNativeNetworkListener:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    sget-object p2, Lcom/mopub/nativeads/NativeErrorCode;->CONNECTION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;->onNativeFail(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void

    .line 164
    :cond_15
    invoke-direct {p0, p1, p2}, Lcom/mopub/nativeads/MoPubNative;->loadNativeAd(Lcom/mopub/nativeads/RequestParameters;Ljava/lang/Integer;)V

    return-void
.end method

.method onAdError(Lcom/mopub/volley/VolleyError;)V
    .registers 7

    .line 268
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Native ad request failed."

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 269
    instance-of v0, p1, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v0, :cond_5f

    .line 270
    check-cast p1, Lcom/mopub/network/MoPubNetworkError;

    .line 271
    sget-object v0, Lcom/mopub/nativeads/MoPubNative$4;->$SwitchMap$com$mopub$network$MoPubNetworkError$Reason:[I

    invoke-virtual {p1}, Lcom/mopub/network/MoPubNetworkError;->getReason()Lcom/mopub/network/MoPubNetworkError$Reason;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/network/MoPubNetworkError$Reason;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v3, :cond_57

    if-eq p1, v1, :cond_4f

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3c

    const/4 v0, 0x4

    if-eq p1, v0, :cond_34

    .line 289
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubNative;->mMoPubNativeNetworkListener:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;->onNativeFail(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void

    .line 285
    :cond_34
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubNative;->mMoPubNativeNetworkListener:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->EMPTY_AD_RESPONSE:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;->onNativeFail(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void

    .line 281
    :cond_3c
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->WARMUP:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v1, v0, v4

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 282
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubNative;->mMoPubNativeNetworkListener:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->EMPTY_AD_RESPONSE:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;->onNativeFail(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void

    .line 276
    :cond_4f
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubNative;->mMoPubNativeNetworkListener:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->INVALID_RESPONSE:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;->onNativeFail(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void

    .line 273
    :cond_57
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubNative;->mMoPubNativeNetworkListener:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->INVALID_RESPONSE:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;->onNativeFail(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void

    .line 294
    :cond_5f
    iget-object p1, p1, Lcom/mopub/volley/VolleyError;->networkResponse:Lcom/mopub/volley/NetworkResponse;

    if-eqz p1, :cond_77

    .line 295
    iget v0, p1, Lcom/mopub/volley/NetworkResponse;->statusCode:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_77

    iget v0, p1, Lcom/mopub/volley/NetworkResponse;->statusCode:I

    const/16 v1, 0x258

    if-ge v0, v1, :cond_77

    .line 296
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubNative;->mMoPubNativeNetworkListener:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->SERVER_ERROR_RESPONSE_CODE:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;->onNativeFail(Lcom/mopub/nativeads/NativeErrorCode;)V

    goto :goto_a1

    :cond_77
    if-nez p1, :cond_9a

    .line 297
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubNative;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/mopub/common/util/DeviceUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_9a

    .line 298
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v1, v0, v4

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 299
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubNative;->mMoPubNativeNetworkListener:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->CONNECTION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;->onNativeFail(Lcom/mopub/nativeads/NativeErrorCode;)V

    goto :goto_a1

    .line 301
    :cond_9a
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubNative;->mMoPubNativeNetworkListener:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;->onNativeFail(Lcom/mopub/nativeads/NativeErrorCode;)V

    :goto_a1
    return-void
.end method

.method public registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V
    .registers 3

    const-string v0, "Can\'t register a null adRenderer"

    .line 118
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 122
    :cond_9
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->mAdRendererRegistry:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/AdRendererRegistry;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    return-void
.end method

.method requestNativeAd(Ljava/lang/String;Lcom/mopub/nativeads/NativeErrorCode;)V
    .registers 10

    .line 195
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubNative;->getContextOrDestroy()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_7

    return-void

    .line 200
    :cond_7
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->mAdLoader:Lcom/mopub/network/AdLoader;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/mopub/network/AdLoader;->hasMoreAds()Z

    move-result v0

    if-nez v0, :cond_30

    .line 201
    :cond_11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 202
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubNative;->mMoPubNativeNetworkListener:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    if-nez p2, :cond_1d

    sget-object p2, Lcom/mopub/nativeads/NativeErrorCode;->INVALID_REQUEST_URL:Lcom/mopub/nativeads/NativeErrorCode;

    :cond_1d
    invoke-interface {p1, p2}, Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;->onNativeFail(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void

    .line 205
    :cond_21
    new-instance v6, Lcom/mopub/network/AdLoader;

    sget-object v2, Lcom/mopub/common/AdFormat;->NATIVE:Lcom/mopub/common/AdFormat;

    iget-object v3, p0, Lcom/mopub/nativeads/MoPubNative;->mAdUnitId:Ljava/lang/String;

    iget-object v5, p0, Lcom/mopub/nativeads/MoPubNative;->mVolleyListener:Lcom/mopub/network/AdLoader$Listener;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/mopub/network/AdLoader;-><init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/AdLoader$Listener;)V

    iput-object v6, p0, Lcom/mopub/nativeads/MoPubNative;->mAdLoader:Lcom/mopub/network/AdLoader;

    .line 208
    :cond_30
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubNative;->mAdLoader:Lcom/mopub/network/AdLoader;

    invoke-virtual {p1, p2}, Lcom/mopub/network/AdLoader;->loadNextAd(Lcom/mopub/mobileads/MoPubError;)Lcom/mopub/volley/Request;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/nativeads/MoPubNative;->mNativeRequest:Lcom/mopub/volley/Request;

    return-void
.end method

.method public setLocalExtras(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_a

    .line 138
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/mopub/nativeads/MoPubNative;->mLocalExtras:Ljava/util/Map;

    goto :goto_11

    .line 140
    :cond_a
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->mLocalExtras:Ljava/util/Map;

    :goto_11
    return-void
.end method
