.class Lcom/mopub/common/privacy/ConsentDialogLayout$2;
.super Landroid/webkit/WebViewClient;
.source "ConsentDialogLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/privacy/ConsentDialogLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/common/privacy/ConsentDialogLayout;


# direct methods
.method constructor <init>(Lcom/mopub/common/privacy/ConsentDialogLayout;)V
    .registers 2

    .line 130
    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout$2;->this$0:Lcom/mopub/common/privacy/ConsentDialogLayout;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .line 141
    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogLayout$2;->this$0:Lcom/mopub/common/privacy/ConsentDialogLayout;

    invoke-static {v0}, Lcom/mopub/common/privacy/ConsentDialogLayout;->access$100(Lcom/mopub/common/privacy/ConsentDialogLayout;)Lcom/mopub/common/privacy/ConsentDialogLayout$PageLoadListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 142
    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogLayout$2;->this$0:Lcom/mopub/common/privacy/ConsentDialogLayout;

    invoke-static {v0}, Lcom/mopub/common/privacy/ConsentDialogLayout;->access$100(Lcom/mopub/common/privacy/ConsentDialogLayout;)Lcom/mopub/common/privacy/ConsentDialogLayout$PageLoadListener;

    move-result-object v0

    sget v1, Lcom/mopub/common/privacy/ConsentDialogLayout;->FINISHED_LOADING:I

    invoke-interface {v0, v1}, Lcom/mopub/common/privacy/ConsentDialogLayout$PageLoadListener;->onLoadProgress(I)V

    .line 144
    :cond_13
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 133
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 134
    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout$2;->this$0:Lcom/mopub/common/privacy/ConsentDialogLayout;

    invoke-static {p1}, Lcom/mopub/common/privacy/ConsentDialogLayout;->access$100(Lcom/mopub/common/privacy/ConsentDialogLayout;)Lcom/mopub/common/privacy/ConsentDialogLayout$PageLoadListener;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 135
    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout$2;->this$0:Lcom/mopub/common/privacy/ConsentDialogLayout;

    invoke-static {p1}, Lcom/mopub/common/privacy/ConsentDialogLayout;->access$100(Lcom/mopub/common/privacy/ConsentDialogLayout;)Lcom/mopub/common/privacy/ConsentDialogLayout$PageLoadListener;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/mopub/common/privacy/ConsentDialogLayout$PageLoadListener;->onLoadProgress(I)V

    :cond_15
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 6

    .line 150
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result p2

    if-eqz p2, :cond_10

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->RENDER_PROCESS_GONE_WITH_CRASH:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_12

    :cond_10
    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->RENDER_PROCESS_GONE_UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    :goto_12
    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8

    const-string v0, "mopub://consent?yes"

    .line 158
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    .line 159
    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout$2;->this$0:Lcom/mopub/common/privacy/ConsentDialogLayout;

    invoke-static {p1}, Lcom/mopub/common/privacy/ConsentDialogLayout;->access$000(Lcom/mopub/common/privacy/ConsentDialogLayout;)Lcom/mopub/common/privacy/ConsentDialogLayout$ConsentListener;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 160
    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout$2;->this$0:Lcom/mopub/common/privacy/ConsentDialogLayout;

    invoke-static {p1}, Lcom/mopub/common/privacy/ConsentDialogLayout;->access$000(Lcom/mopub/common/privacy/ConsentDialogLayout;)Lcom/mopub/common/privacy/ConsentDialogLayout$ConsentListener;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-interface {p1, p2}, Lcom/mopub/common/privacy/ConsentDialogLayout$ConsentListener;->onConsentClick(Lcom/mopub/common/privacy/ConsentStatus;)V

    :cond_1c
    return v1

    :cond_1d
    const-string v0, "mopub://consent?no"

    .line 163
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 164
    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout$2;->this$0:Lcom/mopub/common/privacy/ConsentDialogLayout;

    invoke-static {p1}, Lcom/mopub/common/privacy/ConsentDialogLayout;->access$000(Lcom/mopub/common/privacy/ConsentDialogLayout;)Lcom/mopub/common/privacy/ConsentDialogLayout$ConsentListener;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 165
    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout$2;->this$0:Lcom/mopub/common/privacy/ConsentDialogLayout;

    invoke-static {p1}, Lcom/mopub/common/privacy/ConsentDialogLayout;->access$000(Lcom/mopub/common/privacy/ConsentDialogLayout;)Lcom/mopub/common/privacy/ConsentDialogLayout$ConsentListener;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_NO:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-interface {p1, p2}, Lcom/mopub/common/privacy/ConsentDialogLayout$ConsentListener;->onConsentClick(Lcom/mopub/common/privacy/ConsentStatus;)V

    :cond_38
    return v1

    :cond_39
    const-string v0, "mopub://close"

    .line 168
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 169
    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout$2;->this$0:Lcom/mopub/common/privacy/ConsentDialogLayout;

    invoke-static {p1}, Lcom/mopub/common/privacy/ConsentDialogLayout;->access$000(Lcom/mopub/common/privacy/ConsentDialogLayout;)Lcom/mopub/common/privacy/ConsentDialogLayout$ConsentListener;

    move-result-object p1

    if-eqz p1, :cond_52

    .line 170
    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout$2;->this$0:Lcom/mopub/common/privacy/ConsentDialogLayout;

    invoke-static {p1}, Lcom/mopub/common/privacy/ConsentDialogLayout;->access$000(Lcom/mopub/common/privacy/ConsentDialogLayout;)Lcom/mopub/common/privacy/ConsentDialogLayout$ConsentListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/mopub/common/privacy/ConsentDialogLayout$ConsentListener;->onCloseClick()V

    :cond_52
    return v1

    .line 173
    :cond_53
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_87

    .line 175
    :try_start_59
    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogLayout$2;->this$0:Lcom/mopub/common/privacy/ConsentDialogLayout;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/ConsentDialogLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot open native browser for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mopub/common/util/Intents;->launchActionViewIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_77
    .catch Lcom/mopub/exceptions/IntentNotResolvableException; {:try_start_59 .. :try_end_77} :catch_78

    return v1

    :catch_78
    move-exception v0

    .line 178
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/mopub/exceptions/IntentNotResolvableException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {v2, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 181
    :cond_87
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
