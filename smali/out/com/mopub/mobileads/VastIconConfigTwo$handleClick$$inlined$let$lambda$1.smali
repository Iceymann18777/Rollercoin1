.class public final Lcom/mopub/mobileads/VastIconConfigTwo$handleClick$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "VastIconConfigTwo.kt"

# interfaces
.implements Lcom/mopub/common/UrlHandler$ResultActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastIconConfigTwo;->handleClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVastIconConfigTwo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastIconConfigTwo.kt\ncom/mopub/mobileads/VastIconConfigTwo$handleClick$2$1\n*L\n1#1,129:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $context$inlined:Landroid/content/Context;

.field final synthetic $dspCreativeId$inlined:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/mopub/mobileads/VastIconConfigTwo$handleClick$$inlined$let$lambda$1;->$dspCreativeId$inlined:Ljava/lang/String;

    iput-object p2, p0, Lcom/mopub/mobileads/VastIconConfigTwo$handleClick$$inlined$let$lambda$1;->$context$inlined:Landroid/content/Context;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public urlHandlingFailed(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .registers 4

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "lastFailedUrlAction"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public urlHandlingSucceeded(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .registers 6

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "urlAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    sget-object v0, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    if-ne p2, v0, :cond_51

    .line 95
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "URL"

    .line 97
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object p1, p0, Lcom/mopub/mobileads/VastIconConfigTwo$handleClick$$inlined$let$lambda$1;->$dspCreativeId$inlined:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_29

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_27

    goto :goto_29

    :cond_27
    const/4 p1, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 p1, 0x1

    :goto_2a
    if-nez p1, :cond_33

    .line 99
    iget-object p1, p0, Lcom/mopub/mobileads/VastIconConfigTwo$handleClick$$inlined$let$lambda$1;->$dspCreativeId$inlined:Ljava/lang/String;

    const-string v2, "mopub-dsp-creative-id"

    invoke-virtual {p2, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_33
    const-class p1, Lcom/mopub/common/MoPubBrowser;

    .line 104
    iget-object v2, p0, Lcom/mopub/mobileads/VastIconConfigTwo$handleClick$$inlined$let$lambda$1;->$context$inlined:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/mopub/common/util/Intents;->getStartActivityIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 106
    :try_start_3b
    iget-object p2, p0, Lcom/mopub/mobileads/VastIconConfigTwo$handleClick$$inlined$let$lambda$1;->$context$inlined:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/mopub/common/util/Intents;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_40
    .catch Lcom/mopub/exceptions/IntentNotResolvableException; {:try_start_3b .. :try_end_40} :catch_41

    goto :goto_51

    :catch_41
    move-exception p1

    .line 108
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    check-cast p2, Lcom/mopub/common/logging/MoPubLog$MPLogEventType;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mopub/exceptions/IntentNotResolvableException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {p2, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_51
    :goto_51
    return-void
.end method
