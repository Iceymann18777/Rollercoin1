.class public Lcom/mopub/common/privacy/ConsentDialogActivity;
.super Landroid/app/Activity;
.source "ConsentDialogActivity.java"


# static fields
.field private static final CLOSE_BUTTON_DELAY_MS:I = 0x2710

.field private static final KEY_HTML_PAGE:Ljava/lang/String; = "html-page-content"


# instance fields
.field mCloseButtonHandler:Landroid/os/Handler;

.field mConsentStatus:Lcom/mopub/common/privacy/ConsentStatus;

.field private mEnableCloseButtonRunnable:Ljava/lang/Runnable;

.field mView:Lcom/mopub/common/privacy/ConsentDialogLayout;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/common/privacy/ConsentDialogActivity;Lcom/mopub/common/privacy/ConsentStatus;)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Lcom/mopub/common/privacy/ConsentDialogActivity;->saveConsentStatus(Lcom/mopub/common/privacy/ConsentStatus;)V

    return-void
.end method

.method static createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 67
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 68
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 70
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "html-page-content"

    .line 71
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-class p1, Lcom/mopub/common/privacy/ConsentDialogActivity;

    invoke-static {p0, p1, v0}, Lcom/mopub/common/util/Intents;->getStartActivityIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private saveConsentStatus(Lcom/mopub/common/privacy/ConsentStatus;)V
    .registers 2

    .line 173
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 174
    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogActivity;->mConsentStatus:Lcom/mopub/common/privacy/ConsentStatus;

    return-void
.end method

.method static start(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .line 46
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2f

    .line 49
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "ConsentDialogActivity htmlData can\'t be empty string."

    aput-object v0, p1, v2

    invoke-static {p0, p1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 50
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array p1, v1, [Ljava/lang/Object;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v0, p1, v3

    invoke-static {p0, p1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 55
    :cond_2f
    invoke-static {p0, p1}, Lcom/mopub/common/privacy/ConsentDialogActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 57
    :try_start_33
    invoke-static {p0, p1}, Lcom/mopub/common/util/Intents;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_36
    .catch Landroid/content/ActivityNotFoundException; {:try_start_33 .. :try_end_36} :catch_37
    .catch Lcom/mopub/exceptions/IntentNotResolvableException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_59

    .line 59
    :catch_37
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "ConsentDialogActivity not found - did you declare it in AndroidManifest.xml?"

    aput-object v0, p1, v2

    invoke-static {p0, p1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 60
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array p1, v1, [Ljava/lang/Object;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v0, p1, v3

    invoke-static {p0, p1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_59
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/mopub/common/privacy/ConsentDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "html-page-content"

    .line 80
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3c

    .line 82
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v4, "Web page for ConsentDialogActivity is empty"

    aput-object v4, v0, v2

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 83
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array v0, v1, [Ljava/lang/Object;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p0}, Lcom/mopub/common/privacy/ConsentDialogActivity;->finish()V

    return-void

    .line 89
    :cond_3c
    invoke-virtual {p0, v3}, Lcom/mopub/common/privacy/ConsentDialogActivity;->requestWindowFeature(I)Z

    .line 90
    invoke-virtual {p0}, Lcom/mopub/common/privacy/ConsentDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v4, 0x400

    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    .line 93
    :try_start_48
    new-instance v0, Lcom/mopub/common/privacy/ConsentDialogLayout;

    invoke-direct {v0, p0}, Lcom/mopub/common/privacy/ConsentDialogLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogActivity;->mView:Lcom/mopub/common/privacy/ConsentDialogLayout;
    :try_end_4f
    .catch Ljava/lang/RuntimeException; {:try_start_48 .. :try_end_4f} :catch_6e

    .line 103
    new-instance v1, Lcom/mopub/common/privacy/ConsentDialogActivity$1;

    invoke-direct {v1, p0}, Lcom/mopub/common/privacy/ConsentDialogActivity$1;-><init>(Lcom/mopub/common/privacy/ConsentDialogActivity;)V

    invoke-virtual {v0, v1}, Lcom/mopub/common/privacy/ConsentDialogLayout;->setConsentClickListener(Lcom/mopub/common/privacy/ConsentDialogLayout$ConsentListener;)V

    .line 116
    new-instance v0, Lcom/mopub/common/privacy/ConsentDialogActivity$2;

    invoke-direct {v0, p0}, Lcom/mopub/common/privacy/ConsentDialogActivity$2;-><init>(Lcom/mopub/common/privacy/ConsentDialogActivity;)V

    iput-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogActivity;->mEnableCloseButtonRunnable:Ljava/lang/Runnable;

    .line 123
    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogActivity;->mView:Lcom/mopub/common/privacy/ConsentDialogLayout;

    invoke-virtual {p0, v0}, Lcom/mopub/common/privacy/ConsentDialogActivity;->setContentView(Landroid/view/View;)V

    .line 125
    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogActivity;->mView:Lcom/mopub/common/privacy/ConsentDialogLayout;

    new-instance v1, Lcom/mopub/common/privacy/ConsentDialogActivity$3;

    invoke-direct {v1, p0}, Lcom/mopub/common/privacy/ConsentDialogActivity$3;-><init>(Lcom/mopub/common/privacy/ConsentDialogActivity;)V

    invoke-virtual {v0, p1, v1}, Lcom/mopub/common/privacy/ConsentDialogLayout;->startLoading(Ljava/lang/String;Lcom/mopub/common/privacy/ConsentDialogLayout$PageLoadListener;)V

    return-void

    :catch_6e
    move-exception p1

    .line 96
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "Unable to create WebView"

    aput-object v5, v4, v2

    aput-object p1, v4, v3

    invoke-static {v0, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 97
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array v0, v1, [Ljava/lang/Object;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 99
    invoke-virtual {p0}, Lcom/mopub/common/privacy/ConsentDialogActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 155
    invoke-static {}, Lcom/mopub/common/MoPub;->getPersonalInformationManager()Lcom/mopub/common/privacy/PersonalInfoManager;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 156
    iget-object v1, p0, Lcom/mopub/common/privacy/ConsentDialogActivity;->mConsentStatus:Lcom/mopub/common/privacy/ConsentStatus;

    if-eqz v1, :cond_d

    .line 157
    invoke-virtual {v0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->changeConsentStateFromDialog(Lcom/mopub/common/privacy/ConsentStatus;)V

    .line 159
    :cond_d
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 144
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SHOW_SUCCESS:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onStart()V
    .registers 5

    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 137
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogActivity;->mCloseButtonHandler:Landroid/os/Handler;

    .line 138
    iget-object v1, p0, Lcom/mopub/common/privacy/ConsentDialogActivity;->mEnableCloseButtonRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onStop()V
    .registers 2

    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    .line 150
    invoke-virtual {p0, v0}, Lcom/mopub/common/privacy/ConsentDialogActivity;->setCloseButtonVisibility(Z)V

    return-void
.end method

.method setCloseButtonVisibility(Z)V
    .registers 4

    .line 164
    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogActivity;->mCloseButtonHandler:Landroid/os/Handler;

    if-eqz v0, :cond_9

    .line 165
    iget-object v1, p0, Lcom/mopub/common/privacy/ConsentDialogActivity;->mEnableCloseButtonRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 167
    :cond_9
    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogActivity;->mView:Lcom/mopub/common/privacy/ConsentDialogLayout;

    if-eqz v0, :cond_10

    .line 168
    invoke-virtual {v0, p1}, Lcom/mopub/common/privacy/ConsentDialogLayout;->setCloseVisible(Z)V

    :cond_10
    return-void
.end method
