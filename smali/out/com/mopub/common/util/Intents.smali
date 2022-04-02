.class public Lcom/mopub/common/util/Intents;
.super Ljava/lang/Object;
.source "Intents.java"


# static fields
.field private static final STORE_SCHEME_TO_URL_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "market"

    const-string v2, "https://play.google.com/store/apps/details?%s"

    .line 43
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "amzn"

    const-string v2, "http://www.amazon.com/gp/mas/dl/android?%s"

    .line 44
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/mopub/common/util/Intents;->STORE_SCHEME_TO_URL_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canHandleApplicationUrl(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public static canHandleApplicationUrl(Landroid/content/Context;Landroid/net/Uri;Z)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public static deviceCanHandleIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 3

    const/4 v0, 0x0

    .line 88
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 89
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 90
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_d} :catch_10

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_10
    return v0
.end method

.method public static getPlayStoreUri(Landroid/content/Intent;)Landroid/net/Uri;
    .registers 3

    .line 322
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getStartActivityIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 4

    .line 72
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    instance-of p0, p0, Landroid/app/Activity;

    if-nez p0, :cond_e

    const/high16 p0, 0x10000000

    .line 75
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_e
    if-eqz p2, :cond_13

    .line 79
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_13
    return-object v0
.end method

.method public static intentForNativeBrowserScheme(Landroid/net/Uri;)Landroid/content/Intent;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/exceptions/UrlParseException;
        }
    .end annotation

    .line 108
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 110
    sget-object v0, Lcom/mopub/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;

    invoke-virtual {v0, p0}, Lcom/mopub/common/UrlAction;->shouldTryHandlingUrl(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 112
    invoke-static {}, Lcom/mopub/common/MoPub;->getBrowserAgent()Lcom/mopub/common/MoPub$BrowserAgent;

    move-result-object p0

    sget-object v0, Lcom/mopub/common/MoPub$BrowserAgent;->NATIVE:Lcom/mopub/common/MoPub$BrowserAgent;

    if-ne p0, v0, :cond_16

    const-string p0, "mopubnativebrowser://, http://, or https://"

    goto :goto_18

    :cond_16
    const-string p0, "mopubnativebrowser://"

    .line 115
    :goto_18
    new-instance v0, Lcom/mopub/exceptions/UrlParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI does not have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " scheme."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/mopub/exceptions/UrlParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_34
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mopubnativebrowser"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "android.intent.action.VIEW"

    if-eqz v0, :cond_4c

    .line 119
    invoke-static {p0}, Lcom/mopub/common/util/Intents;->parseMoPubNativeBrowserUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0

    .line 123
    :cond_4c
    invoke-static {}, Lcom/mopub/common/MoPub;->getBrowserAgent()Lcom/mopub/common/MoPub$BrowserAgent;

    move-result-object v0

    sget-object v2, Lcom/mopub/common/MoPub$BrowserAgent;->NATIVE:Lcom/mopub/common/MoPub$BrowserAgent;

    if-ne v0, v2, :cond_5a

    .line 124
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0

    .line 128
    :cond_5a
    new-instance v0, Lcom/mopub/exceptions/UrlParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/mopub/exceptions/UrlParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static intentForShareTweet(Landroid/net/Uri;)Landroid/content/Intent;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/exceptions/UrlParseException;
        }
    .end annotation

    .line 182
    sget-object v0, Lcom/mopub/common/UrlAction;->HANDLE_SHARE_TWEET:Lcom/mopub/common/UrlAction;

    invoke-virtual {v0, p0}, Lcom/mopub/common/UrlAction;->shouldTryHandlingUrl(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_84

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_a
    const-string v2, "screen_name"

    .line 190
    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "tweet_id"

    .line 191
    invoke-virtual {p0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_16
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_a .. :try_end_16} :catch_62

    .line 200
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5a

    .line 203
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_52

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v2, v4, v0

    aput-object p0, v4, v1

    const-string p0, "https://twitter.com/%s/status/%s"

    .line 208
    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    aput-object p0, v3, v1

    const-string p0, "Check out @%s\'s Tweet: %s"

    .line 211
    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 214
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    .line 215
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    .line 216
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    .line 217
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    .line 204
    :cond_52
    new-instance p0, Lcom/mopub/exceptions/UrlParseException;

    const-string v0, "URL missing non-empty \'tweet_id\' query parameter."

    invoke-direct {p0, v0}, Lcom/mopub/exceptions/UrlParseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 201
    :cond_5a
    new-instance p0, Lcom/mopub/exceptions/UrlParseException;

    const-string v0, "URL missing non-empty \'screen_name\' query parameter."

    invoke-direct {p0, v0}, Lcom/mopub/exceptions/UrlParseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 195
    :catch_62
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not handle url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v0

    invoke-static {v2, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 196
    new-instance p0, Lcom/mopub/exceptions/UrlParseException;

    const-string v0, "Passed-in URL did not create a hierarchical URI."

    invoke-direct {p0, v0}, Lcom/mopub/exceptions/UrlParseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 183
    :cond_84
    new-instance p0, Lcom/mopub/exceptions/UrlParseException;

    const-string v0, "URL does not have mopubshare://tweet? format."

    invoke-direct {p0, v0}, Lcom/mopub/exceptions/UrlParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static launchActionViewIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/exceptions/IntentNotResolvableException;
        }
    .end annotation

    .line 330
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 331
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 333
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 334
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_16

    const/high16 p1, 0x10000000

    .line 335
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 337
    :cond_16
    invoke-static {p0, v0, p2}, Lcom/mopub/common/util/Intents;->launchIntentForUserClick(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static launchApplicationIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/exceptions/IntentNotResolvableException;
        }
    .end annotation

    .line 289
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 290
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 292
    invoke-static {p0, p1}, Lcom/mopub/common/util/Intents;->deviceCanHandleIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to open intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_26

    const/high16 v1, 0x10000000

    .line 295
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 297
    :cond_26
    invoke-static {p0, p1, v0}, Lcom/mopub/common/util/Intents;->launchIntentForUserClick(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_86

    :cond_2a
    const-string v0, "browser_fallback_url"

    .line 299
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 301
    sget-object v0, Lcom/mopub/common/util/Intents;->STORE_SCHEME_TO_URL_MAP:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 302
    invoke-static {p1}, Lcom/mopub/common/util/Intents;->getPlayStoreUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/mopub/common/util/Intents;->launchApplicationUrl(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_86

    .line 304
    :cond_4a
    new-instance p0, Lcom/mopub/exceptions/IntentNotResolvableException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device could not handle neither intent nor market url.\nIntent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mopub/exceptions/IntentNotResolvableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 308
    :cond_65
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 309
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    .line 310
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_82

    const-string v1, "https"

    .line 311
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    goto :goto_82

    .line 314
    :cond_7e
    invoke-static {p0, p1}, Lcom/mopub/common/util/Intents;->launchApplicationUrl(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_86

    :cond_82
    :goto_82
    const/4 v0, 0x0

    .line 312
    invoke-static {p0, p1, v0}, Lcom/mopub/common/util/Intents;->showMoPubBrowserForUrl(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    :goto_86
    return-void
.end method

.method public static launchApplicationUrl(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/exceptions/IntentNotResolvableException;
        }
    .end annotation

    .line 264
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 265
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 266
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 268
    invoke-static {p0, v0}, Lcom/mopub/common/util/Intents;->deviceCanHandleIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 269
    invoke-static {p0, v0}, Lcom/mopub/common/util/Intents;->launchApplicationIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_61

    .line 270
    :cond_17
    sget-object v2, Lcom/mopub/common/util/Intents;->STORE_SCHEME_TO_URL_MAP:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 271
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_62

    .line 272
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_62

    .line 275
    sget-object p1, Lcom/mopub/common/util/Intents;->STORE_SCHEME_TO_URL_MAP:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 276
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 277
    invoke-static {p0, v0}, Lcom/mopub/common/util/Intents;->launchApplicationIntent(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_61
    return-void

    .line 281
    :cond_62
    new-instance p0, Lcom/mopub/exceptions/IntentNotResolvableException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not handle application specific action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n\tYou may be running in the emulator or another device which does not have the required application."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mopub/exceptions/IntentNotResolvableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static launchIntentForUserClick(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/exceptions/IntentNotResolvableException;
        }
    .end annotation

    .line 252
    invoke-static {p0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    .line 253
    invoke-static {p1}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    .line 256
    :try_start_6
    invoke-static {p0, p1}, Lcom/mopub/common/util/Intents;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_9
    .catch Lcom/mopub/exceptions/IntentNotResolvableException; {:try_start_6 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 258
    new-instance p1, Lcom/mopub/exceptions/IntentNotResolvableException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mopub/exceptions/IntentNotResolvableException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/mopub/exceptions/IntentNotResolvableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static parseMoPubNativeBrowserUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/exceptions/UrlParseException;
        }
    .end annotation

    .line 133
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 135
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "navigate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    :try_start_f
    const-string v0, "url"

    .line 141
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_f .. :try_end_15} :catch_24

    if-eqz p0, :cond_1c

    .line 153
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 150
    :cond_1c
    new-instance p0, Lcom/mopub/exceptions/UrlParseException;

    const-string v0, "URL missing \'url\' query parameter."

    invoke-direct {p0, v0}, Lcom/mopub/exceptions/UrlParseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 145
    :catch_24
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not handle url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 146
    new-instance p0, Lcom/mopub/exceptions/UrlParseException;

    const-string v0, "Passed-in URL did not create a hierarchical URI."

    invoke-direct {p0, v0}, Lcom/mopub/exceptions/UrlParseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 136
    :cond_48
    new-instance p0, Lcom/mopub/exceptions/UrlParseException;

    const-string v0, "URL missing \'navigate\' host parameter."

    invoke-direct {p0, v0}, Lcom/mopub/exceptions/UrlParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static showMoPubBrowserForUrl(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/exceptions/IntentNotResolvableException;
        }
    .end annotation

    .line 231
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 232
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 234
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Final URI to show in browser: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 236
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 237
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "URL"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    const-string v1, "mopub-dsp-creative-id"

    .line 239
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_3b
    const-class p2, Lcom/mopub/common/MoPubBrowser;

    invoke-static {p0, p2, v0}, Lcom/mopub/common/util/Intents;->getStartActivityIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p2

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not show MoPubBrowser for url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n\tPerhaps you forgot to declare com.mopub.common.MoPubBrowser in your Android manifest file."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 246
    invoke-static {p0, p2, p1}, Lcom/mopub/common/util/Intents;->launchIntentForUserClick(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/exceptions/IntentNotResolvableException;
        }
    .end annotation

    .line 52
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 53
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 55
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_f

    const/high16 v0, 0x10000000

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 60
    :cond_f
    :try_start_f
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_12
    .catch Landroid/content/ActivityNotFoundException; {:try_start_f .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p0

    .line 62
    new-instance p1, Lcom/mopub/exceptions/IntentNotResolvableException;

    invoke-direct {p1, p0}, Lcom/mopub/exceptions/IntentNotResolvableException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
