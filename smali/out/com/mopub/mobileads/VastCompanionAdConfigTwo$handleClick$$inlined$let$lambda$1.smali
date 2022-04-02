.class public final Lcom/mopub/mobileads/VastCompanionAdConfigTwo$handleClick$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "VastCompanionAdConfigTwo.kt"

# interfaces
.implements Lcom/mopub/common/UrlHandler$ResultActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastCompanionAdConfigTwo;->handleClick(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVastCompanionAdConfigTwo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastCompanionAdConfigTwo.kt\ncom/mopub/mobileads/VastCompanionAdConfigTwo$handleClick$3$1\n*L\n1#1,133:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $context$inlined:Landroid/content/Context;

.field final synthetic $dspCreativeId$inlined:Ljava/lang/String;

.field final synthetic $requestCode$inlined:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;I)V
    .registers 4

    iput-object p1, p0, Lcom/mopub/mobileads/VastCompanionAdConfigTwo$handleClick$$inlined$let$lambda$1;->$dspCreativeId$inlined:Ljava/lang/String;

    iput-object p2, p0, Lcom/mopub/mobileads/VastCompanionAdConfigTwo$handleClick$$inlined$let$lambda$1;->$context$inlined:Landroid/content/Context;

    iput p3, p0, Lcom/mopub/mobileads/VastCompanionAdConfigTwo$handleClick$$inlined$let$lambda$1;->$requestCode$inlined:I

    .line 95
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
    .registers 7

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "urlAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    sget-object v0, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    if-ne p2, v0, :cond_6f

    .line 98
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "URL"

    .line 100
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/mopub/mobileads/VastCompanionAdConfigTwo$handleClick$$inlined$let$lambda$1;->$dspCreativeId$inlined:Ljava/lang/String;

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

    .line 102
    iget-object p1, p0, Lcom/mopub/mobileads/VastCompanionAdConfigTwo$handleClick$$inlined$let$lambda$1;->$dspCreativeId$inlined:Ljava/lang/String;

    const-string v2, "mopub-dsp-creative-id"

    invoke-virtual {p2, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_33
    const-class p1, Lcom/mopub/common/MoPubBrowser;

    .line 107
    iget-object v2, p0, Lcom/mopub/mobileads/VastCompanionAdConfigTwo$handleClick$$inlined$let$lambda$1;->$context$inlined:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/mopub/common/util/Intents;->getStartActivityIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p2

    .line 109
    :try_start_3b
    iget-object v2, p0, Lcom/mopub/mobileads/VastCompanionAdConfigTwo$handleClick$$inlined$let$lambda$1;->$context$inlined:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    iget v3, p0, Lcom/mopub/mobileads/VastCompanionAdConfigTwo$handleClick$$inlined$let$lambda$1;->$requestCode$inlined:I

    invoke-virtual {v2, p2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_44
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3b .. :try_end_44} :catch_45

    goto :goto_6f

    .line 112
    :catch_45
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    check-cast p2, Lcom/mopub/common/logging/MoPubLog$MPLogEventType;

    new-array v1, v1, [Ljava/lang/Object;

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found. Did you "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "declare it in your AndroidManifest.xml?"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    .line 111
    invoke-static {p2, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_6f
    :goto_6f
    return-void
.end method
