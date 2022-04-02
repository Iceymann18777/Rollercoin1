.class final enum Lcom/mopub/common/UrlAction$9;
.super Lcom/mopub/common/UrlAction;
.source "UrlAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/UrlAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IZ)V
    .registers 5

    const/4 v0, 0x0

    .line 287
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mopub/common/UrlAction;-><init>(Ljava/lang/String;IZLcom/mopub/common/UrlAction$1;)V

    return-void
.end method


# virtual methods
.method protected performAction(Landroid/content/Context;Landroid/net/Uri;Lcom/mopub/common/UrlHandler;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/exceptions/IntentNotResolvableException;
        }
    .end annotation

    .line 300
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p3

    const-string p4, "intent"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_34

    .line 302
    :try_start_c
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x1

    invoke-static {p3, p4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p3

    .line 303
    invoke-static {p1, p3}, Lcom/mopub/common/util/Intents;->launchApplicationIntent(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_18
    .catch Ljava/net/URISyntaxException; {:try_start_c .. :try_end_18} :catch_19

    goto :goto_37

    .line 305
    :catch_19
    new-instance p1, Lcom/mopub/exceptions/IntentNotResolvableException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Intent uri had invalid syntax: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/mopub/exceptions/IntentNotResolvableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 309
    :cond_34
    invoke-static {p1, p2}, Lcom/mopub/common/util/Intents;->launchApplicationUrl(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_37
    return-void
.end method

.method public shouldTryHandlingUrl(Landroid/net/Uri;)Z
    .registers 2

    .line 290
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    .line 291
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
