.class public Lcom/mopub/common/UrlHandler;
.super Ljava/lang/Object;
.source "UrlHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/UrlHandler$Builder;,
        Lcom/mopub/common/UrlHandler$MoPubSchemeListener;,
        Lcom/mopub/common/UrlHandler$ResultActions;
    }
.end annotation


# static fields
.field private static final EMPTY_CLICK_LISTENER:Lcom/mopub/common/UrlHandler$ResultActions;

.field private static final EMPTY_MOPUB_SCHEME_LISTENER:Lcom/mopub/common/UrlHandler$MoPubSchemeListener;


# instance fields
.field private mAlreadySucceeded:Z

.field private mDspCreativeId:Ljava/lang/String;

.field private mMoPubSchemeListener:Lcom/mopub/common/UrlHandler$MoPubSchemeListener;

.field private mResultActions:Lcom/mopub/common/UrlHandler$ResultActions;

.field private mSkipShowMoPubBrowser:Z

.field private mSupportedUrlActions:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/mopub/common/UrlAction;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskPending:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 163
    new-instance v0, Lcom/mopub/common/UrlHandler$1;

    invoke-direct {v0}, Lcom/mopub/common/UrlHandler$1;-><init>()V

    sput-object v0, Lcom/mopub/common/UrlHandler;->EMPTY_CLICK_LISTENER:Lcom/mopub/common/UrlHandler$ResultActions;

    .line 170
    new-instance v0, Lcom/mopub/common/UrlHandler$2;

    invoke-direct {v0}, Lcom/mopub/common/UrlHandler$2;-><init>()V

    sput-object v0, Lcom/mopub/common/UrlHandler;->EMPTY_MOPUB_SCHEME_LISTENER:Lcom/mopub/common/UrlHandler$MoPubSchemeListener;

    return-void
.end method

