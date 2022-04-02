.class public Lcom/mopub/common/privacy/ConsentDialogController;
.super Ljava/lang/Object;
.source "ConsentDialogController.java"

# interfaces
.implements Lcom/mopub/common/privacy/ConsentDialogRequest$Listener;


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private mExtListener:Lcom/mopub/common/privacy/ConsentDialogListener;

.field private final mHandler:Landroid/os/Handler;

.field private mHtmlBody:Ljava/lang/String;

.field volatile mReady:Z

.field volatile mRequestInFlight:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mAppContext:Landroid/content/Context;

    .line 42
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private resetState()V
    .registers 2

    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mRequestInFlight:Z

    .line 148
    iput-boolean v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mReady:Z

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mExtListener:Lcom/mopub/common/privacy/ConsentDialogListener;

    .line 150
    iput-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mHtmlBody:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method isReady()Z
    .registers 2

    .line 143
    iget-boolean v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mReady:Z

    return v0
.end method

.method declared-synchronized loadConsentDialog(Lcom/mopub/common/privacy/ConsentDialogListener;Ljava/lang/Boolean;Lcom/mopub/common/privacy/PersonalInfoData;)V
    .registers 9

    monitor-enter p0

    .line 96
    :try_start_1
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 98
    iget-boolean v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mReady:Z

    if-eqz v0, :cond_16

    if-eqz p1, :cond_14

    .line 100
    iget-object p2, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/mopub/common/privacy/ConsentDialogController$1;

    invoke-direct {p3, p0, p1}, Lcom/mopub/common/privacy/ConsentDialogController$1;-><init>(Lcom/mopub/common/privacy/ConsentDialogController;Lcom/mopub/common/privacy/ConsentDialogListener;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_74

    .line 108
    :cond_14
    monitor-exit p0

    return-void

    .line 109
    :cond_16
    :try_start_16
    iget-boolean v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mRequestInFlight:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_29

    .line 110
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, v1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "Already making a consent dialog load request."

    aput-object v0, p2, p3

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_74

    .line 111
    monitor-exit p0

    return-void

    .line 114
    :cond_29
    :try_start_29
    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mExtListener:Lcom/mopub/common/privacy/ConsentDialogListener;

    .line 115
    iput-boolean v1, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mRequestInFlight:Z

    .line 117
    new-instance p1, Lcom/mopub/common/privacy/ConsentDialogRequest;

    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mAppContext:Landroid/content/Context;

    new-instance v1, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;

    iget-object v2, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mAppContext:Landroid/content/Context;

    .line 118
    invoke-virtual {p3}, Lcom/mopub/common/privacy/PersonalInfoData;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-virtual {p3}, Lcom/mopub/common/privacy/PersonalInfoData;->getConsentStatus()Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mopub/common/privacy/ConsentStatus;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v1, p2}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->withGdprApplies(Ljava/lang/Boolean;)Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;

    move-result-object p2

    .line 121
    invoke-virtual {p3}, Lcom/mopub/common/privacy/PersonalInfoData;->getConsentedPrivacyPolicyVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->withConsentedPrivacyPolicyVersion(Ljava/lang/String;)Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;

    move-result-object p2

    .line 122
    invoke-virtual {p3}, Lcom/mopub/common/privacy/PersonalInfoData;->getConsentedVendorListVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->withConsentedVendorListVersion(Ljava/lang/String;)Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;

    move-result-object p2

    .line 123
    invoke-virtual {p3}, Lcom/mopub/common/privacy/PersonalInfoData;->isForceGdprApplies()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->withForceGdprApplies(Z)Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;

    move-result-object p2

    sget-object p3, Lcom/mopub/common/Constants;->HOST:Ljava/lang/String;

    .line 124
    invoke-virtual {p2, p3}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->generateUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2, p0}, Lcom/mopub/common/privacy/ConsentDialogRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/common/privacy/ConsentDialogRequest$Listener;)V

    .line 125
    iget-object p2, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mAppContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mopub/network/MoPubRequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;
    :try_end_72
    .catchall {:try_start_29 .. :try_end_72} :catchall_74

    .line 126
    monitor-exit p0

    return-void

    :catchall_74
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .registers 7

    .line 69
    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mExtListener:Lcom/mopub/common/privacy/ConsentDialogListener;

    .line 70
    invoke-direct {p0}, Lcom/mopub/common/privacy/ConsentDialogController;->resetState()V

    if-nez v0, :cond_8

    return-void

    .line 76
    :cond_8
    instance-of v1, p1, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v1, :cond_54

    .line 77
    sget-object v1, Lcom/mopub/common/privacy/ConsentDialogController$2;->$SwitchMap$com$mopub$network$MoPubNetworkError$Reason:[I

    check-cast p1, Lcom/mopub/network/MoPubNetworkError;

    invoke-virtual {p1}, Lcom/mopub/network/MoPubNetworkError;->getReason()Lcom/mopub/network/MoPubNetworkError$Reason;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/network/MoPubNetworkError$Reason;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_37

    .line 84
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v4}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v1, v2, v3

    invoke-static {p1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_54

    .line 79
    :cond_37
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v4}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v1, v2, v3

    invoke-static {p1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 81
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, p1}, Lcom/mopub/common/privacy/ConsentDialogListener;->onConsentDialogLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 90
    :cond_54
    :goto_54
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, p1}, Lcom/mopub/common/privacy/ConsentDialogListener;->onConsentDialogLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public onSuccess(Lcom/mopub/common/privacy/ConsentDialogResponse;)V
    .registers 6

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mRequestInFlight:Z

    .line 48
    invoke-virtual {p1}, Lcom/mopub/common/privacy/ConsentDialogResponse;->getHtml()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mHtmlBody:Ljava/lang/String;

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_36

    .line 50
    iput-boolean v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mReady:Z

    .line 51
    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mExtListener:Lcom/mopub/common/privacy/ConsentDialogListener;

    if-eqz p1, :cond_35

    .line 52
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v3}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v0, v2, v1

    invoke-static {p1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 54
    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mExtListener:Lcom/mopub/common/privacy/ConsentDialogListener;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/common/privacy/ConsentDialogListener;->onConsentDialogLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_35
    return-void

    .line 59
    :cond_36
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 61
    iput-boolean v1, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mReady:Z

    .line 62
    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mExtListener:Lcom/mopub/common/privacy/ConsentDialogListener;

    if-eqz p1, :cond_46

    .line 63
    invoke-interface {p1}, Lcom/mopub/common/privacy/ConsentDialogListener;->onConsentDialogLoaded()V

    :cond_46
    return-void
.end method

.method showConsentDialog()Z
    .registers 6

    .line 129
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 130
    iget-boolean v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mReady:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mHtmlBody:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_23

    .line 136
    :cond_16
    iput-boolean v1, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mReady:Z

    .line 137
    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mHtmlBody:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mopub/common/privacy/ConsentDialogActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    .line 138
    invoke-direct {p0}, Lcom/mopub/common/privacy/ConsentDialogController;->resetState()V

    return v2

    .line 131
    :cond_23
    :goto_23
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v4}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return v1
.end method
