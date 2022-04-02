.class final enum Lcom/mopub/common/UrlAction$8;
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

    .line 213
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mopub/common/UrlAction;-><init>(Ljava/lang/String;IZLcom/mopub/common/UrlAction$1;)V

    return-void
.end method


# virtual methods
.method protected performAction(Landroid/content/Context;Landroid/net/Uri;Lcom/mopub/common/UrlHandler;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/exceptions/IntentNotResolvableException;
        }
    .end annotation

    .line 227
    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p4

    const-string v0, "navigate"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_71

    :try_start_c
    const-string p4, "primaryUrl"

    .line 237
    invoke-virtual {p2, p4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "primaryTrackingUrl"

    .line 238
    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v1, "fallbackUrl"

    .line 239
    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fallbackTrackingUrl"

    .line 240
    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2
    :try_end_24
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_c .. :try_end_24} :catch_69

    if-eqz p4, :cond_61

    .line 253
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    .line 254
    invoke-virtual {p0, p4}, Lcom/mopub/common/UrlAction$8;->shouldTryHandlingUrl(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 262
    :try_start_30
    invoke-static {p1, p4}, Lcom/mopub/common/util/Intents;->launchApplicationUrl(Landroid/content/Context;Landroid/net/Uri;)V

    .line 263
    invoke-static {v0, p1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V
    :try_end_36
    .catch Lcom/mopub/exceptions/IntentNotResolvableException; {:try_start_30 .. :try_end_36} :catch_37

    return-void

    :catch_37
    nop

    if-eqz v1, :cond_51

    .line 275
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/mopub/common/UrlAction$8;->shouldTryHandlingUrl(Landroid/net/Uri;)Z

    move-result p4

    if-nez p4, :cond_49

    const/4 p4, 0x1

    .line 283
    invoke-virtual {p3, p1, v1, p4, p2}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Iterable;)V

    return-void

    .line 277
    :cond_49
    new-instance p1, Lcom/mopub/exceptions/IntentNotResolvableException;

    const-string p2, "Deeplink+ URL had another Deeplink+ URL as the \'fallbackUrl\'."

    invoke-direct {p1, p2}, Lcom/mopub/exceptions/IntentNotResolvableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 271
    :cond_51
    new-instance p1, Lcom/mopub/exceptions/IntentNotResolvableException;

    const-string p2, "Unable to handle \'primaryUrl\' for Deeplink+ and \'fallbackUrl\' was missing."

    invoke-direct {p1, p2}, Lcom/mopub/exceptions/IntentNotResolvableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 256
    :cond_59
    new-instance p1, Lcom/mopub/exceptions/IntentNotResolvableException;

    const-string p2, "Deeplink+ had another Deeplink+ as the \'primaryUrl\'."

    invoke-direct {p1, p2}, Lcom/mopub/exceptions/IntentNotResolvableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 249
    :cond_61
    new-instance p1, Lcom/mopub/exceptions/IntentNotResolvableException;

    const-string p2, "Deeplink+ did not have \'primaryUrl\' query param."

    invoke-direct {p1, p2}, Lcom/mopub/exceptions/IntentNotResolvableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 244
    :catch_69
    new-instance p1, Lcom/mopub/exceptions/IntentNotResolvableException;

    const-string p2, "Deeplink+ URL was not a hierarchical URI."

    invoke-direct {p1, p2}, Lcom/mopub/exceptions/IntentNotResolvableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 228
    :cond_71
    new-instance p1, Lcom/mopub/exceptions/IntentNotResolvableException;

    const-string p2, "Deeplink+ URL did not have \'navigate\' as the host."

    invoke-direct {p1, p2}, Lcom/mopub/exceptions/IntentNotResolvableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shouldTryHandlingUrl(Landroid/net/Uri;)Z
    .registers 3

    .line 216
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "deeplink+"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
