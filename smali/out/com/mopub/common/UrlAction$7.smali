.class final enum Lcom/mopub/common/UrlAction$7;
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

    .line 184
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

    .line 198
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 199
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 202
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Could not handle share tweet intent with URI "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 204
    :try_start_17
    invoke-static {p2}, Lcom/mopub/common/util/Intents;->intentForShareTweet(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p2

    const-string p4, "Share via"

    .line 205
    invoke-static {p2, p4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    .line 206
    invoke-static {p1, p2, p3}, Lcom/mopub/common/util/Intents;->launchIntentForUserClick(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_24
    .catch Lcom/mopub/exceptions/UrlParseException; {:try_start_17 .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p1

    .line 208
    new-instance p2, Lcom/mopub/exceptions/IntentNotResolvableException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n\t"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mopub/exceptions/UrlParseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/mopub/exceptions/IntentNotResolvableException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public shouldTryHandlingUrl(Landroid/net/Uri;)Z
    .registers 4

    .line 187
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 188
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mopubshare"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 189
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tweet"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d

    const/4 p1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    return p1
.end method
