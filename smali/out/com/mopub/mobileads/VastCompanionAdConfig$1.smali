.class Lcom/mopub/mobileads/VastCompanionAdConfig$1;
.super Ljava/lang/Object;
.source "VastCompanionAdConfig.java"

# interfaces
.implements Lcom/mopub/common/UrlHandler$ResultActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastCompanionAdConfig;->handleClick(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/VastCompanionAdConfig;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dspCreativeId:Ljava/lang/String;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastCompanionAdConfig;Ljava/lang/String;Landroid/content/Context;I)V
    .registers 5

    .line 166
    iput-object p1, p0, Lcom/mopub/mobileads/VastCompanionAdConfig$1;->this$0:Lcom/mopub/mobileads/VastCompanionAdConfig;

    iput-object p2, p0, Lcom/mopub/mobileads/VastCompanionAdConfig$1;->val$dspCreativeId:Ljava/lang/String;

    iput-object p3, p0, Lcom/mopub/mobileads/VastCompanionAdConfig$1;->val$context:Landroid/content/Context;

    iput p4, p0, Lcom/mopub/mobileads/VastCompanionAdConfig$1;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public urlHandlingFailed(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .registers 3

    return-void
.end method

.method public urlHandlingSucceeded(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .registers 7

    .line 170
    sget-object v0, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    if-ne p2, v0, :cond_54

    .line 171
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "URL"

    .line 172
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object p1, p0, Lcom/mopub/mobileads/VastCompanionAdConfig$1;->val$dspCreativeId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1d

    .line 175
    iget-object p1, p0, Lcom/mopub/mobileads/VastCompanionAdConfig$1;->val$dspCreativeId:Ljava/lang/String;

    const-string v0, "mopub-dsp-creative-id"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_1d
    const-class p1, Lcom/mopub/common/MoPubBrowser;

    .line 179
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig$1;->val$context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/mopub/common/util/Intents;->getStartActivityIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p2

    .line 182
    :try_start_25
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig$1;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget v1, p0, Lcom/mopub/mobileads/VastCompanionAdConfig$1;->val$requestCode:I

    invoke-virtual {v0, p2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_25 .. :try_end_2e} :catch_2f

    goto :goto_54

    .line 184
    :catch_2f
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found. Did you declare it in your AndroidManifest.xml?"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_54
    :goto_54
    return-void
.end method
