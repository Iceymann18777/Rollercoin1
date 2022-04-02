.class Lcom/mopub/mobileads/VastIconConfig$1;
.super Ljava/lang/Object;
.source "VastIconConfig.java"

# interfaces
.implements Lcom/mopub/common/UrlHandler$ResultActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastIconConfig;->handleClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/VastIconConfig;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dspCreativeId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastIconConfig;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    .line 172
    iput-object p1, p0, Lcom/mopub/mobileads/VastIconConfig$1;->this$0:Lcom/mopub/mobileads/VastIconConfig;

    iput-object p2, p0, Lcom/mopub/mobileads/VastIconConfig$1;->val$dspCreativeId:Ljava/lang/String;

    iput-object p3, p0, Lcom/mopub/mobileads/VastIconConfig$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public urlHandlingFailed(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .registers 3

    return-void
.end method

.method public urlHandlingSucceeded(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .registers 5

    .line 176
    sget-object v0, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    if-ne p2, v0, :cond_3b

    .line 177
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "URL"

    .line 178
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object p1, p0, Lcom/mopub/mobileads/VastIconConfig$1;->val$dspCreativeId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1d

    .line 180
    iget-object p1, p0, Lcom/mopub/mobileads/VastIconConfig$1;->val$dspCreativeId:Ljava/lang/String;

    const-string v0, "mopub-dsp-creative-id"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_1d
    iget-object p1, p0, Lcom/mopub/mobileads/VastIconConfig$1;->val$context:Landroid/content/Context;

    const-class v0, Lcom/mopub/common/MoPubBrowser;

    invoke-static {p1, v0, p2}, Lcom/mopub/common/util/Intents;->getStartActivityIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 185
    :try_start_25
    iget-object p2, p0, Lcom/mopub/mobileads/VastIconConfig$1;->val$context:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/mopub/common/util/Intents;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_2a
    .catch Lcom/mopub/exceptions/IntentNotResolvableException; {:try_start_25 .. :try_end_2a} :catch_2b

    goto :goto_3b

    :catch_2b
    move-exception p1

    .line 187
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/mopub/exceptions/IntentNotResolvableException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_3b
    :goto_3b
    return-void
.end method
