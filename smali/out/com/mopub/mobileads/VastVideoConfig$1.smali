.class Lcom/mopub/mobileads/VastVideoConfig$1;
.super Ljava/lang/Object;
.source "VastVideoConfig.java"

# interfaces
.implements Lcom/mopub/common/UrlHandler$ResultActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastVideoConfig;->handleClick(Landroid/content/Context;ILjava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/VastVideoConfig;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$requestCode:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastVideoConfig;Landroid/content/Context;Ljava/lang/Integer;)V
    .registers 4

    .line 620
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig$1;->this$0:Lcom/mopub/mobileads/VastVideoConfig;

    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoConfig$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/mopub/mobileads/VastVideoConfig$1;->val$requestCode:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public urlHandlingFailed(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .registers 3

    return-void
.end method

.method public urlHandlingSucceeded(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .registers 9

    const-string v0, " not found. Did you declare it in your AndroidManifest.xml?"

    const-string v1, "Activity "

    .line 624
    sget-object v2, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    if-ne p2, v2, :cond_85

    .line 625
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v2, "URL"

    .line 626
    invoke-virtual {p2, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig$1;->this$0:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoConfig;->access$000(Lcom/mopub/mobileads/VastVideoConfig;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "mopub-dsp-creative-id"

    invoke-virtual {p2, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-class p1, Lcom/mopub/common/MoPubBrowser;

    .line 630
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoConfig$1;->val$context:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/mopub/common/util/Intents;->getStartActivityIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 633
    :try_start_27
    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoConfig$1;->val$context:Landroid/content/Context;

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_40

    .line 635
    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoConfig$1;->val$requestCode:Ljava/lang/Integer;

    invoke-static {v4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 637
    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoConfig$1;->val$context:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    iget-object v5, p0, Lcom/mopub/mobileads/VastVideoConfig$1;->val$requestCode:Ljava/lang/Integer;

    .line 638
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, p2, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_85

    .line 640
    :cond_40
    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoConfig$1;->val$context:Landroid/content/Context;

    invoke-static {v4, p2}, Lcom/mopub/common/util/Intents;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_45
    .catch Landroid/content/ActivityNotFoundException; {:try_start_27 .. :try_end_45} :catch_66
    .catch Lcom/mopub/exceptions/IntentNotResolvableException; {:try_start_27 .. :try_end_45} :catch_46

    goto :goto_85

    .line 646
    :catch_46
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p2, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_85

    .line 643
    :catch_66
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p2, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_85
    :goto_85
    return-void
.end method