.method private constructor <init>(Ljava/util/EnumSet;Lcom/mopub/common/UrlHandler$ResultActions;Lcom/mopub/common/UrlHandler$MoPubSchemeListener;ZLjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/mopub/common/UrlAction;",
            ">;",
            "Lcom/mopub/common/UrlHandler$ResultActions;",
            "Lcom/mopub/common/UrlHandler$MoPubSchemeListener;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/UrlHandler;->mSupportedUrlActions:Ljava/util/EnumSet;

    .line 202
    iput-object p2, p0, Lcom/mopub/common/UrlHandler;->mResultActions:Lcom/mopub/common/UrlHandler$ResultActions;

    .line 203
    iput-object p3, p0, Lcom/mopub/common/UrlHandler;->mMoPubSchemeListener:Lcom/mopub/common/UrlHandler$MoPubSchemeListener;

    .line 204
    iput-boolean p4, p0, Lcom/mopub/common/UrlHandler;->mSkipShowMoPubBrowser:Z

    .line 205
    iput-object p5, p0, Lcom/mopub/common/UrlHandler;->mDspCreativeId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 206
    iput-boolean p1, p0, Lcom/mopub/common/UrlHandler;->mAlreadySucceeded:Z

    .line 207
    iput-boolean p1, p0, Lcom/mopub/common/UrlHandler;->mTaskPending:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/EnumSet;Lcom/mopub/common/UrlHandler$ResultActions;Lcom/mopub/common/UrlHandler$MoPubSchemeListener;ZLjava/lang/String;Lcom/mopub/common/UrlHandler$1;)V
    .registers 7

    .line 31
    invoke-direct/range {p0 .. p5}, Lcom/mopub/common/UrlHandler;-><init>(Ljava/util/EnumSet;Lcom/mopub/common/UrlHandler$ResultActions;Lcom/mopub/common/UrlHandler$MoPubSchemeListener;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Lcom/mopub/common/UrlHandler$ResultActions;
    .registers 1

    .line 31
    sget-object v0, Lcom/mopub/common/UrlHandler;->EMPTY_CLICK_LISTENER:Lcom/mopub/common/UrlHandler$ResultActions;

    return-object v0
.end method

.method static synthetic access$100()Lcom/mopub/common/UrlHandler$MoPubSchemeListener;
    .registers 1

    .line 31
    sget-object v0, Lcom/mopub/common/UrlHandler;->EMPTY_MOPUB_SCHEME_LISTENER:Lcom/mopub/common/UrlHandler$MoPubSchemeListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mopub/common/UrlHandler;Z)Z
    .registers 2

    .line 31
    iput-boolean p1, p0, Lcom/mopub/common/UrlHandler;->mTaskPending:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mopub/common/UrlHandler;Ljava/lang/String;Lcom/mopub/common/UrlAction;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mopub/common/UrlHandler;->failUrlHandling(Ljava/lang/String;Lcom/mopub/common/UrlAction;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private failUrlHandling(Ljava/lang/String;Lcom/mopub/common/UrlAction;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 8

    .line 343
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    if-nez p2, :cond_7

    .line 346
    sget-object p2, Lcom/mopub/common/UrlAction;->NOOP:Lcom/mopub/common/UrlAction;

    .line 349
    :cond_7
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 p3, 0x1

    aput-object p4, v1, p3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 350
    iget-object p3, p0, Lcom/mopub/common/UrlHandler;->mResultActions:Lcom/mopub/common/UrlHandler$ResultActions;

    invoke-interface {p3, p1, p2}, Lcom/mopub/common/UrlHandler$ResultActions;->urlHandlingFailed(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V

    return-void
.end method


# virtual methods
.method getMoPubSchemeListener()Lcom/mopub/common/UrlHandler$MoPubSchemeListener;
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/mopub/common/UrlHandler;->mMoPubSchemeListener:Lcom/mopub/common/UrlHandler$MoPubSchemeListener;

    return-object v0
.end method

.method getResultActions()Lcom/mopub/common/UrlHandler$ResultActions;
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/mopub/common/UrlHandler;->mResultActions:Lcom/mopub/common/UrlHandler$ResultActions;

    return-object v0
.end method

.method getSupportedUrlActions()Ljava/util/EnumSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/mopub/common/UrlAction;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/mopub/common/UrlHandler;->mSupportedUrlActions:Ljava/util/EnumSet;

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public handleResolvedUrl(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Iterable;)Z
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v8, p2

    .line 308
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v0, :cond_11

    const-string v0, "Attempted to handle empty url."

    .line 309
    invoke-direct {p0, v8, v10, v0, v10}, Lcom/mopub/common/UrlHandler;->failUrlHandling(Ljava/lang/String;Lcom/mopub/common/UrlAction;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v9

    .line 313
    :cond_11
    sget-object v0, Lcom/mopub/common/UrlAction;->NOOP:Lcom/mopub/common/UrlAction;

    .line 314
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 316
    iget-object v1, v7, Lcom/mopub/common/UrlHandler;->mSupportedUrlActions:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/mopub/common/UrlAction;

    .line 317
    invoke-virtual {v13, v11}, Lcom/mopub/common/UrlAction;->shouldTryHandlingUrl(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_82

    const/4 v14, 0x1

    .line 319
    :try_start_31
    iget-object v6, v7, Lcom/mopub/common/UrlHandler;->mDspCreativeId:Ljava/lang/String;

    move-object v1, v13

    move-object v2, p0

    move-object/from16 v3, p1

    move-object v4, v11

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/mopub/common/UrlAction;->handleUrl(Lcom/mopub/common/UrlHandler;Landroid/content/Context;Landroid/net/Uri;ZLjava/lang/String;)V

    .line 321
    iget-boolean v0, v7, Lcom/mopub/common/UrlHandler;->mAlreadySucceeded:Z

    if-nez v0, :cond_6a

    iget-boolean v0, v7, Lcom/mopub/common/UrlHandler;->mTaskPending:Z

    if-nez v0, :cond_6a

    sget-object v0, Lcom/mopub/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

    .line 322
    invoke-virtual {v0, v13}, Lcom/mopub/common/UrlAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    sget-object v0, Lcom/mopub/common/UrlAction;->HANDLE_MOPUB_SCHEME:Lcom/mopub/common/UrlAction;

    .line 323
    invoke-virtual {v0, v13}, Lcom/mopub/common/UrlAction;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_53
    .catch Lcom/mopub/exceptions/IntentNotResolvableException; {:try_start_31 .. :try_end_53} :catch_6b

    if-nez v0, :cond_6a

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 324
    :try_start_59
    invoke-static {v2, v1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    .line 325
    iget-object v0, v7, Lcom/mopub/common/UrlHandler;->mResultActions:Lcom/mopub/common/UrlHandler$ResultActions;

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v13}, Lcom/mopub/common/UrlHandler$ResultActions;->urlHandlingSucceeded(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V

    .line 327
    iput-boolean v14, v7, Lcom/mopub/common/UrlHandler;->mAlreadySucceeded:Z
    :try_end_67
    .catch Lcom/mopub/exceptions/IntentNotResolvableException; {:try_start_59 .. :try_end_67} :catch_68

    goto :goto_6a

    :catch_68
    move-exception v0

    goto :goto_70

    :cond_6a
    :goto_6a
    return v14

    :catch_6b
    move-exception v0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 331
    :goto_70
    sget-object v3, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/mopub/exceptions/IntentNotResolvableException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    aput-object v0, v4, v14

    invoke-static {v3, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    move-object v0, v13

    goto :goto_1d

    :cond_82
    move-object/from16 v1, p1

    move-object/from16 v2, p4

    goto :goto_1d

    .line 337
    :cond_87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Link ignored. Unable to handle url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v8, v0, v1, v10}, Lcom/mopub/common/UrlHandler;->failUrlHandling(Ljava/lang/String;Lcom/mopub/common/UrlAction;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v9
.end method

.method public handleUrl(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 237
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 239
    invoke-virtual {p0, p1, p2, v0}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public handleUrl(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5

    .line 252
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 254
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Iterable;)V

    return-void
.end method

.method public handleUrl(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Iterable;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 267
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 269
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p1, 0x0

    const-string p3, "Attempted to handle empty url."

    .line 270
    invoke-direct {p0, p2, p1, p3, p1}, Lcom/mopub/common/UrlHandler;->failUrlHandling(Ljava/lang/String;Lcom/mopub/common/UrlAction;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 274
    :cond_10
    new-instance v6, Lcom/mopub/common/UrlHandler$3;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/mopub/common/UrlHandler$3;-><init>(Lcom/mopub/common/UrlHandler;Landroid/content/Context;ZLjava/lang/Iterable;Ljava/lang/String;)V

    .line 291
    invoke-static {p2, v6}, Lcom/mopub/common/UrlResolutionTask;->getResolvedUrl(Ljava/lang/String;Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;)V

    const/4 p1, 0x1

    .line 292
    iput-boolean p1, p0, Lcom/mopub/common/UrlHandler;->mTaskPending:Z

    return-void
.end method

.method shouldSkipShowMoPubBrowser()Z
    .registers 2

    .line 226
    iget-boolean v0, p0, Lcom/mopub/common/UrlHandler;->mSkipShowMoPubBrowser:Z

    return v0
.end method
